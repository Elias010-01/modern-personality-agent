; AUTO-GENERATED from original MSDOSD segment 1
; segment_size=4827 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MSDOSD_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; FORMAT -- 476 instr
; Iterador con instrucciones de string (movsb/scasb/...) (476 instr).
; tags: calls_kernel, complex_iterator, far, string_op
; calls (intra): sub_0879, sub_088C, sub_089A, sub_08A1, sub_08C4, sub_0909 (+9 mas)
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; FORMAT  (offset 0x0000, size 1219 bytes)
;-----------------------------------------------------------------------
FORMAT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        call    L_0909                          ; E8 DA 08
        call    L_089A                          ; E8 68 08
        mov     word ptr [0x100], ax            ; A3 00 01
        mov     al, byte ptr [bp + 0x12]        ; 8A 46 12
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08C4                          ; E8 86 08
        mov     byte ptr [bp + 0x12], al        ; 88 46 12
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08C4                          ; E8 7A 08
        mov     byte ptr [bp + 0x10], al        ; 88 46 10
        mov     al, byte ptr [bp + 0x12]        ; 8A 46 12
        cmp     byte ptr [bp + 0x10], al        ; 38 46 10
        jne     L_005B                          ; 75 06
        mov     ax, 7                           ; B8 07 00
        jmp     L_04B6                          ; E9 5B 04
L_005B:
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 97 01 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0079                          ; 75 08
L_0071:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        jmp     L_0461                          ; E9 E8 03
L_0079:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALLOCK           ; 9A A7 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        or      ax, dx                          ; 0B C2
        je      L_0071                          ; 74 E6
        cmp     word ptr [0x100], 0x314         ; 81 3E 00 01 14 03
        jb      L_00C6                          ; 72 33
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 0x10e                       ; B8 0E 01
        push    ax                              ; 50
        call    L_08A1                          ; E8 01 08
        mov     word ptr [bp - 0x12], 0x115     ; C7 46 EE 15 01
        mov     al, byte ptr [0x11a]            ; A0 1A 01
        sub     ah, ah                          ; 2A E4
        mul     word ptr [0x120]                ; F7 26 20 01
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [0x117]            ; A0 17 01
        sub     ah, ah                          ; 2A E4
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x11d]            ; A1 1D 01
        sub     dx, dx                          ; 2B D2
        div     bx                              ; F7 F3
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [0x118]            ; 2B 06 18 01
        jmp     L_0116                          ; EB 50
L_00C6:
        mov     al, byte ptr [bp + 0xe]         ; 8A 46 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0A6B                          ; E8 9C 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jl      L_00DD                          ; 7C 09
        or      ax, ax                          ; 0B C0
        jle     L_00E5                          ; 7E 0D
        cmp     ax, 1                           ; 3D 01 00
        je      L_014C                          ; 74 6F
L_00DD:
        mov     word ptr [bp - 0x14], 8         ; C7 46 EC 08 00
        jmp     L_0461                          ; E9 7C 03
L_00E5:
        mov     word ptr [bp - 0x12], 0x39      ; C7 46 EE 39 00
        mov     ax, word ptr [0x78]             ; A1 78 00
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     al, byte ptr [bp + 0xe]         ; 8A 46 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x46]                 ; FF 36 46 00
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_09A8                          ; E8 9E 08
        or      ax, ax                          ; 0B C0
        je      L_0119                          ; 74 0B
        mov     word ptr [bp - 0x12], 0x26      ; C7 46 EE 26 00
        mov     ax, word ptr [0x76]             ; A1 76 00
L_0116:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
L_0119:
        call    L_088C                          ; E8 70 07
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        mov     di, 0x102                       ; BF 02 01
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        movsb   byte ptr es:[di], byte ptr [si] ; A4
        pop     ds                              ; 1F
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     si, word ptr [bp - 0x12]        ; 8B 76 EE
        mov     al, byte ptr [si + 0xd]         ; 8A 44 0D
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        mov     bx, si                          ; 8B DE
        cmp     word ptr [bx + 0xd], 0xf        ; 83 7F 0D 0F
        jne     L_0156                          ; 75 0E
        mov     al, 0x54                        ; B0 54
        jmp     L_0158                          ; EB 0C
L_014C:
        mov     word ptr [bp - 0x12], 0x4c      ; C7 46 EE 4C 00
        mov     ax, word ptr [0x7a]             ; A1 7A 00
        jmp     L_0116                          ; EB C0
L_0156:
        mov     al, 0x50                        ; B0 50
L_0158:
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        cmp     byte ptr [bx + 0xa], 0xf9       ; 80 7F 0A F9
        jne     L_017B                          ; 75 13
        cmp     word ptr [bx + 0xd], 0xf        ; 83 7F 0D 0F
        jne     L_017B                          ; 75 0D
        mov     al, byte ptr [bp + 0xe]         ; 8A 46 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_0879                          ; E8 FE 06
L_017B:
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     ax, 9                           ; 05 09 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_01A5                          ; 75 03
        jmp     L_0071                          ; E9 CC FE
L_01A5:
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     word ptr [bp - 0x28], dx        ; 89 56 D8
        or      ax, dx                          ; 0B C2
        jne     L_01B8                          ; 75 03
        jmp     L_0071                          ; E9 B9 FE
L_01B8:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        sub     dx, dx                          ; 2B D2
        div     word ptr [bx + 0xd]             ; F7 77 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bx + 0x11]        ; 8B 47 11
        sub     dx, dx                          ; 2B D2
        div     word ptr [bx + 0xd]             ; F7 77 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bx + 0x11]        ; 8B 47 11
        sub     dx, dx                          ; 2B D2
        div     word ptr [bx + 0xd]             ; F7 77 0D
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        mov     si, word ptr [bx]               ; 8B 37
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        sub     ah, ah                          ; 2A E4
        mul     word ptr [bx + 0xb]             ; F7 67 0B
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     dx, cx                          ; 8B D1
        mov     cl, 5                           ; B1 05
        shl     ax, cl                          ; D3 E0
        add     ax, si                          ; 03 C6
        dec     ax                              ; 48
        mov     cx, dx                          ; 8B CA
        sub     dx, dx                          ; 2B D2
        div     si                              ; F7 F6
        add     cx, ax                          ; 03 C8
        add     cx, word ptr [bx + 3]           ; 03 4F 03
        mov     word ptr [bp - 4], cx           ; 89 4E FC
        mov     word ptr [bp - 0x14], 9         ; C7 46 EC 09 00
        jmp     L_02CE                          ; E9 C4 00
L_020A:
        mov     al, byte ptr [bp + 0xe]         ; 8A 46 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        push    word ptr [bx + 0xd]             ; FF 77 0D
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_09A8                          ; E8 83 07
        or      ax, ax                          ; 0B C0
        jne     L_022C                          ; 75 03
        jmp     L_02AF                          ; E9 83 00
L_022C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0244                          ; 74 10
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        lcall   [bp + 6]                        ; FF 5E 06
        or      ax, ax                          ; 0B C0
        jne     L_0244                          ; 75 03
        jmp     L_0461                          ; E9 1D 02
L_0244:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [bx + 0xd]         ; 8B 47 0D
        mul     word ptr [bp - 0x10]            ; F7 66 F0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jae     L_0263                          ; 73 08
        mov     word ptr [bp - 0x14], 4         ; C7 46 EC 04 00
        jmp     L_0461                          ; E9 FE 01
L_0263:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        jmp     L_02A1                          ; EB 36
L_026B:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        sub     ah, ah                          ; 2A E4
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sub     dx, dx                          ; 2B D2
        div     cx                              ; F7 F1
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     dx, dx                          ; 2B D2
        mov     cx, 8                           ; B9 08 00
        div     cx                              ; F7 F1
        mov     cx, dx                          ; 8B CA
        mov     al, 1                           ; B0 01
        shl     al, cl                          ; D2 E0
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     cl, 3                           ; B1 03
        shr     bx, cl                          ; D3 EB
        les     si, ptr [bp - 0x2a]             ; C4 76 D6
        or      byte ptr es:[bx + si], al       ; 26 08 00
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_02A1:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [bx + 0xd]         ; 8B 47 0D
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        ja      L_026B                          ; 77 BC
L_02AF:
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        cmp     word ptr [bx + 0xf], ax         ; 39 47 0F
        ja      L_02E3                          ; 77 23
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_02E3                          ; 74 15
L_02CE:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_02E3                          ; 74 0D
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lcall   [bp + 6]                        ; FF 5E 06
        or      ax, ax                          ; 0B C0
        jne     L_02E3                          ; 75 03
        jmp     L_0461                          ; E9 7E 01
L_02E3:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_02EC                          ; 74 03
        jmp     L_020A                          ; E9 1E FF
L_02EC:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     al, byte ptr [bp + 0x12]        ; 8A 46 12
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_0BB2                          ; E8 AB 08
        inc     ax                              ; 40
        jne     L_030F                          ; 75 05
        mov     word ptr [bp - 0x14], 3         ; C7 46 EC 03 00
L_030F:
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        call    L_090E                          ; E8 EF 05
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_0C49                          ; E8 23 09
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     al, byte ptr [bx + 0xa]         ; 8A 47 0A
        sub     ah, ah                          ; 2A E4
        add     ah, 0xff                        ; 80 C4 FF
        push    ax                              ; 50
        call    L_0D46                          ; E8 04 0A
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0361                          ; 74 1A
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        call    L_0D46                          ; E8 EA 09
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0369                          ; 75 08
L_0361:
        mov     word ptr [bp - 0x14], 7         ; C7 46 EC 07 00
        jmp     L_0461                          ; E9 F8 00
L_0369:
        mov     word ptr [bp - 0x16], 2         ; C7 46 EA 02 00
        jmp     L_03B4                          ; EB 44
L_0370:
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     dx, dx                          ; 2B D2
        mov     cx, 8                           ; B9 08 00
        div     cx                              ; F7 F1
        mov     cx, dx                          ; 8B CA
        mov     ax, 1                           ; B8 01 00
        shl     ax, cl                          ; D3 E0
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     cl, 3                           ; B1 03
        shr     bx, cl                          ; D3 EB
        les     si, ptr [bp - 0x2a]             ; C4 76 D6
        mov     cl, byte ptr es:[bx + si]       ; 26 8A 08
        sub     ch, ch                          ; 2A ED
        test    ax, cx                          ; 85 C8
        je      L_03A6                          ; 74 05
        mov     ax, 0xfff7                      ; B8 F7 FF
        jmp     L_03A8                          ; EB 02
L_03A6:
        sub     ax, ax                          ; 2B C0
L_03A8:
        push    ax                              ; 50
        call    L_0D46                          ; E8 9A 09
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0361                          ; 74 B0
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_03B4:
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        ja      L_0370                          ; 77 B2
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_0C60                          ; E8 95 08
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0361                          ; 74 91
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        jmp     L_03F0                          ; EB 0D
L_03E3:
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_03F0:
        cmp     word ptr [bp - 0x16], 0x200     ; 81 7E EA 00 02
        jb      L_03E3                          ; 72 EC
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_0422                          ; EB 24
L_03FE:
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     ax, word ptr [0xf0]             ; 03 06 F0 00
        push    ax                              ; 50
        call    L_0980                          ; E8 67 05
        inc     ax                              ; 40
        jne     L_041F                          ; 75 03
        jmp     L_0361                          ; E9 42 FF
L_041F:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_0422:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     cl, 5                           ; B1 05
        shl     ax, cl                          ; D3 E0
        add     ax, si                          ; 03 C6
        dec     ax                              ; 48
        sub     dx, dx                          ; 2B D2
        div     si                              ; F7 F6
        cmp     ax, word ptr [bp - 0x16]        ; 3B 46 EA
        ja      L_03FE                          ; 77 C4
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_0461                          ; 74 1F
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    L_0B24                          ; E8 C9 06
        inc     ax                              ; 40
        jne     L_0461                          ; 75 03
        jmp     L_0361                          ; E9 00 FF
L_0461:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        or      ax, word ptr [bp - 0x24]        ; 0B 46 DC
        je      L_0477                          ; 74 0E
        les     bx, ptr [bp - 0x26]             ; C4 5E DA
        mov     di, bx                          ; 8B FB
        mov     si, 0x102                       ; BE 02 01
        mov     cx, 5                           ; B9 05 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        movsb   byte ptr es:[di], byte ptr [si] ; A4
L_0477:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        or      ax, word ptr [bp - 0x20]        ; 0B 46 E0
        je      L_0487                          ; 74 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALUNLOCK         ; 9A A1 04 00 00 [FIXUP]
L_0487:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0495                          ; 74 08
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALFREE           ; 9A AF 04 00 00 [FIXUP]
L_0495:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        or      ax, word ptr [bp - 0x28]        ; 0B 46 D8
        je      L_04A5                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_04A5:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_04B3                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_04B3:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
L_04B6:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
FORMAT ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; SYS -- 328 instr
; Dispatcher: tabla de decisiones cmp+jcc (328 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_0807, sub_08C4, sub_08F3, sub_092E, sub_0958, sub_0A6B (+10 mas)
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; SYS  (offset 0x04C3, size 836 bytes)
;-----------------------------------------------------------------------
SYS PROC FAR
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
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08C4                          ; E8 D7 03
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08C4                          ; E8 CB 03
        mov     byte ptr [bp + 6], al           ; 88 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_0A6B                          ; E8 69 05
        mov     word ptr [bp - 4], 0xfff0       ; C7 46 FC F0 FF
L_0507:
        mov     ax, 0x60                        ; B8 60 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALALLOC          ; 9A 66 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0526                          ; 75 09
        shr     word ptr [bp - 4], 1            ; D1 6E FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0507                          ; 75 E1
L_0526:
        cmp     word ptr [bp - 4], 0x400        ; 81 7E FC 00 04
        jb      L_053F                          ; 72 12
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A 7D 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        or      ax, dx                          ; 0B C2
        jne     L_0547                          ; 75 08
L_053F:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        jmp     L_07D9                          ; E9 92 02
L_0547:
        sub     si, si                          ; 2B F6
L_0549:
        cmp     si, 3                           ; 83 FE 03
        jge     L_05A6                          ; 7D 58
        mov     ax, 0xac                        ; B8 AC 00
        push    ax                              ; 50
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_12B8                          ; E8 5F 0D
        add     sp, 4                           ; 83 C4 04
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xa2]            ; FF B7 A2 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_1289                          ; E8 1E 0D
        add     sp, 4                           ; 83 C4 04
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        add     byte ptr [0xb4], al             ; 00 06 B4 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0E84                          ; E8 05 09
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0590                          ; 75 09
        lea     ax, [si + 0x64]                 ; 8D 44 64
L_058A:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_07D9                          ; E9 49 02
L_0590:
        or      si, si                          ; 0B F6
        jne     L_059D                          ; 75 09
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_104E                          ; E8 B4 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_059D:
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_0FB4                          ; E8 11 0A
        inc     si                              ; 46
        jmp     L_0549                          ; EB A3
L_05A6:
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    L_0BB2                          ; E8 F6 05
        or      ax, ax                          ; 0B C0
        je      L_05C8                          ; 74 08
        mov     word ptr [bp - 0x14], 3         ; C7 46 EC 03 00
        jmp     L_07D9                          ; E9 11 02
L_05C8:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        call    L_092E                          ; E8 58 03
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_05E0                          ; 74 03
        jmp     L_07D9                          ; E9 F9 01
L_05E0:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        inc     ax                              ; 40
        push    ax                              ; 50
        call    L_08F3                          ; E8 09 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_05FA                          ; 75 08
        mov     word ptr [bp - 0x14], 2         ; C7 46 EC 02 00
        jmp     L_07D9                          ; E9 DF 01
L_05FA:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        dec     ax                              ; 48
        sub     dx, dx                          ; 2B D2
        div     word ptr [bp - 6]               ; F7 76 FA
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0xf0]                 ; FF 36 F0 00
        call    L_0958                          ; E8 38 03
        inc     ax                              ; 40
        jne     L_062B                          ; 75 08
        mov     word ptr [bp - 0x14], 7         ; C7 46 EC 07 00
        jmp     L_07D9                          ; E9 AE 01
L_062B:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0C49                          ; E8 17 06
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x20], al        ; 88 46 E0
        or      al, al                          ; 0A C0
        je      L_0643                          ; 74 04
        cmp     al, 0xe5                        ; 3C E5
        jne     L_0678                          ; 75 35
L_0643:
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        cmp     byte ptr es:[bx + 0x20], 0      ; 26 80 7F 20 00
        je      L_0654                          ; 74 07
        cmp     byte ptr es:[bx + 0x20], 0xe5   ; 26 80 7F 20 E5
        jne     L_0678                          ; 75 24
L_0654:
        sub     si, si                          ; 2B F6
L_0656:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        ja      L_0660                          ; 77 03
        jmp     L_0726                          ; E9 C6 00
L_0660:
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        call    L_0CDC                          ; E8 6B 06
        or      ax, ax                          ; 0B C0
        jne     L_06A5                          ; 75 30
        inc     si                              ; 46
        jmp     L_0656                          ; EB DE
L_0678:
        push    word ptr [0xa2]                 ; FF 36 A2 00
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    L_0807                          ; E8 82 01
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        jne     L_06A5                          ; 75 19
        push    word ptr [0xa4]                 ; FF 36 A4 00
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        add     ax, 0x20                        ; 05 20 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0807                          ; E8 69 01
        add     sp, 6                           ; 83 C4 06
        or      ax, ax                          ; 0B C0
        je      L_06AD                          ; 74 08
L_06A5:
        mov     word ptr [bp - 0x14], 5         ; C7 46 EC 05 00
        jmp     L_07D9                          ; E9 2C 01
L_06AD:
        les     bx, ptr [bp - 0x1e]             ; C4 5E E2
        mov     ax, word ptr es:[bx + 0x1a]     ; 26 8B 47 1A
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        sub     si, si                          ; 2B F6
L_06C0:
        mov     ax, si                          ; 8B C6
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jbe     L_0726                          ; 76 5F
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_06D3:
        lea     ax, [si + 2]                    ; 8D 44 02
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 8], di           ; 39 7E F8
        je      L_06E2                          ; 74 05
        cmp     word ptr [bp - 0xa], di         ; 39 7E F6
        jne     L_06E5                          ; 75 03
L_06E2:
        inc     si                              ; 46
        jmp     L_06C0                          ; EB DB
L_06E5:
        cmp     word ptr [bp - 8], -1           ; 83 7E F8 FF
        je      L_06FE                          ; 74 13
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0CDC                          ; E8 E1 05
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_06FE:
        cmp     word ptr [bp - 0xa], -1         ; 83 7E F6 FF
        je      L_0717                          ; 74 13
        mov     ax, 0xe0                        ; B8 E0 00
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0CDC                          ; E8 C8 05
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0717:
        cmp     word ptr [bp - 8], -1           ; 83 7E F8 FF
        jne     L_06D3                          ; 75 B6
        cmp     word ptr [bp - 0xa], -1         ; 83 7E F6 FF
        jne     L_06D3                          ; 75 B0
        jmp     L_06A5                          ; E9 7F FF
L_0726:
        sub     si, si                          ; 2B F6
L_0728:
        mov     ax, 0xac                        ; B8 AC 00
        push    ax                              ; 50
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_12B8                          ; E8 85 0B
        add     sp, 4                           ; 83 C4 04
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xa2]            ; FF B7 A2 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_1289                          ; E8 44 0B
        add     sp, 4                           ; 83 C4 04
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        add     byte ptr [0xb4], al             ; 00 06 B4 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_0F16                          ; E8 C0 07
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_0728                          ; 7C CC
        sub     si, si                          ; 2B F6
L_075E:
        cmp     si, 3                           ; 83 FE 03
        jge     L_07D9                          ; 7D 76
        mov     ax, 0xac                        ; B8 AC 00
        push    ax                              ; 50
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_12B8                          ; E8 4A 0B
        add     sp, 4                           ; 83 C4 04
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xa2]            ; FF B7 A2 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        call    L_1289                          ; E8 09 0B
        add     sp, 4                           ; 83 C4 04
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        add     byte ptr [0xb4], al             ; 00 06 B4 00
        mov     ax, 0xac                        ; B8 AC 00
        push    ax                              ; 50
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        call    L_12B8                          ; E8 23 0B
        add     sp, 4                           ; 83 C4 04
        mov     bx, si                          ; 8B DE
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0xa2]            ; FF B7 A2 00
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        call    L_1289                          ; E8 E2 0A
        add     sp, 4                           ; 83 C4 04
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        add     byte ptr [0xc4], al             ; 00 06 C4 00
        mov     ax, 0xb4                        ; B8 B4 00
        push    ax                              ; 50
        mov     ax, 0xc4                        ; B8 C4 00
        push    ax                              ; 50
        mov     al, byte ptr [si + 0xa8]        ; 8A 84 A8 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0FD0                          ; E8 04 08
        or      ax, ax                          ; 0B C0
        je      L_07D6                          ; 74 06
        lea     ax, [si + 0x78]                 ; 8D 44 78
        jmp     L_058A                          ; E9 B4 FD
L_07D6:
        inc     si                              ; 46
        jmp     L_075E                          ; EB 85
L_07D9:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        or      ax, word ptr [bp - 0x1c]        ; 0B 46 E4
        je      L_07E9                          ; 74 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 83 04 00 00 [FIXUP]
L_07E9:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_07F7                          ; 74 08
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALFREE           ; 9A 91 04 00 00 [FIXUP]
L_07F7:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SYS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0807 -- offset 0x0807 -- 43 instr
; Dispatcher: tabla de decisiones cmp+jcc (43 instr).
; tags: dispatcher
; callers: SYS
;----------------------------------------------------------------------

L_0807:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0812:
        cmp     word ptr [bp - 4], 0xb          ; 83 7E FC 0B
        jge     L_0863                          ; 7D 4B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_085B                          ; 75 28
        jmp     L_084A                          ; EB 15
L_0835:
        cmp     word ptr [bp - 4], 0xb          ; 83 7E FC 0B
        jge     L_0850                          ; 7D 15
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
L_084A:
        cmp     byte ptr [bp - 2], 0x20         ; 80 7E FE 20
        je      L_0835                          ; 74 E5
L_0850:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
L_085B:
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        cmp     byte ptr [bp - 2], al           ; 38 46 FE
        je      L_086E                          ; 74 0B
L_0863:
        cmp     word ptr [bp - 4], 0xb          ; 83 7E FC 0B
        je      L_0873                          ; 74 0A
        mov     ax, 1                           ; B8 01 00
        jmp     L_0875                          ; EB 07
L_086E:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0812                          ; EB 9F
L_0873:
        sub     ax, ax                          ; 2B C0
L_0875:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0879 -- offset 0x0879 -- 9 instr
; Funcion sin clasificar definitiva (9 instr).
; tags: bios_caller, int_13
; callers: FORMAT
;----------------------------------------------------------------------
L_0879:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ah, 0x17                        ; B4 17
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        int     0x13                            ; CD 13
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_088C -- offset 0x088C -- 7 instr
; Funcion hoja (no llama a otras, 7 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: FORMAT
;----------------------------------------------------------------------
L_088C:
        push    ds                              ; 1E
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x78]             ; A1 78 00
        mov     dx, word ptr [0x7a]             ; 8B 16 7A 00
        pop     ds                              ; 1F
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_089A -- offset 0x089A -- 4 instr
; Llama a servicios DOS via INT 21h (4 instr).
; tags: dos_caller, int_21
; callers: FORMAT
;----------------------------------------------------------------------
L_089A:
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        xchg    al, ah                          ; 86 E0
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08A1 -- offset 0x08A1 -- 17 instr
; Llama a servicios DOS via INT 21h (17 instr).
; tags: dos_caller, int_11, int_21
; callers: FORMAT
;----------------------------------------------------------------------
L_08A1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ax, 0x440d                      ; B8 0D 44
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        inc     bx                              ; 43
        mov     cx, 0x860                       ; B9 60 08
        int     0x21                            ; CD 21
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        int     0x11                            ; CD 11
        rol     al, 1                           ; D0 C0
        rol     al, 1                           ; D0 C0
        and     ax, 3                           ; 25 03 00
        inc     ax                              ; 40
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08C4 -- offset 0x08C4 -- 12 instr
; Llama a servicios DOS via INT 21h (12 instr).
; tags: dos_caller, int_21
; callers: FORMAT, SYS, sub_0A6B
;----------------------------------------------------------------------
L_08C4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        xor     ax, ax                          ; 33 C0
        or      al, byte ptr [bp + 4]           ; 0A 46 04
        jne     L_08D3                          ; 75 05
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        inc     ax                              ; 40
L_08D3:
        dec     ax                              ; 48
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08DA -- offset 0x08DA -- 4 instr
; Llama a servicios DOS via INT 21h (4 instr).
; tags: dos_caller, int_21
; callers: sub_0D46
;----------------------------------------------------------------------
L_08DA:
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        xor     ah, ah                          ; 32 E4
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08E1 -- offset 0x08E1 -- 9 instr
; Llama a servicios DOS via INT 21h (9 instr).
; tags: dos_caller, int_21
; callers: sub_0D46
;----------------------------------------------------------------------
L_08E1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dl, byte ptr [bp + 4]           ; 8A 56 04
        mov     ah, 0xe                         ; B4 0E
        int     0x21                            ; CD 21
        xor     ah, ah                          ; 32 E4
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08F3 -- offset 0x08F3 -- 12 instr
; Llama a servicios DOS via INT 21h (12 instr).
; tags: dos_caller, int_21
; callers: SYS
;----------------------------------------------------------------------
L_08F3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ah, 0x36                        ; B4 36
        mov     dl, byte ptr [bp + 4]           ; 8A 56 04
        int     0x21                            ; CD 21
        inc     ax                              ; 40
        je      L_0903                          ; 74 03
        dec     ax                              ; 48
        mul     cx                              ; F7 E1
L_0903:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0909 -- offset 0x0909 -- 3 instr
; Llama a servicios DOS via INT 21h (3 instr).
; tags: int_21, trivial_stub
; callers: FORMAT
;----------------------------------------------------------------------
L_0909:
        mov     ah, 0xd                         ; B4 0D
        int     0x21                            ; CD 21
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_090E -- offset 0x090E -- 17 instr
; Llama a servicios DOS via INT 21h (17 instr).
; tags: dos_caller, int_21
; callers: FORMAT
;----------------------------------------------------------------------
L_090E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cl, byte ptr [bp + 8]           ; 8A 4E 08
        push    bp                              ; 55
        mov     bp, word ptr [bp + 4]           ; 8B 6E 04
        mov     byte ptr es:[bp], cl            ; 26 88 4E 00
        mov     ah, 0x53                        ; B4 53
        int     0x21                            ; CD 21
        pop     bp                              ; 5D
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_092E -- offset 0x092E -- 24 instr
; Llama a servicios DOS via INT 21h (24 instr).
; tags: dos_caller, int_21
; callers: SYS
;----------------------------------------------------------------------
L_092E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, ds                          ; 8C D9
        mov     ah, 0x32                        ; B4 32
        mov     dl, byte ptr [bp + 6]           ; 8A 56 06
        int     0x21                            ; CD 21
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        jne     L_094F                          ; 75 0D
        mov     si, bx                          ; 8B F3
        mov     es, cx                          ; 8E C1
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     cx, 0x20                        ; B9 20 00
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
L_094F:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0958 -- offset 0x0958 -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: int_25, small
; callers: SYS, sub_0B24, sub_0BB2, sub_0CDC, sub_0D46
;----------------------------------------------------------------------
L_0958:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        lds     bx, ptr [bp + 8]                ; C5 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        push    bp                              ; 55
        int     0x25                            ; CD 25
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        mov     dx, ax                          ; 8B D0
        mov     ax, 0                           ; B8 00 00
        sbb     ax, 0                           ; 1D 00 00
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0980 -- offset 0x0980 -- 22 instr
; Funcion sin clasificar definitiva (22 instr).
; tags: int_26, small
; callers: FORMAT, sub_0B24, sub_0BB2, sub_0C60
;----------------------------------------------------------------------
L_0980:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        lds     bx, ptr [bp + 8]                ; C5 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        push    bp                              ; 55
        int     0x26                            ; CD 26
        pop     bx                              ; 5B
        pop     bp                              ; 5D
        mov     dx, ax                          ; 8B D0
        mov     ax, 0                           ; B8 00 00
        sbb     ax, 0                           ; 1D 00 00
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09A8 -- offset 0x09A8 -- 85 instr
; Iterador con instrucciones de string (movsb/scasb/...) (85 instr).
; tags: complex_iterator, int_13, loop, string_op
; callers: FORMAT
;----------------------------------------------------------------------
L_09A8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        les     di, ptr [bp + 4]                ; C4 7E 04
        cld                                     ; FC
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp + 8]           ; 8A 4E 08
        push    ds                              ; 1E
        push    cx                              ; 51
        mov     ax, 0x60                        ; B8 60 00
        mov     ds, ax                          ; 8E D8
        xor     si, si                          ; 33 F6
        shl     cx, 1                           ; D1 E1
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        pop     cx                              ; 59
        pop     ds                              ; 1F
        xor     di, di                          ; 33 FF
        mov     es, ax                          ; 8E C0
        mov     word ptr [bp - 4], di           ; 89 7E FC
        mov     word ptr [bp - 2], es           ; 8C 46 FE
        mov     bx, 0x200                       ; BB 00 02
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
L_09DC:
        stosw   word ptr es:[di], ax            ; AB
        inc     bl                              ; FE C3
        xchg    bx, ax                          ; 93
        stosw   word ptr es:[di], ax            ; AB
        xchg    bx, ax                          ; 93
        loop    L_09DC                          ; E2 F8
        xor     si, si                          ; 33 F6
        mov     ds, si                          ; 8E DE
        lds     si, ptr [0x78]                  ; C5 36 78 00
        mov     ah, byte ptr [si + 4]           ; 8A 64 04
        mov     byte ptr [bp - 7], ah           ; 88 66 F9
        mov     byte ptr [si + 4], bl           ; 88 5C 04
        mov     ah, byte ptr [si + 7]           ; 8A 64 07
        mov     byte ptr [bp - 8], ah           ; 88 66 F8
        mov     ah, 0x50                        ; B4 50
        cmp     bl, 0xf                         ; 80 FB 0F
        jne     L_0A04                          ; 75 02
        mov     ah, 0x54                        ; B4 54
L_0A04:
        mov     byte ptr [si + 7], ah           ; 88 64 07
        mov     byte ptr [bp - 6], 4            ; C6 46 FA 04
L_0A0B:
        mov     ah, 5                           ; B4 05
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ch, byte ptr [bp + 0xc]         ; 8A 6E 0C
        mov     cl, 1                           ; B1 01
        mov     dl, byte ptr [bp + 0xe]         ; 8A 56 0E
        mov     dh, byte ptr [bp + 0xa]         ; 8A 76 0A
        int     0x13                            ; CD 13
        mov     ax, 0                           ; B8 00 00
        jb      L_0A3F                          ; 72 1A
        mov     ah, 4                           ; B4 04
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ch, byte ptr [bp + 0xc]         ; 8A 6E 0C
        mov     cl, 1                           ; B1 01
        mov     dl, byte ptr [bp + 0xe]         ; 8A 56 0E
        mov     dh, byte ptr [bp + 0xa]         ; 8A 76 0A
        int     0x13                            ; CD 13
        mov     ax, 0                           ; B8 00 00
        jae     L_0A47                          ; 73 08
L_0A3F:
        dec     byte ptr [bp - 6]               ; FE 4E FA
        jne     L_0A0B                          ; 75 C7
        mov     ax, 0xffff                      ; B8 FF FF
L_0A47:
        mov     bl, byte ptr [bp - 7]           ; 8A 5E F9
        mov     byte ptr [si + 4], bl           ; 88 5C 04
        mov     bl, byte ptr [bp - 8]           ; 8A 5E F8
        mov     byte ptr [si + 7], bl           ; 88 5C 07
        lds     si, ptr [bp + 4]                ; C5 76 04
        les     di, ptr [bp - 4]                ; C4 7E FC
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr [bp + 8]           ; 8A 4E 08
        shl     cx, 1                           ; D1 E1
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A6B -- offset 0x0A6B -- 91 instr
; Llama a servicios DOS via INT 21h (91 instr).
; tags: complex_iterator, int_13, int_21, loop, string_op
; callers: FORMAT, SYS
; calls (intra): sub_08C4
;----------------------------------------------------------------------
L_0A6B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dl, byte ptr [bp + 4]           ; 8A 56 04
        mov     ax, 0x15ff                      ; B8 FF 15
        int     0x13                            ; CD 13
        cmp     ah, 1                           ; 80 FC 01
        jb      L_0A99                          ; 72 1E
        je      L_0A9E                          ; 74 21
        cmp     ah, 3                           ; 80 FC 03
        jae     L_0A99                          ; 73 17
L_0A82:
        mov     ah, 0x17                        ; B4 17
        mov     dl, byte ptr [bp + 4]           ; 8A 56 04
        mov     al, 3                           ; B0 03
        int     0x13                            ; CD 13
        jae     L_0A94                          ; 73 07
        cmp     ah, 6                           ; 80 FC 06
        jne     L_0A99                          ; 75 07
        jmp     L_0A82                          ; EB EE
L_0A94:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0AA6                          ; EB 0D
L_0A99:
        mov     ax, 2                           ; B8 02 00
        jmp     L_0AA6                          ; EB 08
L_0A9E:
        mov     ax, 0                           ; B8 00 00
        jmp     L_0AA6                          ; EB 03
        mov     ax, 0xffff                      ; B8 FF FF
L_0AA6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x54                        ; 83 EC 54
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        lea     di, [bp - 0x2a]                 ; 8D 7E D6
        mov     dx, di                          ; 8B D7
        lea     di, [di + 8]                    ; 8D 7D 08
        mov     byte ptr [di], 0                ; C6 05 00
        push    di                              ; 57
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_08C4                          ; E8 F7 FD
        push    ss                              ; 16
        pop     es                              ; 07
        lea     di, [bp - 0x54]                 ; 8D 7E AC
        mov     dx, di                          ; 8B D7
        mov     byte ptr es:[di], 0xff          ; 26 C6 05 FF
        mov     byte ptr es:[di + 6], 8         ; 26 C6 45 06 08
        add     di, 7                           ; 83 C7 07
        cld                                     ; FC
        inc     al                              ; FE C0
        stosb   byte ptr es:[di], al            ; AA
        mov     al, 0x3f                        ; B0 3F
        xor     cx, cx                          ; 33 C9
        mov     cl, 0xb                         ; B1 0B
        rep stosb byte ptr es:[di], al          ; F3 AA
        mov     ah, 0x11                        ; B4 11
        int     0x21                            ; CD 21
        pop     si                              ; 5E
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        pop     es                              ; 07
        cld                                     ; FC
        xor     bx, bx                          ; 33 DB
        mov     cx, 0xb                         ; B9 0B 00
L_0AFB:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, 0x20                        ; 3C 20
        je      L_0B02                          ; 74 02
        mov     bx, di                          ; 8B DF
L_0B02:
        stosb   byte ptr es:[di], al            ; AA
        or      al, al                          ; 0A C0
        je      L_0B14                          ; 74 0D
        loop    L_0AFB                          ; E2 F2
        xor     ax, ax                          ; 33 C0
        stosb   byte ptr es:[di], al            ; AA
        or      bx, bx                          ; 0B DB
        je      L_0B14                          ; 74 04
        lea     di, [bx + 1]                    ; 8D 7F 01
        stosb   byte ptr es:[di], al            ; AA
L_0B14:
        push    es                              ; 06
        pop     ds                              ; 1F
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        dec     ax                              ; 48
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B24 -- offset 0x0B24 -- 71 instr
; Llama a servicios DOS via INT 21h (71 instr).
; tags: complex_iterator, int_21, loop, string_op
; callers: FORMAT
; calls (intra): sub_0958, sub_0980
;----------------------------------------------------------------------
L_0B24:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     ax, 1                           ; B8 01 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    word ptr [bx + 0x10]            ; FF 77 10
        call    L_0958                          ; E8 19 FE
        jne     L_0BAA                          ; 75 69
        mov     al, 0xe5                        ; B0 E5
        cld                                     ; FC
        les     di, ptr [bp + 4]                ; C4 7E 04
        stosb   byte ptr es:[di], al            ; AA
        add     di, 0x1f                        ; 83 C7 1F
        stosb   byte ptr es:[di], al            ; AA
        add     di, 0x1f                        ; 83 C7 1F
        push    ds                              ; 1E
        lds     si, ptr [bp + 8]                ; C5 76 08
        mov     cx, 0xb                         ; B9 0B 00
L_0B56:
        lodsb   al, byte ptr [si]               ; AC
        or      al, al                          ; 0A C0
        je      L_0B5E                          ; 74 03
        stosb   byte ptr es:[di], al            ; AA
        loop    L_0B56                          ; E2 F8
L_0B5E:
        jcxz    L_0B64                          ; E3 04
        mov     al, 0x20                        ; B0 20
        rep stosb byte ptr es:[di], al          ; F3 AA
L_0B64:
        pop     ds                              ; 1F
        mov     al, 8                           ; B0 08
        stosb   byte ptr es:[di], al            ; AA
        add     di, 0xa                         ; 83 C7 0A
        mov     ah, 0x2c                        ; B4 2C
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        shl     al, 1                           ; D0 E0
        shl     al, 1                           ; D0 E0
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        or      al, dh                          ; 0A C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ah, 0x2a                        ; B4 2A
        int     0x21                            ; CD 21
        sub     cx, 0x7bc                       ; 81 E9 BC 07
        mov     ah, cl                          ; 8A E1
        mov     cl, 4                           ; B1 04
        shl     dh, cl                          ; D2 E6
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        or      al, dl                          ; 0A C2
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        inc     ax                              ; 40
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    word ptr [bx + 0x10]            ; FF 77 10
        call    L_0980                          ; E8 D6 FD
L_0BAA:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BB2 -- offset 0x0BB2 -- 55 instr
; Llama a servicios DOS via INT 21h (55 instr).
; tags: dos_caller, int_21
; callers: FORMAT, SYS
; calls (intra): sub_0958, sub_0980
;----------------------------------------------------------------------
L_0BB2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        xor     bx, bx                          ; 33 DB
        lea     ax, [bx + 1]                    ; 8D 47 01
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    ax                              ; 50
        push    bx                              ; 53
        call    L_0958                          ; E8 8E FD
        jne     L_0C24                          ; 75 58
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        or      si, si                          ; 0B F6
        jne     L_0BF9                          ; 75 26
        mov     ah, 0x36                        ; B4 36
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        inc     dl                              ; FE C2
        int     0x21                            ; CD 21
        inc     ax                              ; 40
        je      L_0BF4                          ; 74 15
        mov     si, 0                           ; BE 00 00
        mov     bx, 0x72                        ; BB 72 00
L_0BE5:
        mov     cx, word ptr [bx]               ; 8B 0F
        jcxz    L_0BF4                          ; E3 0B
        cmp     cx, dx                          ; 3B CA
        je      L_0BF9                          ; 74 0C
        add     si, 0x13                        ; 83 C6 13
        inc     bx                              ; 43
        inc     bx                              ; 43
        jmp     L_0BE5                          ; EB F1
L_0BF4:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0C24                          ; EB 2B
L_0BF9:
        les     di, ptr [bp + 4]                ; C4 7E 04
        lea     di, [di + 0xb]                  ; 8D 7D 0B
        mov     cx, 0x13                        ; B9 13 00
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     byte ptr es:[di + 0x1fd], al    ; 26 88 85 FD 01
        mov     byte ptr es:[di + 0x1e], al     ; 26 88 45 1E
        mov     bx, 1                           ; BB 01 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_0980                          ; E8 5C FD
L_0C24:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C2C -- offset 0x0C2C -- 12 instr
; Funcion hoja (no llama a otras, 12 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0CDC, sub_0D46
;----------------------------------------------------------------------
L_0C2C:
        xor     dx, dx                          ; 33 D2
        mov     ax, cx                          ; 8B C1
        cmp     word ptr [di + 0xd], 0xff6      ; 81 7D 0D F6 0F
        jb      L_0C3E                          ; 72 07
        shl     ax, 1                           ; D1 E0
        div     word ptr [di + 2]               ; F7 75 02
        jmp     L_0C45                          ; EB 07
L_0C3E:
        shr     ax, 1                           ; D1 E8
        add     ax, cx                          ; 03 C1
        div     word ptr [di + 2]               ; F7 75 02
L_0C45:
        add     ax, word ptr [di + 6]           ; 03 45 06
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C49 -- offset 0x0C49 -- 9 instr
; Funcion hoja (no llama a otras, 9 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: FORMAT, SYS
;----------------------------------------------------------------------
L_0C49:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0xb0], 0xffff         ; C7 06 B0 00 FF FF
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        and     al, 3                           ; 24 03
        mov     byte ptr [0xb2], al             ; A2 B2 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C60 -- offset 0x0C60 -- 61 instr
; Llama a servicios DOS via INT 21h (61 instr).
; tags: dos_caller, int_21
; callers: FORMAT, sub_0CDC, sub_0D46
; calls (intra): sub_0980
;----------------------------------------------------------------------
L_0C60:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [0xb0]             ; A1 B0 00
        inc     ax                              ; 40
        je      L_0CD4                          ; 74 66
        test    byte ptr [0xb2], 2              ; F6 06 B2 00 02
        je      L_0CD4                          ; 74 5F
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     byte ptr [bp - 1], al           ; 88 46 FF
        mov     si, word ptr [0xb0]             ; 8B 36 B0 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        xor     dx, dx                          ; 33 D2
        mov     dl, byte ptr [bx]               ; 8A 17
        mov     di, dx                          ; 8B FA
        mov     dl, 2                           ; B2 02
        push    bx                              ; 53
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    dx                              ; 52
        push    si                              ; 56
        call    L_0980                          ; E8 E8 FC
        pop     bx                              ; 5B
        jne     L_0CD4                          ; 75 39
        push    bx                              ; 53
        cmp     si, 1                           ; 83 FE 01
        jne     L_0CBE                          ; 75 1D
        cmp     byte ptr [bp - 1], 3            ; 80 7E FF 03
        jb      L_0CBE                          ; 72 17
        mov     cx, ds                          ; 8C D9
        mov     ah, 0x32                        ; B4 32
        mov     dx, di                          ; 8B D7
        inc     dx                              ; 42
        int     0x21                            ; CD 21
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     ds, cx                          ; 8E D9
        cwde                                    ; 98
        or      ax, ax                          ; 0B C0
        jne     L_0CBE                          ; 75 05
        mov     byte ptr es:[bx + 0x17], 0xff   ; 26 C6 47 17 FF
L_0CBE:
        pop     bx                              ; 5B
        xor     dx, dx                          ; 33 D2
        mov     dl, byte ptr [bx + 0xf]         ; 8A 57 0F
        add     si, dx                          ; 03 F2
        mov     dl, 2                           ; B2 02
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    dx                              ; 52
        push    si                              ; 56
        call    L_0980                          ; E8 AC FC
L_0CD4:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CDC -- offset 0x0CDC -- 47 instr
; Funcion mediana (47 instr, 3 calls).
; tags: medium
; callers: SYS
; calls (intra): sub_0958, sub_0C2C, sub_0C60
;----------------------------------------------------------------------
L_0CDC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        call    L_0C2C                          ; E8 42 FF
        mov     si, dx                          ; 8B F2
        cmp     word ptr [0xb0], ax             ; 39 06 B0 00
        je      L_0D19                          ; 74 27
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0C60                          ; E8 63 FF
        pop     cx                              ; 59
        jne     L_0D34                          ; 75 34
        mov     al, byte ptr [di]               ; 8A 05
        mov     dx, 2                           ; BA 02 00
        push    cx                              ; 51
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    dx                              ; 52
        push    cx                              ; 51
        call    L_0958                          ; E8 46 FC
        pop     cx                              ; 59
        jne     L_0D34                          ; 75 1F
        mov     word ptr [0xb0], cx             ; 89 0E B0 00
L_0D19:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        cmp     word ptr [di + 0xd], 0xff6      ; 81 7D 0D F6 0F
        jae     L_0D34                          ; 73 0E
        test    word ptr [bp + 4], 1            ; F7 46 04 01 00
        je      L_0D31                          ; 74 04
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
L_0D31:
        and     ax, 0xfff                       ; 25 FF 0F
L_0D34:
        mov     dx, ax                          ; 8B D0
        cmp     word ptr [di + 0xd], ax         ; 39 45 0D
        jae     L_0D3E                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_0D3E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D46 -- offset 0x0D46 -- 151 instr
; Llama a servicios DOS via INT 21h (151 instr).
; tags: dos_caller, int_21
; callers: FORMAT
; calls (intra): sub_08DA, sub_08E1, sub_0958, sub_0C2C, sub_0C60
;----------------------------------------------------------------------
L_0D46:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        call    L_0C2C                          ; E8 D8 FE
        mov     si, dx                          ; 8B F2
        cmp     word ptr [0xb0], ax             ; 39 06 B0 00
        je      L_0D83                          ; 74 27
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0C60                          ; E8 F9 FE
        pop     cx                              ; 59
        jne     L_0DB1                          ; 75 47
        mov     al, byte ptr [di]               ; 8A 05
        mov     dx, 2                           ; BA 02 00
        push    cx                              ; 51
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    dx                              ; 52
        push    cx                              ; 51
        call    L_0958                          ; E8 DC FB
        pop     cx                              ; 59
        jne     L_0DB1                          ; 75 32
        mov     word ptr [0xb0], cx             ; 89 0E B0 00
L_0D83:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        xor     dx, dx                          ; 33 D2
        cmp     word ptr [di + 0xd], 0xff6      ; 81 7D 0D F6 0F
        jae     L_0DA6                          ; 73 17
        mov     cl, 4                           ; B1 04
        mov     dh, 0xf0                        ; B6 F0
        test    word ptr [bp + 6], 1            ; F7 46 06 01 00
        je      L_0DA0                          ; 74 06
        rol     dx, cl                          ; D3 C2
        shl     ax, cl                          ; D3 E0
        jmp     L_0DA6                          ; EB 06
L_0DA0:
        not     dx                              ; F7 D2
        and     ax, dx                          ; 23 C2
        not     dx                              ; F7 D2
L_0DA6:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        and     word ptr es:[bx + si], dx       ; 26 21 10
        or      word ptr es:[bx + si], ax       ; 26 09 00
        xor     ax, ax                          ; 33 C0
L_0DB1:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        call    L_08DA                          ; E8 17 FB
        add     al, 0x41                        ; 04 41
        mov     ah, 0x3a                        ; B4 3A
        mov     word ptr [si], ax               ; 89 04
        inc     si                              ; 46
        inc     si                              ; 46
        mov     ax, 0x5c                        ; B8 5C 00
        mov     word ptr [si], ax               ; 89 04
        inc     si                              ; 46
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        mov     ax, 0xffff                      ; B8 FF FF
        jb      L_0DDC                          ; 72 02
        not     ax                              ; F7 D0
L_0DDC:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x3b                        ; B4 3B
        int     0x21                            ; CD 21
        mov     ax, 0xffff                      ; B8 FF FF
        jb      L_0E06                          ; 72 14
        not     ax                              ; F7 D0
        mov     bx, dx                          ; 8B DA
        cmp     byte ptr [bx + 1], 0x3a         ; 80 7F 01 3A
        jne     L_0E06                          ; 75 0A
        mov     al, byte ptr [bx]               ; 8A 07
        sub     al, 0x41                        ; 2C 41
        push    ax                              ; 50
        call    L_08E1                          ; E8 DD FA
        xor     ax, ax                          ; 33 C0
L_0E06:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ax, 0x4300                      ; B8 00 43
        int     0x21                            ; CD 21
        jb      L_0E1E                          ; 72 05
        test    cl, 0x10                        ; F6 C1 10
        jne     L_0E29                          ; 75 0B
L_0E1E:
        mov     ah, 0x39                        ; B4 39
        int     0x21                            ; CD 21
        jae     L_0E29                          ; 73 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0E2B                          ; EB 02
L_0E29:
        xor     ax, ax                          ; 33 C0
L_0E2B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x3a                        ; B4 3A
        int     0x21                            ; CD 21
        mov     ax, 0xffff                      ; B8 FF FF
        jb      L_0E42                          ; 72 02
        not     ax                              ; F7 D0
L_0E42:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        xor     bx, bx                          ; 33 DB
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        mov     ax, bx                          ; 8B C3
        jae     L_0E63                          ; 73 01
        dec     ax                              ; 48
L_0E63:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        xor     bx, bx                          ; 33 DB
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        mov     ax, bx                          ; 8B C3
        jae     L_0E7E                          ; 73 01
        dec     ax                              ; 48
L_0E7E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E84 -- offset 0x0E84 -- 11 instr
; Llama a servicios DOS via INT 21h (11 instr).
; tags: dos_caller, int_21
; callers: SYS, sub_0FD0
;----------------------------------------------------------------------
L_0E84:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x3d                        ; B4 3D
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        int     0x21                            ; CD 21
        jae     L_0E96                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_0E96:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E9C -- offset 0x0E9C -- 55 instr
; Llama a servicios DOS via INT 21h (55 instr).
; tags: dos_caller, int_21
; callers: sub_0FD0
;----------------------------------------------------------------------
L_0E9C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, 0x4300                      ; B8 00 43
        int     0x21                            ; CD 21
        jb      L_0EB6                          ; 72 0D
        and     cl, 0xe7                        ; 80 E1 E7
        mov     word ptr [bp + 4], cx           ; 89 4E 04
        xor     cx, cx                          ; 33 C9
        mov     ax, 0x4301                      ; B8 01 43
        int     0x21                            ; CD 21
L_0EB6:
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        test    cl, 0x80                        ; F6 C1 80
        je      L_0EC4                          ; 74 03
        and     cl, 0x7e                        ; 80 E1 7E
L_0EC4:
        mov     ah, 0x3c                        ; B4 3C
        int     0x21                            ; CD 21
        jb      L_0EDA                          ; 72 10
        mov     bx, ax                          ; 8B D8
        xor     cx, cx                          ; 33 C9
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        mov     ax, bx                          ; 8B C3
        jae     L_0EDD                          ; 73 07
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
L_0EDA:
        mov     ax, 0xffff                      ; B8 FF FF
L_0EDD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ah, 0x30                        ; B4 30
        int     0x21                            ; CD 21
        mov     ah, 0x5b                        ; B4 5B
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        cmp     al, 3                           ; 3C 03
        jae     L_0EFC                          ; 73 09
        mov     ax, 0x4300                      ; B8 00 43
        int     0x21                            ; CD 21
        jae     L_0F0D                          ; 73 13
        mov     ah, 0x3c                        ; B4 3C
L_0EFC:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        int     0x21                            ; CD 21
        jb      L_0F0D                          ; 72 0A
        mov     bx, ax                          ; 8B D8
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        xor     ax, ax                          ; 33 C0
        jmp     L_0F10                          ; EB 03
L_0F0D:
        mov     ax, 0xffff                      ; B8 FF FF
L_0F10:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F16 -- offset 0x0F16 -- 74 instr
; Llama a servicios DOS via INT 21h (74 instr).
; tags: dos_caller, int_21
; callers: SYS, sub_0FD0
;----------------------------------------------------------------------
L_0F16:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        xor     cx, cx                          ; 33 C9
        mov     ax, 0x4301                      ; B8 01 43
        int     0x21                            ; CD 21
        jb      L_0F30                          ; 72 0B
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0F30                          ; 72 02
        xor     ax, ax                          ; 33 C0
L_0F30:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x42                        ; B4 42
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        int     0x21                            ; CD 21
        jae     L_0F50                          ; 73 05
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, ax                          ; 8B D0
L_0F50:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x3f                        ; B4 3F
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        int     0x21                            ; CD 21
        jae     L_0F6B                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_0F6B:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x40                        ; B4 40
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        int     0x21                            ; CD 21
        jae     L_0F87                          ; 73 02
        xor     ax, ax                          ; 33 C0
L_0F87:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, 0x4200                      ; B8 00 42
        int     0x21                            ; CD 21
        jb      L_0FAB                          ; 72 0A
        xor     cx, cx                          ; 33 C9
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        jae     L_0FAE                          ; 73 03
L_0FAB:
        mov     ax, 0xffff                      ; B8 FF FF
L_0FAE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FB4 -- offset 0x0FB4 -- 13 instr
; Llama a servicios DOS via INT 21h (13 instr).
; tags: dos_caller, int_21
; callers: SYS, sub_0FD0
;----------------------------------------------------------------------
L_0FB4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        je      L_0FC8                          ; 74 09
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        jb      L_0FC8                          ; 72 03
        mov     bx, 0xffff                      ; BB FF FF
L_0FC8:
        mov     ax, bx                          ; 8B C3
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FD0 -- offset 0x0FD0 -- 62 instr
; Llama a servicios DOS via INT 21h (62 instr).
; tags: dos_caller, int_21
; callers: SYS
; calls (intra): sub_0E84, sub_0E9C, sub_0F16, sub_0FB4
;----------------------------------------------------------------------
L_0FD0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     si, 0xffff                      ; BE FF FF
        mov     di, si                          ; 8B FE
        xor     ax, ax                          ; 33 C0
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    ax                              ; 50
        call    L_0E84                          ; E8 A1 FE
        jb      L_1039                          ; 72 54
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0E9C                          ; E8 AC FE
        jb      L_1039                          ; 72 47
        mov     di, ax                          ; 8B F8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
L_0FF8:
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mov     bx, si                          ; 8B DE
        mov     ah, 0x3f                        ; B4 3F
        int     0x21                            ; CD 21
        jb      L_102C                          ; 72 29
        mov     cx, ax                          ; 8B C8
        jcxz    L_1015                          ; E3 0E
        mov     bx, di                          ; 8B DF
        mov     ah, 0x40                        ; B4 40
        int     0x21                            ; CD 21
        jb      L_102C                          ; 72 1D
        cmp     ax, cx                          ; 3B C1
        je      L_0FF8                          ; 74 E5
        jmp     L_102C                          ; EB 17
L_1015:
        pop     ds                              ; 1F
        mov     bx, si                          ; 8B DE
        mov     ax, 0x5700                      ; B8 00 57
        int     0x21                            ; CD 21
        jb      L_102D                          ; 72 0E
        mov     bx, di                          ; 8B DF
        mov     ax, 0x5701                      ; B8 01 57
        int     0x21                            ; CD 21
        jb      L_102D                          ; 72 05
        xor     ax, ax                          ; 33 C0
        jmp     L_103C                          ; EB 10
L_102C:
        pop     ds                              ; 1F
L_102D:
        push    di                              ; 57
        call    L_0FB4                          ; E8 83 FF
        mov     di, ax                          ; 8B F8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0F16                          ; E8 DD FE
L_1039:
        mov     ax, 0xffff                      ; B8 FF FF
L_103C:
        push    ax                              ; 50
        push    si                              ; 56
        call    L_0FB4                          ; E8 73 FF
        push    di                              ; 57
        call    L_0FB4                          ; E8 6F FF
        pop     ax                              ; 58
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_104E -- offset 0x104E -- 276 instr
; Llama a servicios DOS via INT 21h (276 instr).
; tags: complex_iterator, int_21, string_op
; callers: SYS
;----------------------------------------------------------------------
L_104E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     ax, 0x4201                      ; B8 01 42
        int     0x21                            ; CD 21
        jb      L_1085                          ; 72 24
        mov     si, ax                          ; 8B F0
        mov     di, dx                          ; 8B FA
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        mov     ax, 0x4202                      ; B8 02 42
        int     0x21                            ; CD 21
        jb      L_1085                          ; 72 15
        mov     cx, dx                          ; 8B CA
        mov     dx, ax                          ; 8B D0
        xchg    si, dx                          ; 87 D6
        xchg    di, cx                          ; 87 CF
        mov     ax, 0x4200                      ; B8 00 42
        int     0x21                            ; CD 21
        jb      L_1085                          ; 72 06
        mov     ax, si                          ; 8B C6
        mov     dx, di                          ; 8B D7
        jmp     L_108A                          ; EB 05
L_1085:
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, ax                          ; 8B D0
L_108A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, 0x4200                      ; B8 00 42
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        int     0x21                            ; CD 21
        jb      L_10AF                          ; 72 08
        mov     ah, 0x40                        ; B4 40
        xor     cx, cx                          ; 33 C9
        int     0x21                            ; CD 21
        jae     L_10B2                          ; 73 03
L_10AF:
        mov     ax, 0xffff                      ; B8 FF FF
L_10B2:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, 0x5700                      ; B8 00 57
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        jae     L_10CE                          ; 73 05
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, ax                          ; 8B D0
L_10CE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ax, 0x5701                      ; B8 01 57
        int     0x21                            ; CD 21
        mov     ax, 0                           ; B8 00 00
        jae     L_10ED                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_10ED:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x4300                      ; B8 00 43
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        jae     L_1105                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_1105:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 0x4301                      ; B8 01 43
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        int     0x21                            ; CD 21
        jae     L_111E                          ; 73 03
        mov     ax, 0xffff                      ; B8 FF FF
L_111E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    bp                              ; 55
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        push    ds                              ; 1E
        pop     es                              ; 07
        cld                                     ; FC
        xor     bp, bp                          ; 33 ED
        cmp     byte ptr [si + 1], 0x3a         ; 80 7C 01 3A
        jne     L_114A                          ; 75 0F
        lodsb   al, byte ptr [si]               ; AC
        inc     si                              ; 46
        or      al, 0x20                        ; 0C 20
        sub     al, 0x61                        ; 2C 61
        jb      L_1147                          ; 72 04
        cmp     al, 0x19                        ; 3C 19
        jbe     L_114E                          ; 76 07
L_1147:
        jmp     L_11D3                          ; E9 89 00
L_114A:
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
L_114E:
        mov     dl, al                          ; 8A D0
        inc     dl                              ; FE C2
        add     al, 0x41                        ; 04 41
        mov     ah, 0x3a                        ; B4 3A
        stosw   word ptr es:[di], ax            ; AB
        mov     bx, 0x2f5c                      ; BB 5C 2F
        mov     al, byte ptr [si]               ; 8A 04
        cmp     al, bh                          ; 3A C7
        je      L_1190                          ; 74 30
        cmp     al, bl                          ; 3A C3
        je      L_1190                          ; 74 2C
        mov     al, bl                          ; 8A C3
        stosb   byte ptr es:[di], al            ; AA
        mov     cx, ds                          ; 8C D9
        xchg    di, si                          ; 87 F7
        mov     ax, es                          ; 8C C0
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        jb      L_11D3                          ; 72 5E
        mov     ds, cx                          ; 8E D9
        xchg    di, si                          ; 87 F7
        xor     al, al                          ; 32 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        dec     di                              ; 4F
        mov     al, byte ptr es:[di - 1]        ; 26 8A 45 FF
        cmp     al, bh                          ; 3A C7
        je      L_1190                          ; 74 07
        cmp     al, bl                          ; 3A C3
        je      L_1190                          ; 74 03
        mov     al, bl                          ; 8A C3
        stosb   byte ptr es:[di], al            ; AA
L_1190:
        xor     cx, cx                          ; 33 C9
        mov     dx, di                          ; 8B D7
L_1194:
        lodsb   al, byte ptr [si]               ; AC
        cmp     al, bl                          ; 3A C3
        je      L_119D                          ; 74 04
        cmp     al, bh                          ; 3A C7
        jne     L_11DD                          ; 75 40
L_119D:
        cmp     byte ptr [si], bl               ; 38 1C
        je      L_11A5                          ; 74 04
        cmp     byte ptr [si], bh               ; 38 3C
        jne     L_11B3                          ; 75 0E
L_11A5:
        dec     bp                              ; 4D
        cmp     byte ptr es:[di - 1], 0x3a      ; 26 80 7D FF 3A
        jne     L_11D3                          ; 75 26
        cmp     byte ptr [si + 1], 0            ; 80 7C 01 00
        je      L_11D3                          ; 74 20
L_11B3:
        inc     bp                              ; 45
        cmp     cl, ch                          ; 3A CD
        jne     L_11D8                          ; 75 20
        jcxz    L_122C                          ; E3 72
        cmp     cl, 2                           ; 80 F9 02
        ja      L_11D3                          ; 77 14
        dec     di                              ; 4F
        dec     cl                              ; FE C9
        je      L_1190                          ; 74 CC
        mov     di, dx                          ; 8B FA
L_11C6:
        dec     di                              ; 4F
        mov     al, byte ptr es:[di - 1]        ; 26 8A 45 FF
        cmp     al, bl                          ; 3A C3
        je      L_1190                          ; 74 C1
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_11C6                          ; 75 F3
L_11D3:
        xor     ax, ax                          ; 33 C0
        jmp     L_1280                          ; E9 A8 00
L_11D8:
        mov     al, bl                          ; 8A C3
        stosb   byte ptr es:[di], al            ; AA
        jmp     L_1190                          ; EB B3
L_11DD:
        or      al, al                          ; 0A C0
        je      L_1254                          ; 74 73
        cmp     al, 0x20                        ; 3C 20
        jb      L_11D3                          ; 72 EE
        ja      L_11F2                          ; 77 0B
L_11E7:
        lodsb   al, byte ptr [si]               ; AC
        or      al, al                          ; 0A C0
        je      L_1254                          ; 74 68
        cmp     al, 0x20                        ; 3C 20
        je      L_11E7                          ; 74 F7
        jmp     L_11D3                          ; EB E1
L_11F2:
        cmp     al, 0x3b                        ; 3C 3B
        je      L_11D3                          ; 74 DD
        cmp     al, 0x3a                        ; 3C 3A
        je      L_11D3                          ; 74 D9
        cmp     al, 0x2c                        ; 3C 2C
        je      L_11D3                          ; 74 D5
        cmp     al, 0x7c                        ; 3C 7C
        je      L_11D3                          ; 74 D1
        cmp     al, 0x2b                        ; 3C 2B
        je      L_11D3                          ; 74 CD
        cmp     al, 0x3c                        ; 3C 3C
        je      L_11D3                          ; 74 C9
        cmp     al, 0x3e                        ; 3C 3E
        je      L_11D3                          ; 74 C5
        cmp     al, 0x22                        ; 3C 22
        je      L_11D3                          ; 74 C1
        cmp     al, 0x5b                        ; 3C 5B
        je      L_11D3                          ; 74 BD
        cmp     al, 0x5d                        ; 3C 5D
        je      L_11D3                          ; 74 B9
        cmp     al, 0x3d                        ; 3C 3D
        je      L_11D3                          ; 74 B5
        cmp     al, 0x61                        ; 3C 61
        jb      L_1228                          ; 72 06
        cmp     al, 0x7a                        ; 3C 7A
        ja      L_1228                          ; 77 02
        add     al, 0xe0                        ; 04 E0
L_1228:
        inc     cl                              ; FE C1
        js      L_11D3                          ; 78 A7
L_122C:
        stosb   byte ptr es:[di], al            ; AA
        cmp     al, 0x2e                        ; 3C 2E
        jne     L_1237                          ; 75 06
        inc     ch                              ; FE C5
        mov     ah, cl                          ; 8A E1
        dec     ah                              ; FE CC
L_1237:
        cmp     ch, 0                           ; 80 FD 00
        je      L_124C                          ; 74 10
        cmp     cl, 0xc                         ; 80 F9 0C
        ja      L_1275                          ; 77 34
        mov     al, cl                          ; 8A C1
        sub     al, ah                          ; 2A C4
        cmp     al, 4                           ; 3C 04
        ja      L_1275                          ; 77 2C
        jmp     L_1194                          ; E9 48 FF
L_124C:
        cmp     cl, 8                           ; 80 F9 08
        ja      L_1275                          ; 77 24
        jmp     L_1194                          ; E9 40 FF
L_1254:
        cmp     ch, 1                           ; 80 FD 01
        je      L_125D                          ; 74 04
        ja      L_1275                          ; 77 1A
        mov     ah, cl                          ; 8A E1
L_125D:
        mov     byte ptr es:[di], al            ; 26 88 05
        xchg    ah, al                          ; 86 C4
        or      ax, ax                          ; 0B C0
        jne     L_1278                          ; 75 12
        not     ax                              ; F7 D0
        cmp     bp, 1                           ; 83 FD 01
        je      L_1280                          ; 74 13
        xor     ax, ax                          ; 33 C0
        mov     byte ptr es:[di - 1], ah        ; 26 88 65 FF
        jmp     L_1278                          ; EB 03
L_1275:
        jmp     L_11D3                          ; E9 5B FF
L_1278:
        cmp     ax, 8                           ; 3D 08 00
        ja      L_1275                          ; 77 F8
        mov     ax, 1                           ; B8 01 00
L_1280:
        pop     bp                              ; 5D
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1289 -- offset 0x1289 -- 27 instr
; Funcion sin clasificar definitiva (27 instr).
; tags: small
; callers: SYS
;----------------------------------------------------------------------
L_1289:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     dx, di                          ; 8B D7
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        dec     di                              ; 4F
        mov     si, di                          ; 8B F7
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     bx, di                          ; 8B DF
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        inc     cx                              ; 41
        neg     cx                              ; F7 D9
        mov     di, si                          ; 8B FE
        mov     si, bx                          ; 8B F3
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, dx                          ; 8B C2
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_12B8 -- offset 0x12B8 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: SYS
;----------------------------------------------------------------------
L_12B8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     si, di                          ; 8B F7
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xffff                      ; B9 FF FF
        repne scasb al, byte ptr es:[di]        ; F2 AE
        inc     cx                              ; 41
        neg     cx                              ; F7 D9
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     dx, di                          ; 8B D7
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ax, dx                          ; 8B C2
        pop     si                              ; 5E
        pop     di                              ; 5F
        pop     bp                              ; 5D
        ret                                     ; C3

MSDOSD_TEXT ENDS

        END
