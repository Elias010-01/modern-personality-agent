; AUTO-GENERATED from original GDI segment 19
; segment_size=2722 bytes, flags=0xf130
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
; sub_0000 -- offset 0x0000 -- 69 instr
; Dispatcher: tabla de decisiones cmp+jcc (69 instr).
; tags: dispatcher
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, 2                           ; 2D 02 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_002D                          ; EB 04
L_0029:
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
L_002D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx], di            ; 26 39 3F
        jl      L_0029                          ; 7C F4
        jmp     L_003B                          ; EB 04
L_0037:
        sub     word ptr [bp - 0xa], 2          ; 83 6E F6 02
L_003B:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     word ptr es:[bx], di            ; 26 39 3F
        jg      L_0037                          ; 7F F4
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_006C                          ; 77 20
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     word ptr es:[bx], si            ; 26 89 37
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        sub     word ptr [bp - 0xa], 2          ; 83 6E F6 02
L_006C:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jbe     L_002D                          ; 76 B6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, 2                           ; 2D 02 00
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jbe     L_0092                          ; 76 0D
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    dx                              ; 52
        push    word ptr [bp + 4]               ; FF 76 04
        call    0                               ; E8 6E FF
L_0092:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_00AB                          ; 73 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        add     ax, 2                           ; 05 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    0                               ; E8 55 FF
L_00AB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00B3 -- offset 0x00B3 -- 86 instr
; Dispatcher: tabla de decisiones cmp+jcc (86 instr).
; tags: dispatcher
; callers: sub_01A5
;----------------------------------------------------------------------
L_00B3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, 6                           ; 2D 06 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        jmp     L_00DF                          ; EB 04
L_00DB:
        add     word ptr [bp - 6], 6            ; 83 46 FA 06
L_00DF:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx], si            ; 26 39 37
        jl      L_00DB                          ; 7C F4
        jmp     L_00ED                          ; EB 04
L_00E9:
        sub     word ptr [bp - 0xa], 6          ; 83 6E F6 06
L_00ED:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     word ptr es:[bx], si            ; 26 39 37
        jg      L_00E9                          ; 7F F4
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_015C                          ; 77 5E
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        add     word ptr [bp - 6], 6            ; 83 46 FA 06
        sub     word ptr [bp - 0xa], 6          ; 83 6E F6 06
L_015C:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        ja      L_016A                          ; 77 03
        jmp     L_00DF                          ; E9 75 FF
L_016A:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        sub     ax, 6                           ; 2D 06 00
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jbe     L_0185                          ; 76 0D
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    dx                              ; 52
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_00B3                          ; E8 2E FF
L_0185:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jae     L_019E                          ; 73 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        add     ax, 6                           ; 05 06 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_00B3                          ; E8 15 FF
L_019E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01A5 -- offset 0x01A5 -- 640 instr
; Dispatcher: tabla de decisiones cmp+jcc (640 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_00B3, sub_0942
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_01A5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     ax, 2                           ; 3D 02 00
        jge     L_01BF                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0220                          ; EB 61
L_01BF:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     si, bx                          ; 8B F3
        add     si, 0xe                         ; 83 C6 0E
        mov     word ptr [bp - 2], 2            ; C7 46 FE 02 00
        mov     di, 1                           ; BF 01 00
        jmp     L_0218                          ; EB 3C
L_01DC:
        mov     bx, si                          ; 8B DE
        add     si, 4                           ; 83 C6 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_01F6                          ; 7E 07
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0203                          ; EB 0D
L_01F6:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jge     L_0217                          ; 7D 19
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_0203:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        je      L_0211                          ; 74 06
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0211:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0217:
        inc     di                              ; 47
L_0218:
        cmp     word ptr [bp - 0x10], di        ; 39 7E F0
        jg      L_01DC                          ; 7F BF
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
L_0220:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0xa8                        ; 81 EC A8 00
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     word ptr [bp - 0x4e], 0x7fff    ; C7 46 B2 FF 7F
        mov     word ptr [bp - 0x64], 0x7fff    ; C7 46 9C FF 7F
        mov     word ptr [bp - 0x74], 0x8001    ; C7 46 8C 01 80
        mov     word ptr [bp - 0x7e], 0x8001    ; C7 46 82 01 80
        sub     di, di                          ; 2B FF
        jmp     L_02B6                          ; EB 55
L_0261:
        mov     bx, word ptr [bp - 0x8e]        ; 8B 9E 72 FF
        add     word ptr [bp - 0x8e], 2         ; 83 86 72 FF 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp - 0x8e]        ; 8B 9E 72 FF
        add     word ptr [bp - 0x8e], 2         ; 83 86 72 FF 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_028B                          ; 7D 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
L_028B:
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_0299                          ; 7E 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x74], ax        ; 89 46 8C
L_0299:
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_02A7                          ; 7D 06
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x64], ax        ; 89 46 9C
L_02A7:
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jle     L_02B5                          ; 7E 06
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
L_02B5:
        inc     di                              ; 47
L_02B6:
        cmp     word ptr [bp - 0x48], di        ; 39 7E B8
        jg      L_0261                          ; 7F A6
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     bx, ax                          ; 8B D8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x8e]        ; 8B 9E 72 FF
        add     word ptr [bp - 0x8e], 2         ; 83 86 72 FF 02
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        add     word ptr [bp - 0x18], 2         ; 83 46 E8 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x8e]        ; 8B 9E 72 FF
        add     word ptr [bp - 0x8e], 2         ; 83 86 72 FF 02
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 0x48]            ; FF 46 B8
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bp - 0x48]        ; 8B 46 B8
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [bp - 0x64]        ; 8B 46 9C
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp - 0x74]        ; 8B 46 8C
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     word ptr [bp - 0x7c], 0         ; C7 46 84 00 00
        mov     word ptr [bp - 0x5c], 0         ; C7 46 A4 00 00
        mov     word ptr [bp - 0x9e], 0         ; C7 86 62 FF 00 00
        mov     word ptr [bp - 0x7a], 0         ; C7 46 86 00 00
        mov     word ptr [bp - 0x8c], 0         ; C7 86 74 FF 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x5e], ax        ; 89 46 A2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_036D                          ; 74 24
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x42], dx        ; 89 56 BE
        mov     word ptr [bp - 0x7a], 1         ; C7 46 86 01 00
        or      byte ptr [bp - 0x8b], 1         ; 80 8E 75 FF 01
        mov     word ptr [bp - 0x82], 0         ; C7 86 7E FF 00 00
        mov     word ptr [bp - 0x24], 1         ; C7 46 DC 01 00
        jmp     L_03FB                          ; E9 8E 00
L_036D:
        test    byte ptr [si + 8], 0x20         ; F6 44 08 20
        je      L_037B                          ; 74 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _SEG1_1A12                  ; 9A FF FF 00 00 [FIXUP]
L_037B:
        mov     bx, word ptr [si + 0x12]        ; 8B 5C 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x62], ax        ; 89 46 9E
        cmp     ax, 5                           ; 3D 05 00
        jne     L_039D                          ; 75 0D
        mov     word ptr [bp - 0x4a], 0         ; C7 46 B6 00 00
        mov     word ptr [bp - 0x82], 0         ; C7 86 7E FF 00 00
        jmp     L_03B6                          ; EB 19
L_039D:
        cmp     word ptr [si + 0x80], 1         ; 83 BC 80 00 01
        jle     L_03AA                          ; 7E 06
        mov     ax, word ptr [si + 0x80]        ; 8B 84 80 00
        jmp     L_03AD                          ; EB 03
L_03AA:
        mov     ax, 1                           ; B8 01 00
L_03AD:
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     word ptr [bp - 0x82], 1         ; C7 86 7E FF 01 00
L_03B6:
        mov     bx, word ptr [si + 0x14]        ; 8B 5C 14
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 1                           ; 3D 01 00
        jne     L_03D2                          ; 75 07
        mov     word ptr [bp - 0x24], 0         ; C7 46 DC 00 00
        jmp     L_03FB                          ; EB 29
L_03D2:
        mov     word ptr [bp - 0x24], 1         ; C7 46 DC 01 00
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jne     L_03FB                          ; 75 1B
        cmp     word ptr [bp + 0xa], 3          ; 83 7E 0A 03
        je      L_03FB                          ; 74 15
        cmp     word ptr [bp - 4], 2            ; 83 7E FC 02
        jne     L_03FB                          ; 75 0F
        mov     word ptr [bp - 0x9e], 1         ; C7 86 62 FF 01 00
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
L_03FB:
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        jne     L_041A                          ; 75 19
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 8]               ; FF 77 08
        call    far _entry_408                  ; 9A FF FF 00 00 [FIXUP]
        or      word ptr [bp - 0x8c], ax        ; 09 86 74 FF
L_041A:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        je      L_042B                          ; 74 03
        jmp     L_04B4                          ; E9 89 00
L_042B:
        cmp     word ptr [bp + 0xa], 3          ; 83 7E 0A 03
        jne     L_0434                          ; 75 03
        jmp     L_04B4                          ; E9 80 00
L_0434:
        test    byte ptr [bp - 0x8c], 2         ; F6 86 74 FF 02
        je      L_04B4                          ; 74 79
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0446                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0449                          ; EB 03
L_0446:
        mov     ax, 4                           ; B8 04 00
L_0449:
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        cmp     word ptr [bp - 0x24], 0         ; 83 7E DC 00
        je      L_0456                          ; 74 04
        or      byte ptr [bp - 0x26], 0x80      ; 80 4E DA 80
L_0456:
        cmp     word ptr [bp - 0x82], 0         ; 83 BE 7E FF 00
        je      L_0477                          ; 74 1A
        cmp     word ptr [bp - 0x4a], 1         ; 83 7E B6 01
        jle     L_0467                          ; 7E 04
        or      byte ptr [bp - 0x26], 0x10      ; 80 4E DA 10
L_0467:
        cmp     word ptr [bp - 0x62], 5         ; 83 7E 9E 05
        je      L_0477                          ; 74 0A
        cmp     word ptr [bp - 0x62], 0         ; 83 7E 9E 00
        je      L_0477                          ; 74 04
        or      byte ptr [bp - 0x26], 0x20      ; 80 4E DA 20
L_0477:
        mov     bx, word ptr [bp - 0x5e]        ; 8B 5E A2
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        and     ax, word ptr [bp - 0x26]        ; 23 46 DA
        cmp     ax, word ptr [bp - 0x26]        ; 3B 46 DA
        jne     L_04B4                          ; 75 2F
        call    far _SEG1_1662                  ; 9A 03 06 00 00 [FIXUP]
        push    si                              ; 56
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0496                          ; 75 05
        mov     ax, 0x16                        ; B8 16 00
        jmp     L_0499                          ; EB 03
L_0496:
        mov     ax, 0x14                        ; B8 14 00
L_0499:
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, 0xa                         ; 05 0A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_407                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x5c], 1         ; C7 46 A4 01 00
L_04B4:
        cmp     word ptr [bp - 0x5c], 0         ; 83 7E A4 00
        je      L_04BD                          ; 74 03
        jmp     L_0911                          ; E9 54 04
L_04BD:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_01A5                          ; E8 E2 FC
        sub     dx, dx                          ; 2B D2
        add     ax, 1                           ; 05 01 00
        adc     dx, dx                          ; 13 D2
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _SEG1_3E18                  ; 9A F7 04 00 00 [FIXUP]
        mov     cx, 0x18                        ; B9 18 00
        sub     bx, bx                          ; 2B DB
        push    bx                              ; 53
        push    cx                              ; 51
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     word ptr [bp - 0xa4], ax        ; 89 86 5C FF
        mov     word ptr [bp - 0xa2], dx        ; 89 96 5E FF
        call    far _SEG1_3E18                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [bp - 0xa8], cx        ; 89 8E 58 FF
        mov     word ptr [bp - 0xa6], bx        ; 89 9E 5A FF
        mov     cl, 3                           ; B1 03
        call    far _SEG1_3F3E                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xa8]        ; 03 86 58 FF
        adc     dx, word ptr [bp - 0xa6]        ; 13 96 5A FF
        add     ax, word ptr [bp - 0xa4]        ; 03 86 5C FF
        adc     dx, word ptr [bp - 0xa2]        ; 13 96 5E FF
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], dx        ; 89 56 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        or      ax, ax                          ; 0B C0
        jne     L_053B                          ; 75 03
        jmp     L_092C                          ; E9 F1 03
L_053B:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        or      ax, dx                          ; 0B C2
        jne     L_054E                          ; 75 03
        jmp     L_0924                          ; E9 D6 03
L_054E:
        mov     ax, 0x18                        ; B8 18 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     word ptr [bp - 0x34], dx        ; 89 56 CC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     word ptr [bp - 0x96], ax        ; 89 86 6A FF
        mov     word ptr [bp - 0x94], dx        ; 89 96 6C FF
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        add     ax, word ptr [bp - 0x96]        ; 03 86 6A FF
        mov     dx, word ptr [bp - 0x94]        ; 8B 96 6C FF
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x30], dx        ; 89 56 D0
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_417                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xa], 3          ; 83 7E 0A 03
        jne     L_05AC                          ; 75 0C
        mov     word ptr [bp - 0x98], 4         ; C7 86 68 FF 04 00
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        jmp     L_05B5                          ; EB 09
L_05AC:
        mov     word ptr [bp - 0x98], 8         ; C7 86 68 FF 08 00
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
L_05B5:
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        je      L_05C3                          ; 74 05
        mov     word ptr [bp - 0x3e], 1         ; C7 46 C2 01 00
L_05C3:
        cmp     word ptr [bp - 0x9e], 0         ; 83 BE 62 FF 00
        je      L_0602                          ; 74 38
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_415                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        jne     L_05E1                          ; 75 08
L_05D9:
        mov     word ptr [bp - 0x7c], 0         ; C7 46 84 00 00
        jmp     L_0916                          ; E9 35 03
L_05E1:
        push    word ptr [bp - 0x5e]            ; FF 76 A2
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        call    far _entry_401                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        jne     L_05FD                          ; 75 0A
        push    word ptr [bp - 0x44]            ; FF 76 BC
        call    far _SEG1_1212                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05D9                          ; EB DC
L_05FD:
        or      byte ptr [bp - 0x8c], 0x40      ; 80 8E 74 FF 40
L_0602:
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x80], 0         ; C7 46 80 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        jmp     L_089F                          ; E9 7B 02
L_0624:
        mov     word ptr [bp - 0x46], 0         ; C7 46 BA 00 00
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     dx, word ptr [bp - 0x34]        ; 8B 56 CC
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        mov     ax, word ptr [bp - 0x96]        ; 8B 86 6A FF
        mov     dx, word ptr [bp - 0x94]        ; 8B 96 6C FF
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x1e], dx        ; 89 56 E2
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     word ptr [bp - 0x66], dx        ; 89 56 9A
        mov     word ptr [bp - 0x9a], 0         ; C7 86 66 FF 00 00
        jmp     L_07E0                          ; E9 88 01
L_0658:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        cmp     word ptr es:[bx + 0x10], ax     ; 26 39 47 10
        jle     L_0668                          ; 7E 03
        jmp     L_07D8                          ; E9 70 01
L_0668:
        cmp     word ptr es:[bx + 0x12], ax     ; 26 39 47 12
        jg      L_0671                          ; 7F 03
        jmp     L_07D8                          ; E9 67 01
L_0671:
        jmp     L_073E                          ; E9 CA 00
L_0674:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_0684                          ; 7C 06
        inc     word ptr es:[bx + 0xe]          ; 26 FF 47 0E
        jmp     L_068B                          ; EB 07
L_0684:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        dec     word ptr es:[bx + 0xe]          ; 26 FF 4F 0E
L_068B:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        add     ax, 0xa                         ; 05 0A 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     ax, word ptr [bx]               ; 8B 07
        sub     ax, word ptr [bp - 0xa2]        ; 2B 86 5E FF
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     bx, word ptr [bp - 0x68]        ; 8B 5E 98
        cmp     word ptr es:[bx + 0xc], 0       ; 26 83 7F 0C 00
        jl      L_06E7                          ; 7C 16
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp - 0x68]        ; 8B 5E 98
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     ax, word ptr [bp - 0xa2]        ; 8B 86 5E FF
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_0711                          ; EB 2A
L_06E7:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     word ptr es:[bx + 0x14], ax     ; 26 89 47 14
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp - 0x68]        ; 8B 5E 98
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x6a], ax        ; 89 46 96
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
L_0711:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        or      ax, ax                          ; 0B C0
        je      L_073E                          ; 74 18
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x8a]        ; 8B 8E 76 FF
        idiv    cx                              ; F7 F9
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 0x6a]        ; 8B 46 96
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
L_073E:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        cmp     word ptr es:[bx + 0x14], ax     ; 26 39 47 14
        jg      L_074E                          ; 7F 03
        jmp     L_0674                          ; E9 26 FF
L_074E:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0760                          ; 75 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x58]             ; C4 5E A8
        add     word ptr [bp - 0x58], 2         ; 83 46 A8 02
        jmp     L_078F                          ; EB 2F
L_0760:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x20]             ; C4 5E E0
        add     word ptr [bp - 0x20], 2         ; 83 46 E0 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp - 0x20]             ; C4 5E E0
        add     word ptr [bp - 0x20], 2         ; 83 46 E0 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        les     bx, ptr [bp - 0x20]             ; C4 5E E0
        add     word ptr [bp - 0x20], 2         ; 83 46 E0 02
L_078F:
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     word ptr [bp - 0x46]            ; FF 46 BA
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     word ptr es:[bx], ax            ; 26 01 07
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        add     word ptr es:[bx + 6], ax        ; 26 01 47 06
        or      ax, ax                          ; 0B C0
        jl      L_07BE                          ; 7C 13
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jl      L_07D8                          ; 7C 23
        sub     word ptr es:[bx + 6], ax        ; 26 29 47 06
        inc     word ptr es:[bx]                ; 26 FF 07
        jmp     L_07D8                          ; EB 1A
L_07BE:
        les     bx, ptr [bp - 0x68]             ; C4 5E 98
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        neg     ax                              ; F7 D8
        cmp     ax, word ptr es:[bx + 6]        ; 26 3B 47 06
        jl      L_07D8                          ; 7C 0B
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        add     word ptr es:[bx + 6], ax        ; 26 01 47 06
        dec     word ptr es:[bx]                ; 26 FF 0F
L_07D8:
        add     word ptr [bp - 0x68], 0x18      ; 83 46 98 18
        inc     word ptr [bp - 0x9a]            ; FF 86 66 FF
L_07E0:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cmp     word ptr [bp - 0x9a], ax        ; 39 86 66 FF
        jge     L_07EC                          ; 7D 03
        jmp     L_0658                          ; E9 6C FE
L_07EC:
        cmp     word ptr [bp - 0x46], 1         ; 83 7E BA 01
        jg      L_07F5                          ; 7F 03
        jmp     L_089B                          ; E9 A6 00
L_07F5:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0813                          ; 75 18
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     dx, word ptr [bp - 0x34]        ; 8B 56 CC
        push    dx                              ; 52
        push    ax                              ; 50
        call    0                               ; E8 EF F7
        jmp     L_086D                          ; EB 5A
L_0813:
        push    word ptr [bp - 0x94]            ; FF B6 6C FF
        push    word ptr [bp - 0x96]            ; FF B6 6A FF
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp - 0x46]            ; F7 6E BA
        add     ax, word ptr [bp - 0x96]        ; 03 86 6A FF
        mov     dx, word ptr [bp - 0x94]        ; 8B 96 6C FF
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_00B3                          ; E8 85 F8
        push    word ptr [bp - 0x94]            ; FF B6 6C FF
        push    word ptr [bp - 0x96]            ; FF B6 6A FF
        push    word ptr [bp - 0x46]            ; FF 76 BA
        call    L_0942                          ; E8 06 01
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     ax, word ptr [bp - 0x36]        ; 8B 46 CA
        mov     dx, word ptr [bp - 0x34]        ; 8B 56 CC
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        sub     di, di                          ; 2B FF
        jmp     L_0868                          ; EB 19
L_084F:
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        les     bx, ptr [bp - 0x96]             ; C4 9E 6A FF
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp - 0x58]             ; C4 5E A8
        add     word ptr [bp - 0x58], 2         ; 83 46 A8 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        inc     di                              ; 47
L_0868:
        cmp     word ptr [bp - 0x46], di        ; 39 7E BA
        jg      L_084F                          ; 7F E2
L_086D:
        cmp     word ptr [bp - 0x3e], 0         ; 83 7E C2 00
        je      L_089B                          ; 74 28
        push    si                              ; 56
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        or      ax, word ptr [bp - 0x98]        ; 0B 86 68 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x34]            ; FF 76 CC
        push    word ptr [bp - 0x36]            ; FF 76 CA
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x9c]            ; FF B6 64 FF
        push    word ptr [bp - 0x30]            ; FF 76 D0
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x42]            ; FF 76 BE
        push    word ptr [bp - 0x44]            ; FF 76 BC
        call    far _entry_409                  ; 9A FF FF 00 00 [FIXUP]
L_089B:
        inc     word ptr [bp - 0x9c]            ; FF 86 64 FF
L_089F:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jge     L_08AB                          ; 7D 03
        jmp     L_0624                          ; E9 79 FD
L_08AB:
        cmp     word ptr [bp - 0x9e], 0         ; 83 BE 62 FF 00
        je      L_08E0                          ; 74 2E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x44]            ; FF 76 BC
        call    far _SEG1_12B6                  ; 9A D4 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    si                              ; 56
        push    word ptr [bp - 0x42]            ; FF 76 BE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_402                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_12B6                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x44]            ; FF 76 BC
        call    far _SEG1_1212                  ; 9A F7 05 00 00 [FIXUP]
L_08E0:
        call    far _SEG1_1694                  ; 9A AB 04 00 00 [FIXUP]
        cmp     word ptr [bp - 0x82], 0         ; 83 BE 7E FF 00
        je      L_0911                          ; 74 25
        cmp     word ptr [bp + 0xa], 3          ; 83 7E 0A 03
        je      L_0911                          ; 74 1F
        cmp     word ptr [bp - 0x7a], 0         ; 83 7E 86 00
        jne     L_0911                          ; 75 19
        cmp     word ptr [bp - 0x48], 1         ; 83 7E B8 01
        jle     L_0911                          ; 7E 13
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, 0xa                         ; 05 0A 00
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x48]            ; FF 76 B8
        call    far _entry_390                  ; 9A FF FF 00 00 [FIXUP]
L_0911:
        mov     word ptr [bp - 0x7c], 1         ; C7 46 84 01 00
L_0916:
        cmp     word ptr [bp - 0x5c], 0         ; 83 7E A4 00
        jne     L_092C                          ; 75 10
        push    word ptr [bp - 0x6e]            ; FF 76 92
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_0924:
        push    word ptr [bp - 0x6e]            ; FF 76 92
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_092C:
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        dec     byte ptr [bx + 3]               ; FE 4F 03
        mov     ax, word ptr [bp - 0x7c]        ; 8B 46 84
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
; sub_0942 -- offset 0x0942 -- 139 instr
; Funcion compleja: 139 instrucciones, 0 llamadas, 4 branches.
; tags: complex
; callers: sub_01A5
;----------------------------------------------------------------------
L_0942:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     di, ax                          ; 8B F8
        sub     si, si                          ; 2B F6
        jmp     L_0A32                          ; E9 DC 00
L_0956:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_09B7                          ; 75 5B
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx], cx            ; 26 89 0F
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     cx, ax                          ; 8B C8
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        mov     bx, 6                           ; BB 06 00
        imul    bx                              ; F7 EB
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     word ptr es:[bx + 4], cx        ; 26 89 4F 04
L_09B7:
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     bx, ax                          ; 03 D8
        test    byte ptr es:[bx + 2], 1         ; 26 F6 47 02 01
        je      L_09CD                          ; 74 05
        inc     word ptr [bp - 2]               ; FF 46 FE
        jmp     L_09D0                          ; EB 03
L_09CD:
        dec     word ptr [bp - 2]               ; FF 4E FE
L_09D0:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0A31                          ; 75 5B
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx], cx            ; 26 89 0F
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        mov     ax, 6                           ; B8 06 00
        imul    si                              ; F7 EE
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        add     bx, ax                          ; 03 D8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     cx, ax                          ; 8B C8
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        mov     bx, 6                           ; BB 06 00
        imul    bx                              ; F7 EB
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     word ptr es:[bx + 4], cx        ; 26 89 4F 04
L_0A31:
        inc     si                              ; 46
L_0A32:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     ax                              ; 48
        cmp     ax, si                          ; 3B C6
        jle     L_0A3D                          ; 7E 03
        jmp     L_0956                          ; E9 19 FF
L_0A3D:
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx - 6]        ; 26 8B 47 FA
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx], cx            ; 26 89 0F
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx - 4]        ; 26 8B 47 FC
        mov     cx, ax                          ; 8B C8
        mov     ax, 6                           ; B8 06 00
        imul    di                              ; F7 EF
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     bx, ax                          ; 03 D8
        mov     word ptr es:[bx + 2], cx        ; 26 89 4F 02
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     ax, word ptr es:[bx - 2]        ; 26 8B 47 FE
        mov     cx, ax                          ; 8B C8
        mov     ax, di                          ; 8B C7
        inc     di                              ; 47
        mov     bx, 6                           ; BB 06 00
        imul    bx                              ; F7 EB
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     es, word ptr [bp + 8]           ; 8E 46 08
        mov     word ptr es:[bx + 4], cx        ; 26 89 4F 04
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

GDI_TEXT ENDS

        END
