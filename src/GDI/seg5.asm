; AUTO-GENERATED from original GDI segment 5
; segment_size=5208 bytes, flags=0xf170
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
        sub     sp, 0x1c                        ; 83 EC 1C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        sub     word ptr [bp - 0x14], 0x42      ; 83 6E EC 42
        sbb     word ptr [bp - 0x12], 0         ; 83 5E EE 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0070                          ; 75 3F
        cmp     byte ptr [0x144], 0             ; 80 3E 44 01 00
        je      L_0053                          ; 74 1B
        mov     ax, 0x2000                      ; B8 00 20
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALALLOC          ; 9A BC 00 00 00 [FIXUP]
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        or      ax, ax                          ; 0B C0
        jne     L_006B                          ; 75 1D
L_004E:
        sub     ax, ax                          ; 2B C0
        jmp     L_021A                          ; E9 C7 01
L_0053:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.ALLOCRESOURCE        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
L_0067:
        or      ax, ax                          ; 0B C0
        je      L_004E                          ; 74 E3
L_006B:
        mov     word ptr [bp - 0x1c], 0xffff    ; C7 46 E4 FF FF
L_0070:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALLOCK           ; 9A D6 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_0095                          ; 75 13
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 84 01 00 00 [FIXUP]
        jmp     L_0067                          ; EB D2
L_0095:
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        je      L_009E                          ; 74 03
        jmp     L_018A                          ; E9 EC 00
L_009E:
        cmp     byte ptr [0x144], 0             ; 80 3E 44 01 00
        jne     L_00A8                          ; 75 03
        jmp     L_013E                          ; E9 96 00
L_00A8:
        test    byte ptr [bp + 0xa], 1          ; F6 46 0A 01
        je      L_00B1                          ; 74 03
        jmp     L_013E                          ; E9 8D 00
L_00B1:
        mov     ax, 0x2000                      ; B8 00 20
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        or      ax, ax                          ; 0B C0
        jne     L_00D2                          ; 75 0B
L_00C7:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 1D 01 00 00 [FIXUP]
        jmp     L_004E                          ; E9 7C FF
L_00D2:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far KERNEL.GLOBALLOCK           ; 9A 37 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x42                        ; 05 42 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_010F                          ; EB 12
L_00FD:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        mov     byte ptr es:[bx], al            ; 26 88 07
L_010F:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        jne     L_00FD                          ; 75 E4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 01 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        jmp     L_01C9                          ; E9 8B 00
L_013E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        add     ax, 0x42                        ; 05 42 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_016D                          ; EB 12
L_015B:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        mov     byte ptr es:[bx], al            ; 26 88 07
L_016D:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        jne     L_015B                          ; 75 E4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01C9                          ; EB 3F
L_018A:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.ACCESSRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        inc     ax                              ; 40
        jne     L_019E                          ; 75 03
        jmp     L_00C7                          ; E9 29 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_019E -- offset 0x019E -- 42 instr
; Funcion mediana (42 instr, 1 calls).
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_019E:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 0x42                        ; B8 42 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
L_01C9:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        sub     word ptr es:[bx + 0x27], 0x42   ; 26 83 6F 27 42
        sbb     word ptr es:[bx + 0x29], 0      ; 26 83 5F 29 00
        test    byte ptr es:[bx], 4             ; 26 F6 07 04
        jne     L_01E6                          ; 75 0A
        sub     word ptr es:[bx + 0x2f], 0x42   ; 26 83 6F 2F 42
        sbb     word ptr es:[bx + 0x31], 0      ; 26 83 5F 31 00
L_01E6:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        je      L_01FD                          ; 74 0A
        sub     word ptr es:[bx + 0x23], 0x42   ; 26 83 6F 23 42
        sbb     word ptr es:[bx + 0x25], 0      ; 26 83 5F 25 00
L_01FD:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.GLOBALUNLOCK         ; 9A 84 02 00 00 [FIXUP]
        cmp     byte ptr [0x144], 0             ; 80 3E 44 01 00
        je      L_0217                          ; 74 0B
        mov     byte ptr [0x144], 0             ; C6 06 44 01 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x3a0], ax            ; A3 A0 03
L_0217:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
L_021A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0225 -- offset 0x0225 -- 65 instr
; Funcion mediana (65 instr, 4 calls).
; tags: calls_kernel, far, medium
; callers: sub_02CE
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE
;----------------------------------------------------------------------
L_0225:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     al, 0x2d                        ; B0 2D
        mul     byte ptr [bp + 0xa]             ; F6 66 0A
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_028D                          ; 75 31
        mov     al, byte ptr [bp + 0xa]         ; 8A 46 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_384                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_027A                          ; 74 09
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        jmp     L_027C                          ; EB 02
L_027A:
        sub     ax, ax                          ; 2B C0
L_027C:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_027F:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_02C3                          ; EB 36
L_028D:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        jmp     L_027F                          ; EB BC
L_02C3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_02CE -- offset 0x02CE -- 903 instr
; Dispatcher: tabla de decisiones cmp+jcc (903 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0225, sub_0D1A, sub_0D49
; calls (inter): KERNEL.FATALEXIT, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE, KERNEL.LOCALLOCK (+3 mas)
;----------------------------------------------------------------------
L_02CE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x42                        ; 83 EC 42
        push    di                              ; 57
        push    si                              ; 56
        mov     byte ptr [bp - 0x14], 0xfe      ; C6 46 EC FE
        cmp     word ptr [0x12e], 0             ; 83 3E 2E 01 00
        ja      L_02F3                          ; 77 12
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        jne     L_02EC                          ; 75 03
        jmp     L_090B                          ; E9 1F 06
L_02EC:
        mov     byte ptr [bp - 0x14], 0xff      ; C6 46 EC FF
        jmp     L_090B                          ; E9 18 06
L_02F3:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x10]     ; 26 8A 47 10
        mov     byte ptr [bp - 0x36], al        ; 88 46 CA
        mov     bx, word ptr [bp + 0x1a]        ; 8B 5E 1A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 0x6e]        ; 8B 44 6E
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        or      ax, ax                          ; 0B C0
        jne     L_0322                          ; 75 0C
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        mov     ax, word ptr [bx + 0x34]        ; 8B 47 34
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
L_0322:
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        test    word ptr [bp - 0x1a], 0x2000    ; F7 46 E6 00 20
        jne     L_033D                          ; 75 0E
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        jne     L_033D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_033F                          ; EB 02
L_033D:
        sub     ax, ax                          ; 2B C0
L_033F:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [si + 0x28]        ; 8B 44 28
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     byte ptr es:[bx + 0x12], 0      ; 26 80 7F 12 00
        je      L_0369                          ; 74 11
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0D1A                          ; E8 B6 09
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        jmp     L_036E                          ; EB 05
L_0369:
        mov     word ptr [bp - 0x40], 0         ; C7 46 C0 00 00
L_036E:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      ax, ax                          ; 0B C0
        jne     L_03C4                          ; 75 49
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        je      L_038E                          ; 74 0B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        jmp     L_03C4                          ; EB 36
L_038E:
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        push    word ptr [si + 0xa]             ; FF 74 0A
        push    word ptr [si + 6]               ; FF 74 06
        call    far _SEG1_2D82                  ; 9A FC 05 00 00 [FIXUP]
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     ax, 8                           ; 3D 08 00
        jge     L_03B0                          ; 7D 05
        mov     word ptr [bp - 0x42], 8         ; C7 46 BE 08 00
L_03B0:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_03C4                          ; 75 0E
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far _entry_377                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 8], ax           ; 89 46 08
L_03C4:
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 6], 0x7fff       ; C7 46 FA FF 7F
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        jmp     L_05D0                          ; E9 E4 01
L_03EC:
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
L_03F1:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jne     L_03EC                          ; 75 F4
        inc     word ptr [0x140]                ; FF 06 40 01
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        or      di, di                          ; 0B FF
        je      L_040A                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_0421                          ; EB 17
L_040A:
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     cx, 0x2d                        ; B9 2D 00
        imul    cx                              ; F7 E9
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 0x24]        ; 03 5E DC
        mov     ax, word ptr es:[bx]            ; 26 8B 07
L_0421:
        push    ax                              ; 50
        call    far _entry_385                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x3e], al        ; 88 46 C2
        cmp     al, 0xff                        ; 3C FF
        jne     L_0437                          ; 75 09
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0437:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     dl, byte ptr [bp - 0x3e]        ; 8A 56 C2
        sub     dh, dh                          ; 2A F6
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     dx, ax                          ; 03 D0
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     bx, dx                          ; 8B DA
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jg      L_0475                          ; 7F 1F
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 7A 04 00 00 [FIXUP]
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jbe     L_0470                          ; 76 0A
        dec     word ptr [0x140]                ; FF 0E 40 01
        mov     ax, word ptr [0x140]            ; A1 40 01
        jmp     L_05C9                          ; E9 59 01
L_0470:
        sub     ax, ax                          ; 2B C0
        jmp     L_05C9                          ; E9 54 01
L_0475:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jbe     L_048E                          ; 76 09
        dec     word ptr [0x140]                ; FF 0E 40 01
        mov     ax, word ptr [0x140]            ; A1 40 01
        jmp     L_0490                          ; EB 02
L_048E:
        sub     ax, ax                          ; 2B C0
L_0490:
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        je      L_04A9                          ; 74 0B
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 0x3a], ax        ; 39 46 C6
        je      L_04D5                          ; 74 2F
        jmp     L_05C9                          ; E9 20 01
L_04A9:
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_04C3                          ; 75 09
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_04C3                          ; 74 03
        jmp     L_05C9                          ; E9 06 01
L_04C3:
        cmp     word ptr [bp - 0x10], 2         ; 83 7E F0 02
        jne     L_04CC                          ; 75 03
        jmp     L_05C9                          ; E9 FD 00
L_04CC:
        cmp     word ptr [bp - 0x10], 3         ; 83 7E F0 03
        jne     L_04D5                          ; 75 03
        jmp     L_05C9                          ; E9 F4 00
L_04D5:
        les     bx, ptr [bp - 0x24]             ; C4 5E DC
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     al, byte ptr es:[bx + 0x1a]     ; 26 8A 47 1A
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        mov     al, byte ptr es:[bx + 0x1b]     ; 26 8A 47 1B
        mov     byte ptr [bp - 0x29], al        ; 88 46 D7
        mov     al, byte ptr es:[bx + 0x1c]     ; 26 8A 47 1C
        mov     byte ptr [bp - 0x28], al        ; 88 46 D8
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        cmp     word ptr [bp - 0x3a], ax        ; 39 46 C6
        jne     L_0535                          ; 75 12
        test    byte ptr es:[bx + 0xc], 3       ; 26 F6 47 0C 03
        jne     L_0535                          ; 75 0B
        cmp     byte ptr [bp - 0x36], 2         ; 80 7E CA 02
        je      L_0535                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0537                          ; EB 02
L_0535:
        sub     ax, ax                          ; 2B C0
L_0537:
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0D49                          ; E8 FC 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     word ptr [bp - 0x3a], 0         ; 83 7E C6 00
        jne     L_056F                          ; 75 16
        cmp     dx, 0x7fff                      ; 81 FA FF 7F
        jg      L_056F                          ; 7F 10
        jl      L_0566                          ; 7C 05
        cmp     ax, 0xf7ff                      ; 3D FF F7
        ja      L_056F                          ; 77 09
L_0566:
        add     word ptr [bp - 0xe], 0x800      ; 81 46 F2 00 08
        adc     word ptr [bp - 0xc], 0          ; 83 56 F4 00
L_056F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jl      L_0587                          ; 7C 0D
        jg      L_0581                          ; 7F 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jbe     L_0587                          ; 76 06
L_0581:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_05C9                          ; 74 42
L_0587:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jl      L_059F                          ; 7C 0D
        jg      L_0599                          ; 7F 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jb      L_059F                          ; 72 06
L_0599:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_05C9                          ; 75 2A
L_059F:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
L_05C9:
        add     word ptr [bp - 0x24], 0x2d      ; 83 46 DC 2D
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
L_05D0:
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jae     L_05DB                          ; 73 03
        jmp     L_03F1                          ; E9 16 FE
L_05DB:
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        or      ax, word ptr [bp + 0x14]        ; 0B 46 14
        jne     L_05E6                          ; 75 03
        jmp     L_06AA                          ; E9 C4 00
L_05E6:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    ax                              ; 50
        push    word ptr es:[bx + 0x16]         ; 26 FF 77 16
        call    far _SEG1_2D82                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        mov     byte ptr [bp - 0x2a], al        ; 88 46 D6
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        mov     byte ptr [bp - 0x29], al        ; 88 46 D7
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        mov     byte ptr [bp - 0x28], al        ; 88 46 D8
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        lea     ax, [bp - 0x42]                 ; 8D 46 BE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_0D49                          ; E8 F4 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jg      L_06AA                          ; 7F 44
        jl      L_066D                          ; 7C 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        ja      L_06AA                          ; 77 3D
L_066D:
        test    word ptr [bp - 0xe], 0x100      ; F7 46 F2 00 01
        je      L_068D                          ; 74 19
        test    word ptr [bp - 0x1a], 0x200     ; F7 46 E6 00 02
        jne     L_068D                          ; 75 12
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        or      byte ptr es:[bx + 0x10], 2      ; 26 80 4F 10 02
        add     word ptr es:[bx + 8], 0x12c     ; 26 81 47 08 2C 01
        inc     word ptr es:[bx + 0x11]         ; 26 FF 47 11
L_068D:
        test    word ptr [bp - 0xe], 0x200      ; F7 46 F2 00 02
        jne     L_0697                          ; 75 03
        jmp     L_02EC                          ; E9 55 FC
L_0697:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     word ptr es:[bx + 0x11], ax     ; 26 01 47 11
        jmp     L_02EC                          ; E9 42 FC
L_06AA:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ax, word ptr [bp - 2]           ; 0B 46 FE
        jne     L_06B5                          ; 75 03
        jmp     L_090B                          ; E9 56 02
L_06B5:
        test    byte ptr [bp - 8], 0x3f         ; F6 46 F8 3F
        je      L_0713                          ; 74 58
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A CB 00 00 00 [FIXUP]
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        sub     ah, ah                          ; 2A E4
        and     ax, 0x38                        ; 25 38 00
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 7                           ; 25 07 00
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_386                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        cmp     al, 0xfe                        ; 3C FE
        jne     L_06F7                          ; 75 0C
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A FC 06 00 00 [FIXUP]
        jmp     L_090B                          ; E9 14 02
L_06F7:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A 74 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        mov     al, 0x2d                        ; B0 2D
        mul     byte ptr [bp - 0x14]            ; F6 66 EC
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        jmp     L_0722                          ; EB 0F
L_0713:
        mov     al, byte ptr [bp - 0x3c]        ; 8A 46 C4
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
L_0722:
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_0754                          ; 75 1B
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        jne     L_0754                          ; 75 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        jmp     L_0771                          ; EB 1D
L_0754:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
L_0771:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_07E3                          ; 74 37
        test    word ptr [bp - 0x1a], 0x400     ; F7 46 E6 00 04
        jne     L_07F0                          ; 75 3D
        test    byte ptr [bp - 0x1a], 4         ; F6 46 E6 04
        jne     L_07F0                          ; 75 37
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        test    byte ptr es:[bx + 0xc], 3       ; 26 F6 47 0C 03
        je      L_07D6                          ; 74 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_07E3                          ; 75 0D
L_07D6:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_07F0                          ; 74 0D
L_07E3:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        cmp     byte ptr es:[bx + 0x1a], 0      ; 26 80 7F 1A 00
        je      L_07F4                          ; 74 04
L_07F0:
        mov     al, 1                           ; B0 01
        jmp     L_07F6                          ; EB 02
L_07F4:
        sub     al, al                          ; 2A C0
L_07F6:
        and     al, 1                           ; 24 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0xe]      ; 26 8A 47 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0xd], al      ; 26 88 47 0D
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0xf]      ; 26 8A 47 0F
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0xe], al      ; 26 88 47 0E
        mov     word ptr es:[bx + 0xf], 0       ; 26 C7 47 0F 00 00
        cmp     byte ptr es:[bx + 0xd], 2       ; 26 80 7F 0D 02
        jne     L_084B                          ; 75 07
        or      byte ptr es:[bx + 0xd], 1       ; 26 80 4F 0D 01
        jmp     L_085A                          ; EB 0F
L_084B:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xd], 3       ; 26 80 7F 0D 03
        jne     L_085A                          ; 75 05
        or      byte ptr es:[bx + 0xd], 3       ; 26 80 4F 0D 03
L_085A:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xe], 2       ; 26 80 7F 0E 02
        jne     L_0869                          ; 75 05
        or      byte ptr es:[bx + 0xe], 4       ; 26 80 4F 0E 04
L_0869:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        test    word ptr [bp - 8], 0x100        ; F7 46 F8 00 01
        je      L_088F                          ; 74 16
        or      byte ptr es:[bx + 0x10], 2      ; 26 80 4F 10 02
        add     word ptr es:[bx + 8], 0x12c     ; 26 81 47 08 2C 01
        test    word ptr [bp - 0x1a], 0x200     ; F7 46 E6 00 02
        jne     L_088F                          ; 75 04
        inc     word ptr es:[bx + 0x11]         ; 26 FF 47 11
L_088F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_08EF                          ; 74 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        cmp     byte ptr es:[bx + 0x1a], 0      ; 26 80 7F 1A 00
        jne     L_08EF                          ; 75 49
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        or      byte ptr es:[bx + 0x10], 4      ; 26 80 4F 10 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_08CF                          ; 75 11
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        les     bx, ptr es:[bx]                 ; 26 C4 1F
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        jne     L_08CF                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_08D2                          ; EB 03
L_08CF:
        mov     ax, 1                           ; B8 01 00
L_08D2:
        sub     dx, dx                          ; 2B D2
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        sub     ax, cx                          ; 2B C1
        sbb     dx, bx                          ; 1B D3
        mov     cx, 2                           ; B9 02 00
        idiv    cx                              ; F7 F9
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        add     word ptr es:[bx + 0x11], ax     ; 26 01 47 11
L_08EF:
        test    byte ptr [bp - 8], 0x40         ; F6 46 F8 40
        je      L_08FD                          ; 74 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
L_08FD:
        test    byte ptr [bp - 8], 0x80         ; F6 46 F8 80
        je      L_090B                          ; 74 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
L_090B:
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        sub     ah, ah                          ; 2A E4
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x18                            ; C2 18 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x60                        ; 83 EC 60
        push    di                              ; 57
        push    si                              ; 56
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
L_092C:
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jne     L_093A                          ; 75 07
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        je      L_0941                          ; 74 07
L_093A:
        call    far KERNEL.YIELD                ; 9A 16 0C 00 00 [FIXUP]
        jmp     L_092C                          ; EB EB
L_0941:
        inc     word ptr [0x13e]                ; FF 06 3E 01
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        cmp     word ptr [0x132], ax            ; 39 06 32 01
        ja      L_0992                          ; 77 44
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 85 0B 00 00 [FIXUP]
        add     word ptr [0x132], 5             ; 83 06 32 01 05
        push    word ptr [0x394]                ; FF 36 94 03
        mov     ax, 0x15                        ; B8 15 00
        mul     word ptr [0x132]                ; F7 26 32 01
        push    ax                              ; 50
        push    word ptr [0x224]                ; FF 36 24 02
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0986                          ; 75 11
        sub     word ptr [0x132], 5             ; 83 2E 32 01 05
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALLOCK            ; 9A 8B 09 00 00 [FIXUP]
        jmp     L_0B97                          ; E9 11 02
L_0986:
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALLOCK            ; 9A 96 09 00 00 [FIXUP]
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
L_0992:
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    far KERNEL.LOCALLOCK            ; 9A 88 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     word ptr [bp - 0x3a], ss        ; 8C 56 C6
        mov     word ptr [bp - 0x4a], 0         ; C7 46 B6 00 00
L_09B1:
        les     bx, ptr [bp - 0x3c]             ; C4 5E C4
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        mov     di, word ptr [bp - 0x36]        ; 8B 7E CA
        inc     word ptr [bp - 0x36]            ; FF 46 CA
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 0x4a]            ; FF 46 B6
        cmp     word ptr [bp - 0x4a], 0x32      ; 83 7E B6 32
        jl      L_09B1                          ; 7C E6
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        mov     word ptr [bp - 0x4c], ss        ; 8C 56 B4
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        jge     L_09DF                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_09E1                          ; EB 02
L_09DF:
        sub     ax, ax                          ; 2B C0
L_09E1:
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     word ptr [bp - 0x56], 0         ; C7 46 AA 00 00
        mov     word ptr [bp - 0x54], 0         ; C7 46 AC 00 00
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        push    word ptr [bp + 0x24]            ; FF 76 24
        lea     ax, [bp - 0x56]                 ; 8D 46 AA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_32D3                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        sub     ax, word ptr [bp - 0x56]        ; 2B 46 AA
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp - 0x50]        ; 8B 46 B0
        sub     ax, word ptr [bp - 0x54]        ; 2B 46 AC
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        cmp     word ptr [bp - 0x32], 0         ; 83 7E CE 00
        jl      L_0A28                          ; 7C 05
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        jmp     L_0A2D                          ; EB 05
L_0A28:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        neg     ax                              ; F7 D8
L_0A2D:
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        cmp     word ptr [bp - 0x34], 0         ; 83 7E CC 00
        jl      L_0A3B                          ; 7C 05
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        jmp     L_0A40                          ; EB 05
L_0A3B:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        neg     ax                              ; F7 D8
L_0A40:
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        cmp     word ptr [bp - 0x48], 0         ; 83 7E B8 00
        je      L_0A4E                          ; 74 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
L_0A4E:
        mov     bx, word ptr [bp + 0x22]        ; 8B 5E 22
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x24]                     ; FF 5F 24
        mov     word ptr [bp - 0x5c], ax        ; 89 46 A4
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far _SEG1_15F6                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        or      ax, ax                          ; 0B C0
        jne     L_0A86                          ; 75 03
        jmp     L_0B8F                          ; E9 09 01
L_0A86:
        push    ax                              ; 50
        call    far KERNEL.LOCALLOCK            ; 9A 3C 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x5a], ax        ; 89 46 A6
        mov     word ptr [bp - 0x58], ds        ; 8C 5E A8
        cmp     word ptr [bp - 0x5c], 0         ; 83 7E A4 00
        je      L_0AE1                          ; 74 49
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x5c]            ; FF 76 A4
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        or      ax, ax                          ; 0B C0
        jne     L_0AB0                          ; 75 03
        jmp     L_0B7D                          ; E9 CD 00
L_0AB0:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A EE 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
        mov     word ptr [bp - 0x44], dx        ; 89 56 BC
        mov     bx, word ptr [bp + 0x22]        ; 8B 5E 22
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    dx                              ; 52
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x24]                     ; FF 5F 24
        jmp     L_0AE9                          ; EB 08
L_0AE1:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        mov     word ptr [bp - 0x46], ax        ; 89 46 BA
L_0AE9:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A F0 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        push    word ptr [bp - 0x4e]            ; FF 76 B2
        push    word ptr [bp - 0x44]            ; FF 76 BC
        push    word ptr [bp - 0x46]            ; FF 76 BA
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        push    word ptr [bx + 8]               ; FF 77 08
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jl      L_0B23                          ; 7C 05
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        jmp     L_0B2B                          ; EB 08
L_0B23:
        mov     bx, word ptr [bp - 0x42]        ; 8B 5E BE
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        neg     ax                              ; F7 D8
L_0B2B:
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far _SEG1_2F51                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 0x14]        ; 3B 46 14
        jne     L_0B4D                          ; 75 13
        mov     bx, word ptr [bp + 0x22]        ; 8B 5E 22
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     word ptr [bx + 0x34], ax        ; 39 47 34
        jne     L_0B4D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B4F                          ; EB 02
L_0B4D:
        sub     ax, ax                          ; 2B C0
L_0B4F:
        push    ax                              ; 50
        call    L_02CE                          ; E8 7B F7
        mov     byte ptr [bp - 0x38], al        ; 88 46 C8
        cmp     al, 0xfe                        ; 3C FE
        jne     L_0BAB                          ; 75 51
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        or      ax, word ptr [bp - 0x44]        ; 0B 46 BC
        je      L_0B74                          ; 74 12
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        push    di                              ; 57
        call    far KERNEL.GLOBALUNLOCK         ; 9A 79 0B 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.GLOBALFREE           ; 9A C7 0B 00 00 [FIXUP]
L_0B74:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A BB 0B 00 00 [FIXUP]
L_0B7D:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        push    di                              ; 57
        call    far KERNEL.LOCALUNLOCK          ; 9A 93 0B 00 00 [FIXUP]
        push    di                              ; 57
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0B8F:
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    far KERNEL.LOCALUNLOCK          ; 9A 81 0C 00 00 [FIXUP]
L_0B97:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        ja      L_0BA1                          ; 77 03
        jmp     L_0D04                          ; E9 63 01
L_0BA1:
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_0D06                          ; E9 5B 01
L_0BAB:
        mov     ax, word ptr [bp - 0x46]        ; 8B 46 BA
        or      ax, word ptr [bp - 0x44]        ; 0B 46 BC
        je      L_0BCB                          ; 74 18
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        push    di                              ; 57
        call    far KERNEL.GLOBALUNLOCK         ; 9A 92 0C 00 00 [FIXUP]
        cmp     byte ptr [bp - 0x38], 0xff      ; 80 7E C8 FF
        je      L_0BCB                          ; 74 06
        push    di                              ; 57
        call    far KERNEL.GLOBALFREE           ; 9A 25 01 00 00 [FIXUP]
L_0BCB:
        cmp     byte ptr [bp - 0x38], 0xff      ; 80 7E C8 FF
        jne     L_0BD4                          ; 75 03
        jmp     L_0C79                          ; E9 A5 00
L_0BD4:
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_0BF3                          ; 75 15
        mov     al, byte ptr [bp - 0x38]        ; 8A 46 C8
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x58]            ; FF 76 A8
        push    word ptr [bp - 0x5a]            ; FF 76 A6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0225                          ; E8 36 F6
        or      ax, ax                          ; 0B C0
        je      L_0B74                          ; 74 81
L_0BF3:
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        inc     word ptr es:[bx + 0xa]          ; 26 FF 47 0A
L_0C07:
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jne     L_0C15                          ; 75 07
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        je      L_0C1C                          ; 74 07
L_0C15:
        call    far KERNEL.YIELD                ; 9A ED 03 00 00 [FIXUP]
        jmp     L_0C07                          ; EB EB
L_0C1C:
        inc     word ptr [0x142]                ; FF 06 42 01
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        or      di, di                          ; 0B FF
        je      L_0C2E                          ; 74 04
        mov     ax, di                          ; 8B C7
        jmp     L_0C49                          ; EB 1B
L_0C2E:
        les     bx, ptr [bp - 0x40]             ; C4 5E C0
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     cl, byte ptr [bp - 0x38]        ; 8A 4E C8
        sub     ch, ch                          ; 2A ED
        sub     ax, cx                          ; 2B C1
        mov     cx, 0x2d                        ; B9 2D 00
        imul    cx                              ; F7 E9
        mov     bx, ax                          ; 8B D8
        add     bx, word ptr [bp - 0x40]        ; 03 5E C0
        mov     ax, word ptr es:[bx]            ; 26 8B 07
L_0C49:
        push    ax                              ; 50
        call    far _entry_385                  ; 9A 23 04 00 00 [FIXUP]
        mov     byte ptr [bp - 0x5e], al        ; 88 46 A2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_388                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0C67                          ; 75 09
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A 33 04 00 00 [FIXUP]
L_0C67:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jbe     L_0C77                          ; 76 09
        dec     word ptr [0x142]                ; FF 0E 42 01
        mov     ax, word ptr [0x142]            ; A1 42 01
        jmp     L_0C79                          ; EB 02
L_0C77:
        sub     ax, ax                          ; 2B C0
L_0C79:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        push    di                              ; 57
        call    far KERNEL.LOCALUNLOCK          ; 9A 89 0C 00 00 [FIXUP]
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    far KERNEL.LOCALUNLOCK          ; 9A 5B 04 00 00 [FIXUP]
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A C0 06 00 00 [FIXUP]
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jbe     L_0CA6                          ; 76 09
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_0CA8                          ; EB 02
L_0CA6:
        sub     ax, ax                          ; 2B C0
L_0CA8:
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        inc     word ptr [0x12c]                ; FF 06 2C 01
        mov     cx, 0x15                        ; B9 15 00
        mul     cx                              ; F7 E1
        add     si, ax                          ; 03 F0
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     dx, word ptr [bp + 0x20]        ; 8B 56 20
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     word ptr [si + 0xe], dx         ; 89 54 0E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     word ptr [si + 0x12], di        ; 89 7C 12
        mov     al, byte ptr [bp - 0x38]        ; 8A 46 C8
        mov     byte ptr [si + 0x14], al        ; 88 44 14
        call    far _SEG1_1694                  ; 9A 07 0D 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D0D                          ; EB 09
L_0D04:
        sub     ax, ax                          ; 2B C0
L_0D06:
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
L_0D0D:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D1A -- offset 0x0D1A -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_kernel, small
; callers: sub_02CE, sub_0D49
; calls (inter): KERNEL.ADDATOM, KERNEL.FINDATOM
;----------------------------------------------------------------------
L_0D1A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0D40                          ; 75 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_0D40:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D49 -- offset 0x0D49 -- 670 instr
; Dispatcher: tabla de decisiones cmp+jcc (670 instr).
; tags: dispatcher
; callers: sub_02CE
; calls (intra): sub_0D1A
;----------------------------------------------------------------------
L_0D49:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0D5F                          ; 75 06
        cmp     byte ptr [bp + 0x12], 0         ; 80 7E 12 00
        je      L_0D64                          ; 74 05
L_0D5F:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D66                          ; EB 02
L_0D64:
        sub     ax, ax                          ; 2B C0
L_0D66:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        jne     L_0D80                          ; 75 13
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0x10], 2      ; 26 80 7F 10 02
        jne     L_0D80                          ; 75 09
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0x7fff                      ; BA FF 7F
        jmp     L_1452                          ; E9 D2 06
L_0D80:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        cmp     byte ptr [bp + 0x12], 0         ; 80 7E 12 00
        je      L_0D96                          ; 74 08
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        jmp     L_0D9F                          ; EB 09
L_0D96:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        add     ax, 0xc                         ; 05 0C 00
L_0D9F:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     byte ptr [bp + 0x12], 0         ; 80 7E 12 00
        jne     L_0DB5                          ; 75 0A
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_0DBA                          ; 74 05
L_0DB5:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0DBC                          ; EB 02
L_0DBA:
        sub     ax, ax                          ; 2B C0
L_0DBC:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x13]     ; 26 8A 47 13
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xd], al      ; 26 38 47 0D
        je      L_0DD9                          ; 74 0A
        add     word ptr [bp - 0x1a], 0xe000    ; 81 46 E6 00 E0
        adc     word ptr [bp - 0x18], 0x493     ; 81 56 E8 93 04
L_0DD9:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x11], 3      ; 26 F6 47 11 03
        je      L_0E18                          ; 74 35
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_0E03                          ; 75 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0E2B                          ; 74 34
        add     word ptr [bp - 0x1a], 0x6000    ; 81 46 E6 00 60
        adc     word ptr [bp - 0x18], 0xea      ; 81 56 E8 EA 00
        jmp     L_0E2B                          ; EB 28
L_0E03:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        jne     L_0E2B                          ; 75 1E
        add     word ptr [bp - 0x1a], 0x7800    ; 81 46 E6 00 78
        adc     word ptr [bp - 0x18], 5         ; 83 56 E8 05
        jmp     L_0E2B                          ; EB 13
L_0E18:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0E2B                          ; 74 09
        add     word ptr [bp - 0x1a], 0x400     ; 81 46 E6 00 04
        adc     word ptr [bp - 0x18], 0         ; 83 56 E8 00
L_0E2B:
        les     bx, ptr [bp + 0x1c]             ; C4 5E 1C
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        je      L_0E67                          ; 74 32
        cmp     byte ptr [bp + 0x12], 0         ; 80 7E 12 00
        je      L_0E4D                          ; 74 12
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0D1A                          ; E8 CF FE
        jmp     L_0E54                          ; EB 07
L_0E4D:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
L_0E54:
        les     bx, ptr [bp + 0x1c]             ; C4 5E 1C
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        je      L_0E67                          ; 74 0A
        add     word ptr [bp - 0x1a], 0x4000    ; 81 46 E6 00 40
        adc     word ptr [bp - 0x18], 0x9c      ; 81 56 E8 9C 00
L_0E67:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x11], 0xf0   ; 26 F6 47 11 F0
        je      L_0EA5                          ; 74 34
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0x18]     ; 26 8A 47 18
        and     al, 0xf0                        ; 24 F0
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf0                        ; 24 F0
        cmp     al, byte ptr [bp - 0x1e]        ; 3A 46 E2
        je      L_0EA5                          ; 74 1A
        cmp     byte ptr [bp - 0x1e], 0         ; 80 7E E2 00
        je      L_0E9D                          ; 74 0C
        add     word ptr [bp - 0x1a], 0xa000    ; 81 46 E6 00 A0
        adc     word ptr [bp - 0x18], 0x8c      ; 81 56 E8 8C 00
        jmp     L_0EA5                          ; EB 08
L_0E9D:
        add     word ptr [bp - 0x1a], 0         ; 83 46 E6 00
        adc     word ptr [bp - 0x18], 0x7d      ; 83 56 E8 7D
L_0EA5:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xe], 0       ; 26 80 7F 0E 00
        je      L_0ED3                          ; 74 1F
        cmp     byte ptr es:[bx + 0xe], 3       ; 26 80 7F 0E 03
        jne     L_0F19                          ; 75 5E
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_0ECD                          ; 75 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0ED3                          ; 74 06
L_0ECD:
        test    byte ptr [bp + 0xe], 2          ; F6 46 0E 02
        je      L_0F32                          ; 74 5F
L_0ED3:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        je      L_0EE2                          ; 74 03
        jmp     L_0FFE                          ; E9 1C 01
L_0EE2:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0EEB                          ; 74 03
        jmp     L_0FFE                          ; E9 13 01
L_0EEB:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_0F3E                          ; 7D 3E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A 99 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        jmp     L_0F44                          ; EB 2B
L_0F19:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_0ED3                          ; 75 AE
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0ED3                          ; 75 A8
        test    word ptr [bp + 0xe], 0x4000     ; F7 46 0E 00 40
        jne     L_0ED3                          ; 75 A1
L_0F32:
        add     word ptr [bp - 0x1a], 0xe000    ; 81 46 E6 00 E0
        adc     word ptr [bp - 0x18], 0x128     ; 81 56 E8 28 01
        jmp     L_0ED3                          ; EB 95
L_0F3E:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
L_0F44:
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     si, word ptr es:[bx]            ; 26 8B 37
        cmp     word ptr [bp - 0x1c], si        ; 39 76 E4
        jle     L_0F5C                          ; 7E 0A
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, si                          ; 2B C6
        cdq                                     ; 99
        mov     cl, 0xb                         ; B1 0B
        jmp     L_0F68                          ; EB 0C
L_0F5C:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        cdq                                     ; 99
        mov     cl, 0xa                         ; B1 0A
L_0F68:
        call    far _SEG1_3F3E                  ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0F86                          ; 74 0D
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        jmp     L_1300                          ; E9 7A 03
L_0F86:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A A4 0F 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A CE 0F 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A D5 0F 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A DC 0F 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 6E 10 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3D67                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        or      ax, ax                          ; 0B C0
        jle     L_0FF5                          ; 7E 03
        jmp     L_1300                          ; E9 0B 03
L_0FF5:
        mov     word ptr es:[bx + 4], 1         ; 26 C7 47 04 01 00
        jmp     L_1300                          ; E9 02 03
L_0FFE:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_100F                          ; 74 0B
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_100F                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1011                          ; EB 02
L_100F:
        sub     ax, ax                          ; 2B C0
L_1011:
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        les     bx, ptr [bp + 0x1c]             ; C4 5E 1C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_103B                          ; 7D 0F
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sub     word ptr [bp - 0x1c], ax        ; 29 46 E4
L_103B:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_1094                          ; 74 53
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        shl     ax, 1                           ; D1 E0
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jg      L_1094                          ; 7F 49
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cmp     ax, 8                           ; 3D 08 00
        jle     L_1061                          ; 7E 05
        mov     word ptr [bp - 0x16], 8         ; C7 46 EA 08 00
L_1061:
        mov     ax, 0x5000                      ; B8 00 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A B3 10 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        imul    word ptr [bp - 0x1c]            ; F7 6E E4
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        sub     ax, 8                           ; 2D 08 00
        cdq                                     ; 99
        or      word ptr [bp - 0x1a], ax        ; 09 46 E6
        or      word ptr [bp - 0x18], dx        ; 09 56 E8
        jmp     L_1099                          ; EB 05
L_1094:
        mov     word ptr [bp - 0x16], 1         ; C7 46 EA 01 00
L_1099:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_10BF                          ; 7D 1E
        mov     ax, 0x5800                      ; B8 00 58
        mov     dx, 2                           ; BA 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A D1 10 00 00 [FIXUP]
        add     ax, 0x6000                      ; 05 00 60
        adc     dx, 9                           ; 83 D2 09
        jmp     L_10D5                          ; EB 16
L_10BF:
        mov     ax, 0x5800                      ; B8 00 58
        mov     dx, 2                           ; BA 02 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A FF FF 00 00 [FIXUP]
L_10D5:
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_10EC                          ; 75 03
        jmp     L_116F                          ; E9 83 00
L_10EC:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_1150                          ; 74 54
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jge     L_1150                          ; 7D 47
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far _SEG1_2D82                  ; 9A 7A 11 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, 5                           ; 3D 05 00
        jle     L_1125                          ; 7E 05
        mov     word ptr [bp - 0x14], 5         ; C7 46 EC 05 00
L_1125:
        mov     ax, 0x5000                      ; B8 00 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A E4 11 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        imul    word ptr [bp - 0x1c]            ; F7 6E E4
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        dec     ax                              ; 48
        cdq                                     ; 99
        or      word ptr [bp - 0x1a], ax        ; 09 46 E6
        or      word ptr [bp - 0x18], dx        ; 09 56 E8
L_1150:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        sub     si, word ptr [bp - 0x1c]        ; 2B 76 E4
        mov     ax, 0xc800                      ; B8 00 C8
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        or      si, si                          ; 0B F6
        jl      L_1166                          ; 7C 05
        mov     ax, si                          ; 8B C6
        jmp     L_123B                          ; E9 D5 00
L_1166:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        jmp     L_123B                          ; E9 CC 00
L_116F:
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_2D82                  ; 9A 91 11 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far _SEG1_2D82                  ; 9A A1 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _SEG1_2D82                  ; 9A C6 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        je      L_11F9                          ; 74 4B
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jge     L_11F9                          ; 7D 3E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_2D82                  ; 9A 09 12 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, 5                           ; 3D 05 00
        jle     L_11D7                          ; 7E 05
        mov     word ptr [bp - 0x14], 5         ; C7 46 EC 05 00
L_11D7:
        mov     ax, 0x5000                      ; B8 00 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 3F 12 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        dec     ax                              ; 48
        cdq                                     ; 99
        or      word ptr [bp - 0x1a], ax        ; 09 46 E6
        or      word ptr [bp - 0x18], dx        ; 09 56 E8
L_11F9:
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        les     bx, ptr [bp - 6]                ; C4 5E FA
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far _SEG1_2D82                  ; 9A 18 12 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _SEG1_2D82                  ; 9A EE 12 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, 0x7800                      ; B8 00 78
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_1235                          ; 7C 08
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        jmp     L_123B                          ; EB 06
L_1235:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
L_123B:
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 9F 12 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jne     L_12A9                          ; 75 5A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        mov     cx, 0x2d                        ; B9 2D 00
        mul     cx                              ; F7 E1
        mov     cx, bx                          ; 8B CB
        mov     bx, es                          ; 8C C3
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     word ptr [bp - 0xe], bx         ; 89 5E F2
        mov     ax, 0x5000                      ; B8 00 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cdq                                     ; 99
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     cx, word ptr es:[bx + 0x22]     ; 26 8B 4F 22
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        cdq                                     ; 99
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     bx, word ptr es:[bx + 0x25]     ; 26 8B 5F 25
        idiv    bx                              ; F7 FB
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        add     ax, cx                          ; 03 C1
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A F6 12 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
L_12A9:
        cmp     word ptr [bp - 0x16], 1         ; 83 7E EA 01
        jg      L_12B5                          ; 7F 06
        cmp     word ptr [bp - 0x14], 1         ; 83 7E EC 01
        jle     L_12BE                          ; 7E 09
L_12B5:
        add     word ptr [bp - 0x1a], 0xc800    ; 81 46 E6 00 C8
        adc     word ptr [bp - 0x18], 0         ; 83 56 E8 00
L_12BE:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        je      L_1300                          ; 74 3A
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jle     L_12DD                          ; 7E 12
        mov     ax, 0x1400                      ; B8 00 14
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x14]            ; FF 76 EC
        jmp     L_12ED                          ; EB 10
L_12DD:
        mov     ax, 0x1400                      ; B8 00 14
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x16]            ; FF 76 EA
L_12ED:
        call    far _SEG1_2D82                  ; 9A 74 13 00 00 [FIXUP]
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 7C 13 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
L_1300:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1350                          ; 74 38
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, 0x96                        ; 05 96 00
        cmp     ax, word ptr [bp - 2]           ; 3B 46 FE
        jge     L_132C                          ; 7D 09
        add     word ptr [bp - 0x1c], 0x12c     ; 81 46 E4 2C 01
        or      byte ptr [bp - 0x19], 1         ; 80 4E E7 01
L_132C:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        sub     si, word ptr [bp - 0x1c]        ; 2B 76 E4
        mov     ax, 0xc00                       ; B8 00 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        or      si, si                          ; 0B F6
        jl      L_1344                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_134A                          ; EB 06
L_1344:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
L_134A:
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        jmp     L_1372                          ; EB 22
L_1350:
        mov     ax, 0x190                       ; B8 90 01
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
        mov     si, ax                          ; 8B F0
        mov     ax, 0xc00                       ; B8 00 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        or      si, si                          ; 0B F6
        jl      L_136A                          ; 7C 04
        mov     ax, si                          ; 8B C6
        jmp     L_136E                          ; EB 04
L_136A:
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
L_136E:
        push    ax                              ; 50
        mov     ax, 0x14                        ; B8 14 00
L_1372:
        push    ax                              ; 50
        call    far _SEG1_2D82                  ; 9A 10 0F 00 00 [FIXUP]
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_3E18                  ; 9A 9D 0F 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], ax        ; 01 46 E6
        adc     word ptr [bp - 0x18], dx        ; 11 56 E8
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_13CD                          ; 74 3D
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     byte ptr es:[bx + 8], 0         ; 26 80 7F 08 00
        jne     L_13CD                          ; 75 33
        test    word ptr [bp + 0xe], 0x400      ; F7 46 0E 00 04
        jne     L_13C0                          ; 75 1F
        test    byte ptr [bp + 0xe], 4          ; F6 46 0E 04
        jne     L_13C0                          ; 75 19
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        mov     byte ptr [bp - 0x1e], al        ; 88 46 E2
        or      al, al                          ; 0A C0
        je      L_13BA                          ; 74 04
        cmp     al, 1                           ; 3C 01
        jne     L_13CD                          ; 75 13
L_13BA:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_13CD                          ; 75 0D
L_13C0:
        test    word ptr [bp + 0xe], 0x400      ; F7 46 0E 00 04
        jne     L_13E6                          ; 75 1F
        or      byte ptr [bp - 0x19], 2         ; 80 4E E7 02
        jmp     L_13E6                          ; EB 19
L_13CD:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     al, byte ptr es:[bx + 8]        ; 26 8A 47 08
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xa], al      ; 26 38 47 0A
        je      L_13E6                          ; 74 09
        add     word ptr [bp - 0x1a], 0x1000    ; 81 46 E6 00 10
        adc     word ptr [bp - 0x18], 0         ; 83 56 E8 00
L_13E6:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_1400                          ; 74 10
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     byte ptr es:[bx + 9], 0         ; 26 80 7F 09 00
        jne     L_1400                          ; 75 06
        or      byte ptr [bp - 0x1a], 0x40      ; 80 4E E6 40
        jmp     L_1419                          ; EB 19
L_1400:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     al, byte ptr es:[bx + 9]        ; 26 8A 47 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xb], al      ; 26 38 47 0B
        je      L_1419                          ; 74 09
        add     word ptr [bp - 0x1a], 0xc00     ; 81 46 E6 00 0C
        adc     word ptr [bp - 0x18], 0         ; 83 56 E8 00
L_1419:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xc], 0       ; 26 80 7F 0C 00
        je      L_1433                          ; 74 10
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        jne     L_1433                          ; 75 06
        or      byte ptr [bp - 0x1a], 0x80      ; 80 4E E6 80
        jmp     L_144C                          ; EB 19
L_1433:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     byte ptr es:[bx + 0xc], al      ; 26 38 47 0C
        je      L_144C                          ; 74 09
        add     word ptr [bp - 0x1a], 0xc00     ; 81 46 E6 00 0C
        adc     word ptr [bp - 0x18], 0         ; 83 56 E8 00
L_144C:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
L_1452:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      020h                            ; 20

GDI_TEXT ENDS

        END
