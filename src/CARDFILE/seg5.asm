; AUTO-GENERATED from original CARDFILE segment 5
; segment_size=4511 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 178 instr
; Dispatcher: tabla de decisiones cmp+jcc (178 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (inter): GDI.CREATEDC, GDI.DELETEDC, GDI.ESCAPE, GDI.GETTEXTMETRICS, KERNEL.GETPROFILESTRING, KERNEL.LSTRLEN (+2 mas)
;----------------------------------------------------------------------

L_0000:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xd2                        ; 81 EC D2 00
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa0                        ; B8 A0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7c                        ; B8 7C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        jmp     L_0038                          ; EB 0A
L_002E:
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        je      L_0045                          ; 74 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_0038:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_002E                          ; 75 E9
L_0045:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_005F                          ; 74 12
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_005F                          ; EB 0A
L_0055:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jg      L_006C                          ; 7F 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_005F:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_0055                          ; 75 E9
L_006C:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        jmp     L_0085                          ; EB 11
L_0074:
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        je      L_0092                          ; 74 17
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_0092                          ; 7E 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_0085:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_0074                          ; 75 E2
L_0092:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_00B3                          ; 74 19
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_00B3                          ; EB 11
L_00A2:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_00B0                          ; 7E 07
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        jne     L_00C0                          ; 75 10
L_00B0:
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_00B3:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_00A2                          ; 75 E2
L_00C0:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        jmp     L_00D3                          ; EB 0A
L_00C9:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_00E0                          ; 7E 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
L_00D3:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_00C9                          ; 75 E9
L_00E0:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_0126                          ; 75 1F
L_0107:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0115                          ; 74 08
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far GDI.DELETEDC                ; 9A 16 02 00 00 [FIXUP]
L_0115:
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 4B 03 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        sub     ax, ax                          ; 2B C0
        jmp     L_01D4                          ; E9 AE 00
L_0126:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     word ptr [0x1fc], ax            ; A3 FC 01
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x3da], ax            ; A3 DA 03
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x298], ax            ; A3 98 02
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x2ae]                ; FF 36 AE 02
        push    word ptr [0x2ac]                ; FF 36 AC 02
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 89 01 00 00 [FIXUP]
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A AD 02 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A F8 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0194                          ; 7D 03
        jmp     L_0107                          ; E9 73 FF
L_0194:
        mov     word ptr [0x288], 0             ; C7 06 88 02 00 00
        mov     word ptr [0x1fe], 0             ; C7 06 FE 01 00 00
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [0x16a]                ; FF 36 6A 01
        push    word ptr [0x168]                ; FF 36 68 01
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x16c], ax            ; A3 6C 01
        or      ax, ax                          ; 0B C0
        jne     L_01C5                          ; 75 03
        jmp     L_0107                          ; E9 42 FF
L_01C5:
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 05 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
L_01D4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01D8 -- offset 0x01D8 -- 257 instr
; Dispatcher: tabla de decisiones cmp+jcc (257 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_05DA
; calls (intra): sub_0653, sub_0992
; calls (inter): GDI.CREATECOMPATIBLEDC, GDI.DELETEDC, GDI.ESCAPE, GDI.GETDEVICECAPS, GDI.GETSTOCKOBJECT, GDI.SELECTOBJECT (+9 mas)
;----------------------------------------------------------------------
L_01D8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_0212                          ; 75 30
        cmp     word ptr [0x288], 0             ; 83 3E 88 02 00
        jne     L_01FC                          ; 75 13
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A DE 02 00 00 [FIXUP]
L_01FC:
        push    word ptr [0x286]                ; FF 36 86 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x16c]                ; FF 36 6C 01
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
L_0212:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        call    0                               ; E8 D2 FD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0238                          ; 75 03
        jmp     L_0316                          ; E9 DE 00
L_0238:
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 4D 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cdq                                     ; 99
        mov     cx, word ptr [0x1fc]            ; 8B 0E FC 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0265                          ; 75 03
        inc     word ptr [bp - 8]               ; FF 46 F8
L_0265:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A BC 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_02F9                          ; EB 7E
L_027B:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_02C7                          ; EB 40
L_0287:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_02CF                          ; 7D 40
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x298]                ; FF 36 98 02
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1fc]            ; A1 FC 01
        add     word ptr [bp - 6], ax           ; 01 46 FA
        add     word ptr [bp - 0x14], 0x34      ; 83 46 EC 34
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_02C7:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0287                          ; 7C B8
L_02CF:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_02F2                          ; 7D 09
        push    ax                              ; 50
        call    L_0992                          ; E8 A5 06
        add     sp, 2                           ; 83 C4 02
        jmp     L_0304                          ; EB 12
L_02F2:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_0304                          ; 75 0B
L_02F9:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0304                          ; 7D 03
        jmp     L_027B                          ; E9 77 FF
L_0304:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_01D8                          ; E8 C5 FE
        add     sp, 2                           ; 83 C4 02
L_0316:
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
        sub     sp, 0xbe                        ; 81 EC BE 00
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        or      ax, ax                          ; 0B C0
        jne     L_0355                          ; 75 0F
L_0346:
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_0648                          ; E9 F3 02
L_0355:
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7d                        ; B8 7D 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        mov     dx, 0x4000                      ; BA 00 40
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x16e]                ; FF 36 6E 01
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        or      ax, ax                          ; 0B C0
        jne     L_03A0                          ; 75 0B
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.GLOBALFREE           ; 9A B0 03 00 00 [FIXUP]
        jmp     L_0346                          ; EB A6
L_03A0:
        call    0                               ; E8 5D FC
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        or      ax, ax                          ; 0B C0
        jne     L_03B7                          ; 75 0C
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0648                          ; E9 91 02
L_03B7:
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     word ptr [bp - 0x6a], dx        ; 89 56 96
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x298]                ; F7 2E 98 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [0x1f6], ax            ; A3 F6 01
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 5                           ; 05 05 00
        mov     word ptr [0x160], ax            ; A3 60 01
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 2C 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_046C                          ; 75 5B
        or      ax, ax                          ; 0B C0
        jne     L_0428                          ; 75 13
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0428                          ; 74 0C
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 27 05 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_0428:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x68]            ; FF 76 98
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_0653                          ; E8 12 02
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A EA 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_0462                          ; 7C 03
        jmp     L_060A                          ; E9 A8 01
L_0462:
        push    ax                              ; 50
        call    L_0992                          ; E8 2C 05
        add     sp, 2                           ; 83 C4 02
        jmp     L_060A                          ; E9 9E 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_046C -- offset 0x046C -- 122 instr
; Dispatcher: tabla de decisiones cmp+jcc (122 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (intra): sub_0653
; calls (inter): GDI.DELETEOBJECT, GDI.GETDEVICECAPS, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.GETWINDOWTEXT, USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_046C:
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 86 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 3E 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x94], ax        ; 89 86 6C FF
        cdq                                     ; 99
        mov     cx, word ptr [0x160]            ; 8B 0E 60 01
        add     cx, word ptr [0x1fc]            ; 03 0E FC 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        or      ax, ax                          ; 0B C0
        jne     L_04A3                          ; 75 03
        inc     word ptr [bp - 0x6e]            ; FF 46 92
L_04A3:
        mov     word ptr [bp - 0x70], 0         ; C7 46 90 00 00
        jmp     L_05FF                          ; E9 54 01
L_04AB:
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     word ptr [bp - 0x86], 0         ; C7 86 7A FF 00 00
        jmp     L_05CE                          ; E9 15 01
L_04B9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        jl      L_04C4                          ; 7C 03
        jmp     L_05DA                          ; E9 16 01
L_04C4:
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        je      L_0530                          ; 74 64
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 6A 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        mov     word ptr [bp - 0x90], dx        ; 89 96 70 FF
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 0x70]            ; F7 6E 90
        add     word ptr [bp - 0x92], ax        ; 01 86 6E FF
        mov     ax, word ptr [bp - 0x92]        ; 8B 86 6E FF
        mov     dx, word ptr [bp - 0x90]        ; 8B 96 70 FF
        lea     di, [bp - 0x3a]                 ; 8D 7E C6
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 17 06 00 00 [FIXUP]
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp - 0x6c]            ; FF 76 94
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        or      ax, ax                          ; 0B C0
        jne     L_055B                          ; 75 39
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 85 05 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_055B                          ; EB 2B
L_0530:
        lea     di, [bp - 0x3a]                 ; 8D 7E C6
        mov     si, 0x406                       ; BE 06 04
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        lea     di, [bp - 0x7e]                 ; 8D 7E 82
        mov     si, 0x528                       ; BE 28 05
        mov     cx, 7                           ; B9 07 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp - 0x6c]            ; FF 76 94
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
L_055B:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp - 0x6c]            ; FF 76 94
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x68], 0         ; 83 7E 98 00
        jne     L_058C                          ; 75 1D
        cmp     word ptr [bp - 0x74], 0         ; 83 7E 8C 00
        je      L_058C                          ; 74 17
        cmp     word ptr [bp - 0x8e], 0         ; 83 BE 72 FF 00
        jne     L_058C                          ; 75 10
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 58 07 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_058C:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x68]            ; FF 76 98
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_0653                          ; E8 AF 00
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        je      L_05BD                          ; 74 0E
        cmp     word ptr [bp - 0x74], 0         ; 83 7E 8C 00
        je      L_05BD                          ; 74 08
        push    word ptr [bp - 0x74]            ; FF 76 8C
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_05BD:
        mov     ax, word ptr [0x160]            ; A1 60 01
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     word ptr [bp - 0x3c], ax        ; 01 46 C4
        inc     word ptr [bp - 0x70]            ; FF 46 90
        inc     word ptr [bp - 0x86]            ; FF 86 7A FF
L_05CE:
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        cmp     word ptr [bp - 0x86], ax        ; 39 86 7A FF
        jge     L_05DA                          ; 7D 03
        jmp     L_04B9                          ; E9 DF FE
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05DA -- offset 0x05DA -- 44 instr
; Funcion mediana (44 instr, 7 calls).
; tags: calls_gdi, calls_kernel, calls_user, far, medium
; calls (intra): sub_01D8
; calls (inter): GDI.DELETEDC, GDI.ESCAPE, GDI.SELECTOBJECT, KERNEL.GLOBALFREE, KERNEL.GLOBALUNLOCK, USER.DESTROYWINDOW
;----------------------------------------------------------------------
L_05DA:
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 5D 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_05F8                          ; 7D 03
        jmp     L_0462                          ; E9 6A FE
L_05F8:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_060A                          ; 75 0B
L_05FF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        jge     L_060A                          ; 7D 03
        jmp     L_04AB                          ; E9 A1 FE
L_060A:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        call    far USER.DESTROYWINDOW          ; 9A 0E 02 00 00 [FIXUP]
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.GLOBALUNLOCK         ; 9A 09 03 00 00 [FIXUP]
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        call    far KERNEL.GLOBALFREE           ; 9A 9A 03 00 00 [FIXUP]
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A E4 06 00 00 [FIXUP]
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_01D8                          ; E8 A1 FB
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [bp - 0x68], 0         ; 83 7E 98 00
        je      L_0648                          ; 74 08
        push    word ptr [bp - 0x68]            ; FF 76 98
        call    far GDI.DELETEDC                ; 9A 11 01 00 00 [FIXUP]
L_0648:
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
; sub_0653 -- offset 0x0653 -- 302 instr
; Dispatcher: tabla de decisiones cmp+jcc (302 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher, far
; callers: sub_01D8, sub_046C
; calls (inter): GDI.INTERSECTCLIPRECT, GDI.RECTANGLE, GDI.RESTOREDC, GDI.SAVEDC, GDI.SELECTOBJECT, GDI.SETBKMODE (+11 mas)
;----------------------------------------------------------------------
L_0653:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x40                        ; 83 EC 40
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0x3da]            ; A1 DA 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xb                         ; 05 0B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xb                         ; 05 0B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 7A 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A B3 02 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_06A1                          ; 75 03
        jmp     L_0775                          ; E9 D4 00
L_06A1:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06AA                          ; 75 03
        jmp     L_0775                          ; E9 CB 00
L_06AA:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0x1f6]            ; A1 F6 01
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x160]            ; 03 06 60 01
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 0xa]             ; FF 77 0A
        call    far GDI.SELECTOBJECT            ; 9A 66 07 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, word ptr [bx]               ; 8B 37
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        imul    word ptr [0x298]                ; F7 2E 98 02
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp + 8]           ; 03 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0x298]            ; A1 98 02
        imul    si                              ; F7 EE
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bx + 2]               ; FF 77 02
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_075F                          ; 75 0C
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 1A 01 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_075F:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
L_0775:
        mov     ax, word ptr [0x3da]            ; A1 DA 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A BD 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_07E4                          ; EB 3F
L_07A5:
        mov     byte ptr [bp - 0x40], 0x28      ; C6 46 C0 28
        mov     byte ptr [bp - 0x3f], 0         ; C6 46 C1 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x414                       ; B8 14 04
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far GDI.TEXTOUT                 ; 9A 91 06 00 00 [FIXUP]
        mov     ax, word ptr [0x1fc]            ; A1 FC 01
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_07E4:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_07A5                          ; 7C B9
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x1f6]                ; FF 36 F6 01
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x160]            ; 03 06 60 01
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A 20 08 00 00 [FIXUP]
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        add     si, word ptr [0x1fc]            ; 03 36 FC 01
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        push    word ptr [0x1f6]                ; FF 36 F6 01
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A 3E 08 00 00 [FIXUP]
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        add     si, word ptr [0x1fc]            ; 03 36 FC 01
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [si + 3]                    ; 8D 44 03
        push    ax                              ; 50
        push    word ptr [0x1f6]                ; FF 36 F6 01
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ax                              ; 50
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_089A                          ; EB 44
L_0856:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_08A1                          ; 74 34
        cmp     word ptr [0x16c], 0             ; 83 3E 6C 01 00
        je      L_0886                          ; 74 12
        push    word ptr [0x16c]                ; FF 36 6C 01
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_089A                          ; 75 14
L_0886:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_089A:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        je      L_0856                          ; 74 B5
L_08A1:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_08AD                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_08AF                          ; EB 02
L_08AD:
        sub     ax, ax                          ; 2B C0
L_08AF:
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
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0906                          ; 74 37
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_08DF                          ; 74 0B
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_08DC                          ; 75 03
        jmp     L_0971                          ; E9 95 00
L_08DC:
        jmp     L_0985                          ; E9 A6 00
L_08DF:
        mov     word ptr [0x1fe], 1             ; C7 06 FE 01 01 00
        push    word ptr [0x286]                ; FF 36 86 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A CD 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A 0E 06 00 00 [FIXUP]
        mov     word ptr [0x16c], 0             ; C7 06 6C 01 00 00
L_0900:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0987                          ; E9 81 00
L_0906:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x458], ax            ; A3 58 04
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0956                          ; 74 3B
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 8B 06 00 00 [FIXUP]
        add     ax, 0x359                       ; 05 59 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0940                          ; EB 13
L_092D:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0947                          ; 74 0E
        cmp     al, 0x3a                        ; 3C 3A
        je      L_0947                          ; 74 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
L_0940:
        cmp     word ptr [bp - 6], 0x35a        ; 81 7E FA 5A 03
        jae     L_092D                          ; 73 E6
L_0947:
        inc     word ptr [bp - 6]               ; FF 46 FA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0960                          ; EB 0A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0956 -- offset 0x0956 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: calls_user, far, small
; calls (inter): USER.ENABLEMENUITEM, USER.SETDLGITEMTEXT, USER.SETFOCUS
;----------------------------------------------------------------------
L_0956:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
L_0960:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0900                          ; EB 8F
L_0971:
        push    word ptr [0x458]                ; FF 36 58 04
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0900                          ; E9 7B FF
L_0985:
        sub     ax, ax                          ; 2B C0
L_0987:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0992 -- offset 0x0992 -- 261 instr
; Dispatcher: tabla de decisiones cmp+jcc (261 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_01D8
; calls (intra): sub_0C49
; calls (inter): GDI.DELETEOBJECT, GDI.GETOBJECT, USER.CLOSECLIPBOARD, USER.EMPTYCLIPBOARD, USER.GETCLIPBOARDDATA, USER.INFLATERECT (+6 mas)
;----------------------------------------------------------------------
L_0992:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x288], 1             ; C7 06 88 02 01 00
        test    word ptr [bp + 4], 0x4000       ; F7 46 04 00 40
        je      L_09D1                          ; 74 2F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xfffb                      ; 3D FB FF
        je      L_09BE                          ; 74 14
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_09CC                          ; 74 1D
        cmp     ax, 0xfffd                      ; 3D FD FF
        jl      L_09B9                          ; 7C 05
        cmp     ax, 0xfffe                      ; 3D FE FF
        jle     L_09D1                          ; 7E 18
L_09B9:
        mov     ax, 0x21                        ; B8 21 00
        jmp     L_09C1                          ; EB 03
L_09BE:
        mov     ax, 0x26                        ; B8 26 00
L_09C1:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 21 04 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_09D1                          ; EB 05
L_09CC:
        mov     ax, 0x27                        ; B8 27 00
        jmp     L_09C1                          ; EB F0
L_09D1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_0A09                          ; 75 20
        push    word ptr [0x29a]                ; FF 36 9A 02
        cmp     word ptr [bp + 6], 0x71         ; 83 7E 06 71
        jne     L_09F8                          ; 75 05
        mov     ax, 0x300                       ; B8 00 03
        jmp     L_09FB                          ; EB 03
L_09F8:
        mov     ax, 0x301                       ; B8 01 03
L_09FB:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 15 0B 00 00 [FIXUP]
        jmp     L_0AEA                          ; E9 E1 00
L_0A09:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        jne     L_0A13                          ; 75 03
        jmp     L_0AEA                          ; E9 D7 00
L_0A13:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.OPENCLIPBOARD          ; 9A 34 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A23                          ; 75 03
        jmp     L_0AEA                          ; E9 C7 00
L_0A23:
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x532]            ; A1 32 05
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 6], 0x72         ; 83 7E 06 72
        jne     L_0A71                          ; 75 3D
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A 5D 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        push    word ptr [0x532]                ; FF 36 32 05
        call    L_0C49                          ; E8 FB 01
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x532], ax            ; A3 32 05
        or      ax, ax                          ; 0B C0
        jne     L_0AD3                          ; 75 7B
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x532], ax            ; A3 32 05
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 25 0B 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0AD3                          ; EB 62
L_0A71:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A A0 0B 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A B2 0B 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        mov     word ptr [0x2aa], ax            ; A3 AA 02
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        add     ax, word ptr [0x28c]            ; 03 06 8C 02
        mov     word ptr [0x2a8], ax            ; A3 A8 02
L_0AD3:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0AE5                          ; 74 0C
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
L_0AE5:
        call    far USER.CLOSECLIPBOARD         ; 9A 3C 0C 00 00 [FIXUP]
L_0AEA:
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
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_0B2F                          ; 75 28
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x302                       ; B8 02 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 97 07 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_0B20                          ; 74 03
        jmp     L_0C40                          ; E9 20 01
L_0B20:
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 34 0C 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_0C40                          ; E9 11 01
L_0B2F:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B3F                          ; 75 03
        jmp     L_0C40                          ; E9 01 01
L_0B3F:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0B52                          ; 75 03
        jmp     L_0C2F                          ; E9 DD 00
L_0B52:
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0C49                          ; E8 DE 00
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0B7B                          ; 75 06
        mov     ax, 0x12                        ; B8 12 00
        jmp     L_0C32                          ; E9 B7 00
L_0B7B:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0BBF                          ; 74 3D
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 12 0C 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 24 0C 00 00 [FIXUP]
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A FA 0C 00 00 [FIXUP]
L_0BBF:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x528], ax            ; A3 28 05
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x52a], ax            ; A3 2A 05
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [0x52e], ax            ; A3 2E 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x532], ax            ; A3 32 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A F0 0B 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.SETFOCUS               ; 9A 6B 09 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        jmp     L_0C3B                          ; EB 0C
L_0C2F:
        mov     ax, 0x22                        ; B8 22 00
L_0C32:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A C3 09 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_0C3B:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
L_0C40:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C49 -- offset 0x0C49 -- 317 instr
; Dispatcher: tabla de decisiones cmp+jcc (317 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_0992
; calls (intra): sub_0F9F, sub_0FD0
; calls (inter): GDI.BITBLT, GDI.CREATEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.DELETEOBJECT, GDI.SELECTOBJECT, USER.GETCLIENTRECT (+8 mas)
;----------------------------------------------------------------------
L_0C49:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 77 0C 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FE 03 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D03                          ; 74 73
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0D03                          ; 74 6D
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SELECTOBJECT            ; 9A C8 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0D03                          ; 74 5E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx + 4]               ; FF 77 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D03                          ; 74 40
        push    word ptr [bp - 2]               ; FF 76 FE
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A F2 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0CF6                          ; 74 26
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp - 6]               ; FF 76 FA
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D03                          ; 75 0D
L_0CF6:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEOBJECT            ; 9A 0D 0D 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_0D03:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D11                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEOBJECT            ; 9A 1B 0D 00 00 [FIXUP]
L_0D11:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0D1F                          ; 74 08
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEOBJECT            ; 9A B9 05 00 00 [FIXUP]
L_0D1F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
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
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0D3F                          ; 75 03
        jmp     L_0E36                          ; E9 F7 00
L_0D3F:
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0D4C                          ; 74 08
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_0DA2                          ; 74 59
        jmp     L_0F27                          ; E9 DB 01
L_0D4C:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D63                          ; 75 03
        jmp     L_0F27                          ; E9 C4 01
L_0D63:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x28c]            ; 2B 06 8C 02
        mov     word ptr [0x3dc], ax            ; A3 DC 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x1ba]            ; 2B 06 BA 01
        mov     word ptr [0x3de], ax            ; A3 DE 03
        mov     word ptr [0x43e], 1             ; C7 06 3E 04 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     word ptr [0x404], dx            ; 89 16 04 04
        jmp     L_0F27                          ; E9 85 01
L_0DA2:
        cmp     word ptr [0x43e], 0             ; 83 3E 3E 04 00
        jne     L_0DAC                          ; 75 03
        jmp     L_0F27                          ; E9 7B 01
L_0DAC:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        cmp     word ptr [0x2a6], ax            ; 39 06 A6 02
        jne     L_0DC3                          ; 75 09
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        cmp     word ptr [0x2a4], ax            ; 39 06 A4 02
        je      L_0E21                          ; 74 5E
L_0DC3:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        add     ax, word ptr [0x528]            ; 03 06 28 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 79 0F 00 00 [FIXUP]
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [0x52e], ax            ; A3 2E 05
        push    word ptr [0x29a]                ; FF 36 9A 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 11 0E 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A B0 0A 00 00 [FIXUP]
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0E21                          ; 74 05
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
L_0E21:
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        mov     word ptr [0x404], ax            ; A3 04 04
        mov     word ptr [0x43e], 0             ; C7 06 3E 04 00 00
        jmp     L_0F27                          ; E9 F1 00
L_0E36:
        cmp     word ptr [0x43e], 0             ; 83 3E 3E 04 00
        jne     L_0E40                          ; 75 03
        jmp     L_0F27                          ; E9 E7 00
L_0E40:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [0x2a4]            ; 03 06 A4 02
        sub     ax, word ptr [0x402]            ; 2B 06 02 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x3dc]            ; A1 DC 03
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0E60                          ; 7E 0A
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        add     ax, word ptr [0x402]            ; 03 06 02 04
        jmp     L_0E7A                          ; EB 1A
L_0E60:
        mov     si, word ptr [0x28c]            ; 8B 36 8C 02
        sub     si, word ptr [0x2a8]            ; 2B 36 A8 02
        add     si, word ptr [0x2a4]            ; 03 36 A4 02
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        jge     L_0E7D                          ; 7D 0C
        mov     ax, word ptr [0x402]            ; A1 02 04
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        add     ax, si                          ; 03 C6
L_0E7A:
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
L_0E7D:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [0x2a6]            ; 03 06 A6 02
        sub     ax, word ptr [0x404]            ; 2B 06 04 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x3de]            ; A1 DE 03
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0E9D                          ; 7E 0A
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        add     ax, word ptr [0x404]            ; 03 06 04 04
        jmp     L_0EB7                          ; EB 1A
L_0E9D:
        mov     si, word ptr [0x1ba]            ; 8B 36 BA 01
        sub     si, word ptr [0x2aa]            ; 2B 36 AA 02
        add     si, word ptr [0x2a6]            ; 03 36 A6 02
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        jge     L_0EBA                          ; 7D 0C
        mov     ax, word ptr [0x404]            ; A1 04 04
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        add     ax, si                          ; 03 C6
L_0EB7:
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
L_0EBA:
        mov     ax, word ptr [0x402]            ; A1 02 04
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_0ECA                          ; 75 08
        mov     ax, word ptr [0x404]            ; A1 04 04
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_0F27                          ; 74 5D
L_0ECA:
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.GETDC                  ; 9A AA 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 EE 00
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [0x402]            ; 2B 06 02 04
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [0x404]            ; 2B 06 04 04
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     word ptr [0x404], dx            ; 89 16 04 04
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 B8 00
        add     sp, 4                           ; 83 C4 04
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.RELEASEDC              ; 9A C8 0F 00 00 [FIXUP]
L_0F27:
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
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0F60                          ; 74 1E
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        add     ax, word ptr [0x528]            ; 03 06 28 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        jmp     L_0F77                          ; EB 17
L_0F60:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        add     ax, 5                           ; 05 05 00
        push    ax                              ; 50
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     ax, 5                           ; 05 05 00
L_0F77:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 8F 0A 00 00 [FIXUP]
        call    L_0F9F                          ; E8 1F 00
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
        call    L_0F9F                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0F9F -- offset 0x0F9F -- 19 instr
; Funcion sin clasificar definitiva (19 instr).
; tags: calls_user, small
; callers: sub_0C49
; calls (intra): sub_0FD0
; calls (inter): USER.GETDC, USER.RELEASEDC
;----------------------------------------------------------------------
L_0F9F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.GETDC                  ; 9A 63 0C 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 13 00
        add     sp, 4                           ; 83 C4 04
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.RELEASEDC              ; 9A 86 0C 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FD0 -- offset 0x0FD0 -- 186 instr
; Dispatcher: tabla de decisiones cmp+jcc (186 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_0C49, sub_0F9F
; calls (inter): GDI.PATBLT, GDI.SELECTOBJECT, USER.INVALIDATERECT, USER.OFFSETRECT
;----------------------------------------------------------------------
L_0FD0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x1f8]                ; FF 36 F8 01
        call    far GDI.SELECTOBJECT            ; 9A 9D 0C 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     cx, word ptr [bx + 2]           ; 8B 4F 02
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        push    cx                              ; 51
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 43 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 67 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 8]               ; FF 76 F8
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 8C 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_10ED                          ; 74 32
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_10CF                          ; 74 0F
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_10F5                          ; 74 30
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_10E5                          ; 74 1B
        sub     ax, ax                          ; 2B C0
        jmp     L_1195                          ; E9 C6 00
L_10CF:
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        sub     word ptr [bp - 4], ax           ; 29 46 FC
L_10D5:
        mov     ax, 0x27                        ; B8 27 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        jle     L_10FD                          ; 7E 1A
        jmp     L_110E                          ; EB 29
L_10E5:
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     word ptr [bp - 4], ax           ; 01 46 FC
        jmp     L_10D5                          ; EB E8
L_10ED:
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        jmp     L_10D5                          ; EB E0
L_10F5:
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_10D5                          ; EB D8
L_10FD:
        mov     si, word ptr [0x28c]            ; 8B 36 8C 02
        sub     si, word ptr [0x2a8]            ; 2B 36 A8 02
        add     si, word ptr [0x2a4]            ; 03 36 A4 02
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        jge     L_1111                          ; 7D 03
L_110E:
        mov     word ptr [bp - 6], si           ; 89 76 FA
L_1111:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jg      L_1130                          ; 7F 11
        mov     si, word ptr [0x1ba]            ; 8B 36 BA 01
        sub     si, word ptr [0x2aa]            ; 2B 36 AA 02
        add     si, word ptr [0x2a6]            ; 03 36 A6 02
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jge     L_1133                          ; 7D 03
L_1130:
        mov     word ptr [bp - 4], si           ; 89 76 FC
L_1133:
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_1143                          ; 75 08
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_118D                          ; 74 4A
L_1143:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 89 11 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x52e], ax            ; A3 2E 05
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FB 0E 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF 0D 00 00 [FIXUP]
L_118D:
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        mov     ax, 1                           ; B8 01 00
L_1195:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

CARDFILE_TEXT ENDS

        END
