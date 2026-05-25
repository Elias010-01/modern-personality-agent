; AUTO-GENERATED from original GDI segment 6
; segment_size=2600 bytes, flags=0xf170
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
; sub_0000 -- offset 0x0000 -- 244 instr
; Dispatcher: tabla de decisiones cmp+jcc (244 instr).
; tags: dispatcher, far
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
L_000D:
        cmp     word ptr [0x138], 0             ; 83 3E 38 01 00
        jne     L_001B                          ; 75 07
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        je      L_0022                          ; 74 07
L_001B:
        call    far KERNEL.YIELD                ; 9A 35 00 00 00 [FIXUP]
        jmp     L_000D                          ; EB EB
L_0022:
        inc     word ptr [0x13a]                ; FF 06 3A 01
L_0026:
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jne     L_0034                          ; 75 07
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        je      L_003B                          ; 74 07
L_0034:
        call    far KERNEL.YIELD                ; 9A D9 00 00 00 [FIXUP]
        jmp     L_0026                          ; EB EB
L_003B:
        inc     word ptr [0x13e]                ; FF 06 3E 01
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_01CF                          ; E9 79 01
L_0056:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_006F                          ; 75 13
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + 0xe], dx         ; 39 57 0E
        jne     L_006F                          ; 75 05
        cmp     word ptr [bx + 0xc], ax         ; 39 47 0C
        je      L_0090                          ; 74 21
L_006F:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0078                          ; 75 03
        jmp     L_01C8                          ; E9 50 01
L_0078:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bx + 2], dx           ; 39 57 02
        je      L_0089                          ; 74 03
        jmp     L_01C8                          ; E9 3F 01
L_0089:
        cmp     word ptr [bx], ax               ; 39 07
        je      L_0090                          ; 74 03
        jmp     L_01C8                          ; E9 38 01
L_0090:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        cmp     byte ptr [bx + 0x14], 0xff      ; 80 7F 14 FF
        jne     L_009C                          ; 75 03
        jmp     L_017A                          ; E9 DE 00
L_009C:
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jne     L_00B6                          ; 75 14
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
L_00B6:
        mov     al, 0x2d                        ; B0 2D
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mul     byte ptr [bx + 0x14]            ; F6 67 14
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
L_00CA:
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jne     L_00D8                          ; 75 07
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        je      L_00DF                          ; 74 07
L_00D8:
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00CA                          ; EB EB
L_00DF:
        inc     word ptr [0x142]                ; FF 06 42 01
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        je      L_00F1                          ; 74 04
        mov     ax, si                          ; 8B C6
        jmp     L_0103                          ; EB 12
L_00F1:
        mov     ax, 0x2d                        ; B8 2D 00
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mul     word ptr es:[bx + 2]            ; 26 F7 67 02
        mov     bx, ax                          ; 8B D8
        les     di, ptr [bp - 4]                ; C4 7E FC
        mov     ax, word ptr es:[bx + di]       ; 26 8B 01
L_0103:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        dec     word ptr es:[bx + 0xa]          ; 26 FF 4F 0A
        cmp     word ptr es:[bx + 0xa], 0       ; 26 83 7F 0A 00
        jg      L_014B                          ; 7F 37
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        je      L_012D                          ; 74 10
L_011D:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_011D                          ; 75 F0
L_012D:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_014B                          ; 75 0F
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     al, byte ptr [bx + 0x14]        ; 8A 47 14
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        push    si                              ; 56
        call    L_07A3                          ; E8 58 06
L_014B:
        push    word ptr [bp - 0x16]            ; FF 76 EA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D1                          ; E8 7E 08
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08E4                          ; E8 8B 07
        or      ax, ax                          ; 0B C0
        jne     L_0166                          ; 75 09
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0166:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jbe     L_0176                          ; 76 09
        dec     word ptr [0x142]                ; FF 0E 42 01
        mov     ax, word ptr [0x142]            ; A1 42 01
        jmp     L_0185                          ; EB 0F
L_0176:
        sub     ax, ax                          ; 2B C0
        jmp     L_0185                          ; EB 0B
L_017A:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        push    word ptr [bx + 0x10]            ; FF 77 10
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0185:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        push    word ptr [bx + 0x12]            ; FF 77 12
        call    far KERNEL.LOCALFREE            ; 9A 78 02 00 00 [FIXUP]
        dec     word ptr [0x12c]                ; FF 0E 2C 01
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        mov     cx, 0x15                        ; B9 15 00
        mul     cx                              ; F7 E1
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
L_01AD:
        cmp     word ptr [bp - 0xa], 0x15       ; 83 7E F6 15
        jge     L_01CF                          ; 7D 1C
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_01AD                          ; EB E5
L_01C8:
        add     word ptr [bp - 0xe], 0x15       ; 83 46 F2 15
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_01CF:
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jae     L_01DA                          ; 73 03
        jmp     L_0056                          ; E9 7C FE
L_01DA:
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        je      L_01E9                          ; 74 09
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
L_01E9:
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x132]            ; A1 32 01
        sub     ax, word ptr [0x12c]            ; 2B 06 2C 01
        cmp     ax, 5                           ; 3D 05 00
        jbe     L_0224                          ; 76 26
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        mov     word ptr [0x132], ax            ; A3 32 01
        cmp     ax, 5                           ; 3D 05 00
        jae     L_020F                          ; 73 06
        mov     word ptr [0x132], 5             ; C7 06 32 01 05 00
L_020F:
        push    word ptr [0x394]                ; FF 36 94 03
        mov     ax, 0x15                        ; B8 15 00
        mul     word ptr [0x132]                ; F7 26 32 01
        push    ax                              ; 50
        push    word ptr [0x224]                ; FF 36 24 02
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
L_0224:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jbe     L_0234                          ; 76 09
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_0236                          ; EB 02
L_0234:
        sub     ax, ax                          ; 2B C0
L_0236:
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        jbe     L_0246                          ; 76 09
        dec     word ptr [0x13a]                ; FF 0E 3A 01
        mov     ax, word ptr [0x13a]            ; A1 3A 01
        jmp     L_0248                          ; EB 02
L_0246:
        sub     ax, ax                          ; 2B C0
L_0248:
        mov     ax, 1                           ; B8 01 00
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bx + 6]               ; FF 77 06
        push    word ptr [bx + 4]               ; FF 77 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    0                               ; E8 8E FD
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    0                               ; E8 5F FD
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ADDFONTRESOURCE -- 254 instr
; Dispatcher: tabla de decisiones cmp+jcc (254 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_05A4
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.FREELIBRARY, KERNEL.FREERESOURCE, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK (+7 mas)
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ADDFONTRESOURCE  (offset 0x02AC, size 760 bytes)
;-----------------------------------------------------------------------
ADDFONTRESOURCE PROC FAR
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOADLIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_02D3                          ; 77 05
L_02CE:
        sub     ax, ax                          ; 2B C0
        jmp     L_0597                          ; E9 C4 02
L_02D3:
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jne     L_02E1                          ; 75 07
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        je      L_02E8                          ; 74 07
L_02E1:
        call    far KERNEL.YIELD                ; 9A FB 02 00 00 [FIXUP]
        jmp     L_02D3                          ; EB EB
L_02E8:
        inc     word ptr [0x13e]                ; FF 06 3E 01
L_02EC:
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jne     L_02FA                          ; 75 07
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        je      L_0301                          ; 74 07
L_02FA:
        call    far KERNEL.YIELD                ; 9A 1C 00 00 00 [FIXUP]
        jmp     L_02EC                          ; EB EB
L_0301:
        inc     word ptr [0x142]                ; FF 06 42 01
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A 8D 03 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x2d                        ; B8 2D 00
        mov     bx, dx                          ; 8B DA
        mul     word ptr [0x12e]                ; F7 26 2E 01
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A 36 04 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        jmp     L_0364                          ; EB 2F
L_0335:
        mov     ax, word ptr [di]               ; 8B 05
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jne     L_035E                          ; 75 22
        inc     word ptr [di + 4]               ; FF 45 04
        inc     word ptr [di + 2]               ; FF 45 02
        mov     al, byte ptr [di + 7]           ; 8A 45 07
        sub     ah, ah                          ; 2A E4
        mov     cl, byte ptr [di + 6]           ; 8A 4D 06
        sub     ch, ch                          ; 2A ED
        sub     ax, cx                          ; 2B C1
        inc     ax                              ; 40
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A A0 03 00 00 [FIXUP]
        jmp     L_054D                          ; E9 EF 01
L_035E:
        add     di, 8                           ; 83 C7 08
        inc     word ptr [bp - 0x18]            ; FF 46 E8
L_0364:
        mov     ax, word ptr [0x130]            ; A1 30 01
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jb      L_0335                          ; 72 C9
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0x1c6                       ; B8 C6 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A E6 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        or      ax, dx                          ; 0B C2
        jne     L_03C9                          ; 75 2E
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A E6 03 00 00 [FIXUP]
L_03A4:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A EE 03 00 00 [FIXUP]
L_03AD:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far KERNEL.FREELIBRARY          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        ja      L_03BF                          ; 77 03
        jmp     L_057F                          ; E9 C0 01
L_03BF:
        dec     word ptr [0x142]                ; FF 0E 42 01
        mov     ax, word ptr [0x142]            ; A1 42 01
        jmp     L_0581                          ; E9 B8 01
L_03C9:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        add     ax, word ptr [0x12e]            ; 03 06 2E 01
        cmp     ax, 0xfd                        ; 3D FD 00
        jbe     L_03FC                          ; 76 1B
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 0A 04 00 00 [FIXUP]
L_03EA:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 9C 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.FREERESOURCE         ; 9A DA 04 00 00 [FIXUP]
        jmp     L_03A4                          ; EB A8
L_03FC:
        mov     ax, word ptr [0x130]            ; A1 30 01
        cmp     word ptr [0x136], ax            ; 39 06 36 01
        ja      L_043C                          ; 77 37
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 86 04 00 00 [FIXUP]
        inc     word ptr [0x136]                ; FF 06 36 01
        push    word ptr [0x39a]                ; FF 36 9A 03
        mov     ax, word ptr [0x136]            ; A1 36 01
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        push    word ptr [0x224]                ; FF 36 24 02
        call    far KERNEL.LOCALREALLOC         ; 9A 20 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0431                          ; 75 06
        dec     word ptr [0x136]                ; FF 0E 36 01
        jmp     L_03EA                          ; EB B9
L_0431:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A 44 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
L_043C:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 8                           ; B8 08 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, OFFSET _entry_392           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_392           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.SETRESOURCEHANDLER   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x130]            ; A1 30 01
        inc     word ptr [0x130]                ; FF 06 30 01
        mov     di, ax                          ; 8B F8
        mov     cl, 3                           ; B1 03
        shl     di, cl                          ; D3 E7
        add     di, si                          ; 03 FE
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], 1            ; C7 45 02 01 00
        mov     word ptr [di + 4], 1            ; C7 45 04 01 00
        mov     al, byte ptr [0x12e]            ; A0 2E 01
        mov     byte ptr [di + 6], al           ; 88 45 06
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        add     al, byte ptr [di + 6]           ; 02 45 06
        dec     al                              ; FE C8
        mov     byte ptr [di + 7], al           ; 88 45 07
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A EE 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [0x12e]            ; 03 06 2E 01
        cmp     ax, word ptr [0x134]            ; 3B 06 34 01
        jbe     L_04FD                          ; 76 66
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A D2 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     word ptr [0x134], ax            ; 01 06 34 01
        push    word ptr [0x3f4]                ; FF 36 F4 03
        mov     ax, 0x2d                        ; B8 2D 00
        mul     word ptr [0x134]                ; F7 26 34 01
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        push    word ptr [0x21e]                ; FF 36 1E 02
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04E1                          ; 75 1E
        dec     word ptr [0x130]                ; FF 0E 30 01
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     word ptr [0x134], ax            ; 29 06 34 01
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 41 05 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.FREERESOURCE         ; 9A 49 05 00 00 [FIXUP]
        jmp     L_03AD                          ; E9 CC FE
L_04E1:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A A7 00 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, 0x2d                        ; B8 2D 00
        mov     bx, dx                          ; 8B DA
        mul     word ptr [0x12e]                ; F7 26 2E 01
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     word ptr [bp - 6], bx           ; 89 5E FA
L_04FD:
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0535                          ; EB 31
L_0504:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    L_05A4                          ; E8 8E 00
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        or      ax, dx                          ; 0B C2
        jne     L_052E                          ; 75 0E
        dec     word ptr [0x130]                ; FF 0E 30 01
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     word ptr [0x12e], ax            ; 29 06 2E 01
        jmp     L_03EA                          ; E9 BC FE
L_052E:
        add     word ptr [bp - 8], 0x2d         ; 83 46 F8 2D
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0535:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jb      L_0504                          ; 72 C7
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.GLOBALUNLOCK         ; 9A 52 05 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.FREERESOURCE         ; 9A 25 01 00 00 [FIXUP]
L_054D:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A E5 01 00 00 [FIXUP]
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jbe     L_0566                          ; 76 09
        dec     word ptr [0x142]                ; FF 0E 42 01
        mov     ax, word ptr [0x142]            ; A1 42 01
        jmp     L_0568                          ; EB 02
L_0566:
        sub     ax, ax                          ; 2B C0
L_0568:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jbe     L_0578                          ; 76 09
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_057A                          ; EB 02
L_0578:
        sub     ax, ax                          ; 2B C0
L_057A:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        jmp     L_0597                          ; EB 18
L_057F:
        sub     ax, ax                          ; 2B C0
L_0581:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jbe     L_0592                          ; 76 0A
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_02CE                          ; E9 3C FD
L_0592:
        sub     ax, ax                          ; 2B C0
        jmp     L_02CE                          ; E9 37 FD
L_0597:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
ADDFONTRESOURCE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05A4 -- offset 0x05A4 -- 81 instr
; Funcion compleja: 81 instrucciones, 1 llamadas, 5 branches.
; tags: calls_kernel, complex
; callers: ADDFONTRESOURCE
; calls (inter): KERNEL.ADDATOM
;----------------------------------------------------------------------

L_05A4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     word ptr [bp + 4], 2            ; 83 46 04 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0x100         ; 26 81 3F 00 01
        je      L_05CC                          ; 74 06
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_068E                          ; E9 C2 00
L_05CC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x42                        ; 05 42 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sub     ax, 0x2d                        ; 2D 2D 00
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        jmp     L_060B                          ; EB 12
L_05F9:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], al            ; 26 88 07
L_060B:
        mov     ax, si                          ; 8B C6
        dec     si                              ; 4E
        or      ax, ax                          ; 0B C0
        jne     L_05F9                          ; 75 E7
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x65]     ; 26 8B 47 65
        or      ax, word ptr es:[bx + 0x67]     ; 26 0B 47 67
        jne     L_063D                          ; 75 0F
        add     word ptr [bp + 4], 0x71         ; 83 46 04 71
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        jmp     L_0653                          ; EB 16
L_063D:
        add     word ptr [bp + 4], 0x71         ; 83 46 04 71
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.ADDATOM              ; 9A 64 06 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
L_0653:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0653                          ; 75 F4
        push    es                              ; 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
L_066F:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_066F                          ; 75 F4
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0xa], 0       ; 26 C7 47 0A 00 00
        inc     word ptr [0x12e]                ; FF 06 2E 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
L_068E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; REMOVEFONTRESOURCE -- 95 instr
; Dispatcher: tabla de decisiones cmp+jcc (95 instr).
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_08E4, sub_09D1
; calls (inter): KERNEL.FREELIBRARY, KERNEL.LOADLIBRARY, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK, KERNEL.YIELD
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; REMOVEFONTRESOURCE  (offset 0x0695, size 270 bytes)
;-----------------------------------------------------------------------
REMOVEFONTRESOURCE PROC FAR
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOADLIBRARY          ; 9A C2 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_06BB                          ; 77 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0797                          ; E9 DC 00
L_06BB:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.FREELIBRARY          ; 9A B1 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_06C8:
        cmp     word ptr [0x138], 0             ; 83 3E 38 01 00
        jne     L_06D6                          ; 75 07
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        je      L_06DD                          ; 74 07
L_06D6:
        call    far KERNEL.YIELD                ; 9A F0 06 00 00 [FIXUP]
        jmp     L_06C8                          ; EB EB
L_06DD:
        inc     word ptr [0x13a]                ; FF 06 3A 01
L_06E1:
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jne     L_06EF                          ; 75 07
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        je      L_06F6                          ; 74 07
L_06EF:
        call    far KERNEL.YIELD                ; 9A 09 07 00 00 [FIXUP]
        jmp     L_06E1                          ; EB EB
L_06F6:
        inc     word ptr [0x13e]                ; FF 06 3E 01
L_06FA:
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jne     L_0708                          ; 75 07
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        je      L_070F                          ; 74 07
L_0708:
        call    far KERNEL.YIELD                ; 9A E2 02 00 00 [FIXUP]
        jmp     L_06FA                          ; EB EB
L_070F:
        inc     word ptr [0x142]                ; FF 06 42 01
        push    word ptr [bp - 8]               ; FF 76 F8
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D1                          ; E8 B6 02
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        cmp     al, 0xff                        ; 3C FF
        je      L_0753                          ; 74 31
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     cl, 3                           ; B1 03
        shl     si, cl                          ; D3 E6
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A 26 03 00 00 [FIXUP]
        add     si, ax                          ; 03 F0
        cmp     word ptr [si + 4], 0            ; 83 7C 04 00
        jle     L_0763                          ; 7E 28
        dec     word ptr [si + 4]               ; FF 4C 04
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 68 07 00 00 [FIXUP]
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    L_08E4                          ; E8 94 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0753:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jbe     L_076E                          ; 76 14
        dec     word ptr [0x142]                ; FF 0E 42 01
        mov     ax, word ptr [0x142]            ; A1 42 01
        jmp     L_0770                          ; EB 0D
L_0763:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 57 03 00 00 [FIXUP]
        jmp     L_0753                          ; EB E5
L_076E:
        sub     ax, ax                          ; 2B C0
L_0770:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jbe     L_0780                          ; 76 09
        dec     word ptr [0x13e]                ; FF 0E 3E 01
        mov     ax, word ptr [0x13e]            ; A1 3E 01
        jmp     L_0782                          ; EB 02
L_0780:
        sub     ax, ax                          ; 2B C0
L_0782:
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        jbe     L_0792                          ; 76 09
        dec     word ptr [0x13a]                ; FF 0E 3A 01
        mov     ax, word ptr [0x13a]            ; A1 3A 01
        jmp     L_0794                          ; EB 02
L_0792:
        sub     ax, ax                          ; 2B C0
L_0794:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0797:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
REMOVEFONTRESOURCE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07A3 -- offset 0x07A3 -- 109 instr
; Dispatcher: tabla de decisiones cmp+jcc (109 instr).
; tags: calls_kernel, dispatcher
; callers: sub_0000, sub_0649, sub_08E4
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------

L_07A3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     si, ax                          ; 2B F0
        inc     si                              ; 46
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALLOCK            ; 9A FD 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_07E7                          ; EB 1D
L_07CA:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cmp     byte ptr [bx + 0x14], al        ; 38 47 14
        jbe     L_07E0                          ; 76 0B
        cmp     byte ptr [bx + 0x14], 0xff      ; 80 7F 14 FF
        je      L_07E0                          ; 74 05
        mov     ax, si                          ; 8B C6
        sub     byte ptr [bx + 0x14], al        ; 28 47 14
L_07E0:
        add     word ptr [bp - 6], 0x15         ; 83 46 FA 15
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_07E7:
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jb      L_07CA                          ; 72 DB
        push    word ptr [0x394]                ; FF 36 94 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 32 08 00 00 [FIXUP]
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A FB 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0825                          ; EB 1A
L_080B:
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        cmp     byte ptr [bx + 6], al           ; 38 47 06
        jbe     L_081E                          ; 76 08
        mov     ax, si                          ; 8B C6
        sub     byte ptr [bx + 6], al           ; 28 47 06
        sub     byte ptr [bx + 7], al           ; 28 47 07
L_081E:
        add     word ptr [bp - 0x16], 8         ; 83 46 EA 08
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0825:
        mov     ax, word ptr [0x130]            ; A1 30 01
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jb      L_080B                          ; 72 DE
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 27 09 00 00 [FIXUP]
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A 0A 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0871                          ; EB 1F
L_0852:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_086A                          ; 75 0F
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jbe     L_086A                          ; 76 04
        sub     word ptr es:[bx + 2], si        ; 26 29 77 02
L_086A:
        add     word ptr [bp - 0x10], 0x2d      ; 83 46 F0 2D
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_0871:
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jb      L_0852                          ; 72 D9
        mov     al, 0x2d                        ; B0 2D
        mul     byte ptr [bp + 4]               ; F6 66 04
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0x2d                        ; 05 2D 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     al, 0x2d                        ; B0 2D
        mul     byte ptr [bp + 6]               ; F6 66 06
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        mov     cl, byte ptr [bp + 4]           ; 8A 4E 04
        sub     ch, ch                          ; 2A ED
        sub     ax, cx                          ; 2B C1
        mov     cx, 0x2d                        ; B9 2D 00
        mul     cx                              ; F7 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_08C3                          ; EB 12
L_08B1:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x14]             ; C4 5E EC
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        mov     byte ptr es:[bx], al            ; 26 88 07
L_08C3:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        or      ax, ax                          ; 0B C0
        jne     L_08B1                          ; 75 E4
        sub     word ptr [0x12e], si            ; 29 36 2E 01
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A A9 03 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08E4 -- offset 0x08E4 -- 92 instr
; Dispatcher: tabla de decisiones cmp+jcc (92 instr).
; tags: calls_kernel, dispatcher, far
; callers: REMOVEFONTRESOURCE, sub_0000
; calls (intra): sub_07A3
; calls (inter): KERNEL.FREEMODULE, KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_08E4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        cmp     byte ptr [bp + 4], 0xff         ; 80 7E 04 FF
        jne     L_08F6                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0984                          ; E9 8E 00
L_08F6:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A A5 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     al, byte ptr [bp + 4]           ; 8A 46 04
        sub     ah, ah                          ; 2A E4
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        dec     word ptr [bx + 2]               ; FF 4F 02
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jg      L_0922                          ; 7F 06
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jle     L_0930                          ; 7E 0E
L_0922:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A BE 09 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_0984                          ; EB 54
L_0930:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx + 6]           ; 8A 47 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     al, byte ptr [bx + 7]           ; 8A 47 07
        push    ax                              ; 50
        call    L_07A3                          ; E8 63 FE
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.FREEMODULE           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        dec     word ptr [0x130]                ; FF 0E 30 01
        mov     dx, word ptr [0x130]            ; 8B 16 30 01
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0969:
        cmp     word ptr [bp - 4], 8            ; 83 7E FC 08
        jge     L_0922                          ; 7D B3
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        inc     word ptr [bp - 2]               ; FF 46 FE
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [bx], al               ; 88 07
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0969                          ; EB E5
L_0984:
        pop     si                              ; 5E
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
        push    si                              ; 56
        cmp     byte ptr [bp + 6], 0xff         ; 80 7E 06 FF
        jne     L_09A0                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_09C5                          ; EB 25
L_09A0:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A E3 09 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        and     si, 0xff                        ; 81 E6 FF 00
        mov     cl, 3                           ; B1 03
        shl     si, cl                          ; D3 E6
        inc     word ptr [bx + si + 2]          ; FF 40 02
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 15 0A 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_09C5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09D1 -- offset 0x09D1 -- 36 instr
; Funcion mediana (36 instr, 2 calls).
; tags: calls_kernel, medium
; callers: REMOVEFONTRESOURCE, sub_0000
; calls (inter): KERNEL.LOCALLOCK, KERNEL.LOCALUNLOCK
;----------------------------------------------------------------------
L_09D1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A 2F 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     byte ptr [bp - 4], 0            ; C6 46 FC 00
        jmp     L_0A01                          ; EB 11
L_09F0:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx], ax               ; 39 07
        je      L_0A10                          ; 74 16
        add     word ptr [bp - 6], 8            ; 83 46 FA 08
        inc     byte ptr [bp - 4]               ; FE 46 FC
L_0A01:
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [0x130]            ; 3B 06 30 01
        jb      L_09F0                          ; 72 E4
        mov     byte ptr [bp - 4], 0xff         ; C6 46 FC FF
L_0A10:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A 43 07 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        sub     ah, ah                          ; 2A E4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

GDI_TEXT ENDS

        END
