; AUTO-GENERATED from original WRITE segment 21
; segment_size=1533 bytes, flags=0xf130
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
        sub     sp, 0x380                       ; 81 EC 80 03
        push    si                              ; 56
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 0x32c], ax       ; 89 86 D4 FC
        add     ax, 6                           ; 05 06 00
        mov     word ptr [bp - 0x226], ax       ; 89 86 DA FD
        mov     byte ptr [bp - 0x32a], 0        ; C6 86 D6 FC 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_002D                          ; 75 03
        jmp     L_01E1                          ; E9 B4 01
L_002D:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0035                          ; 75 03
        jmp     L_01CD                          ; E9 98 01
L_0035:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0045                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0042                          ; 75 03
        jmp     L_01FE                          ; E9 BC 01
L_0042:
        jmp     L_01DC                          ; E9 97 01
L_0045:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        mov     ax, word ptr [0x1bc8]           ; A1 C8 1B
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        mov     ax, word ptr [0x1010]           ; A1 10 10
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        mov     ax, word ptr [0xf94]            ; A1 94 0F
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x32a]                ; 8D 86 D6 FC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x222]                ; 8D 86 DE FD
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 16 01 00 00 [FIXUP]
        sub     al, al                          ; 2A C0
        mov     byte ptr [bp - 0x124], al       ; 88 86 DC FE
        mov     byte ptr [bp - 0x123], al       ; 88 86 DD FE
        lea     ax, [bp - 0x222]                ; 8D 86 DE FD
        mov     word ptr [bp - 0x224], ax       ; 89 86 DC FD
L_00A2:
        mov     bx, word ptr [bp - 0x224]       ; 8B 9E DC FD
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_00FA                          ; 75 4F
        cmp     word ptr [0x1bc8], 0            ; 83 3E C8 1B 00
        jne     L_00B5                          ; 75 03
        jmp     L_01A6                          ; E9 F1 00
L_00B5:
        cmp     word ptr [0xf94], 0             ; 83 3E 94 0F 00
        jne     L_00BF                          ; 75 03
        jmp     L_01A6                          ; E9 E7 00
L_00BF:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        call    L_0586                          ; E8 B3 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 6A 01 00 00 [FIXUP]
        or      dx, dx                          ; 0B D2
        jge     L_00F4                          ; 7D 03
        jmp     L_019B                          ; E9 A7 00
L_00F4:
        mov     ax, 1                           ; B8 01 00
        jmp     L_019D                          ; E9 A3 00
L_00FA:
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x224]       ; 8B 86 DC FD
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x32a]                ; 8D 86 D6 FC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x326]                ; 8D 86 DA FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 4D 03 00 00 [FIXUP]
        mov     byte ptr [bp - 0x227], 0        ; C6 86 D9 FD 00
        cmp     byte ptr [bp - 0x326], 0        ; 80 BE DA FC 00
        je      L_0189                          ; 74 63
        lea     ax, [bp - 0x326]                ; 8D 86 DA FC
        push    ax                              ; 50
        lea     ax, [bp - 0x330]                ; 8D 86 D0 FC
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_65                   ; 9A 60 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x332], ax       ; 89 86 CE FC
        mov     word ptr [bp - 0x334], 0        ; C7 86 CC FC 00 00
        jmp     L_017F                          ; EB 3A
L_0145:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        push    word ptr [bp - 0x224]           ; FF B6 DC FD
        push    word ptr [bp - 0x330]           ; FF B6 D0 FC
        call    L_0586                          ; E8 31 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A 3B 02 00 00 [FIXUP]
        push    word ptr [bp - 0x330]           ; FF B6 D0 FC
        call    far _entry_61                   ; 9A CB 02 00 00 [FIXUP]
        add     word ptr [bp - 0x330], ax       ; 01 86 D0 FC
        inc     word ptr [bp - 0x334]           ; FF 86 CC FC
L_017F:
        mov     ax, word ptr [bp - 0x332]       ; 8B 86 CE FC
        cmp     word ptr [bp - 0x334], ax       ; 39 86 CC FC
        jl      L_0145                          ; 7C BC
L_0189:
        mov     bx, word ptr [bp - 0x224]       ; 8B 9E DC FD
        inc     word ptr [bp - 0x224]           ; FF 86 DC FD
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0199                          ; 75 03
        jmp     L_00A2                          ; E9 09 FF
L_0199:
        jmp     L_0189                          ; EB EE
L_019B:
        sub     ax, ax                          ; 2B C0
L_019D:
        or      ax, ax                          ; 0B C0
        je      L_01A6                          ; 74 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_01A8                          ; EB 02
L_01A6:
        sub     ax, ax                          ; 2B C0
L_01A8:
        mov     bx, word ptr [bp - 0x226]       ; 8B 9E DA FD
        mov     word ptr [bx], ax               ; 89 07
        or      ax, ax                          ; 0B C0
        jne     L_01C7                          ; 75 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 5A 02 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 63 02 00 00 [FIXUP]
L_01C7:
        mov     ax, 1                           ; B8 01 00
        jmp     L_057A                          ; E9 AD 03
L_01CD:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_01DC                          ; 74 09
L_01D3:
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A A0 03 00 00 [FIXUP]
L_01DC:
        sub     ax, ax                          ; 2B C0
        jmp     L_057A                          ; E9 99 03
L_01E1:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_01ED                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_01ED:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_01DC                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01DC                          ; EB DE
L_01FE:
        mov     word ptr [bp - 0x32e], 0        ; C7 86 D2 FC 00 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_022A                          ; 74 1E
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0214                          ; 75 03
        jmp     L_0547                          ; E9 33 03
L_0214:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_01DC                          ; 75 C3
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        jne     L_0224                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0226                          ; EB 02
L_0224:
        sub     ax, ax                          ; 2B C0
L_0226:
        mov     word ptr [bp - 0x32e], ax       ; 89 86 D2 FC
L_022A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A C1 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x328], ax       ; 89 86 D8 FC
        inc     ax                              ; 40
        jne     L_0272                          ; 75 2C
        mov     bx, word ptr [bp - 0x226]       ; 8B 9E DA FD
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_0252                          ; 75 03
        jmp     L_01C7                          ; E9 75 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0252 -- offset 0x0252 -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_user, small
; calls (inter): USER.ENABLEWINDOW, USER.GETDLGITEM
;----------------------------------------------------------------------
L_0252:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 8D 02 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 97 02 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x226]       ; 8B 9E DA FD
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_01C7                          ; E9 55 FF
L_0272:
        cmp     word ptr [bp - 0x32e], 0        ; 83 BE D2 FC 00
        je      L_02A6                          ; 74 2D
        mov     bx, word ptr [bp - 0x226]       ; 8B 9E DA FD
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_0285                          ; 74 03
        jmp     L_01C7                          ; E9 42 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0285 -- offset 0x0285 -- 132 instr
; Funcion compleja: 132 instrucciones, 5 llamadas, 7 branches.
; tags: calls_kernel, calls_user, complex
; calls (inter): KERNEL.GETPROFILESTRING, KERNEL.LOCALFREE, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.SENDDLGITEMMESSAGE
;----------------------------------------------------------------------
L_0285:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x226]       ; 8B 9E DA FD
        mov     word ptr [bx], 1                ; C7 07 01 00
        jmp     L_01C7                          ; E9 21 FF
L_02A6:
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0x328]           ; FF B6 D8 FC
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 7B 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x123]           ; 8D 82 DD FE
        mov     word ptr [bp - 0x330], ax       ; 89 86 D0 FC
        jmp     L_02DF                          ; EB 04
L_02DB:
        dec     word ptr [bp - 0x330]           ; FF 8E D0 FC
L_02DF:
        mov     bx, word ptr [bp - 0x330]       ; 8B 9E D0 FC
        cmp     byte ptr [bx - 1], 0x20         ; 80 7F FF 20
        jne     L_02DB                          ; 75 F2
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        mov     word ptr [bp - 0x338], ax       ; 89 86 C8 FC
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far _entry_68                   ; 9A FF FF 00 00 [FIXUP]
L_02FE:
        push    word ptr [bp - 0x338]           ; FF B6 C8 FC
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x338], ax       ; 89 86 C8 FC
        or      ax, ax                          ; 0B C0
        jne     L_0316                          ; 75 03
        jmp     L_03A7                          ; E9 91 00
L_0316:
        push    ax                              ; 50
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        mov     al, byte ptr [0xa6e]            ; A0 6E 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_66                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03A7                          ; 74 7D
        mov     bx, word ptr [bp - 0x338]       ; 8B 9E C8 FC
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, 0x130                       ; B8 30 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x32a]                ; 8D 86 D6 FC
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x326]                ; 8D 86 DA FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x326]                ; 8D 86 DA FC
        push    ax                              ; 50
        lea     ax, [bp - 0x338]                ; 8D 86 C8 FC
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        call    far _entry_65                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        mov     ax, word ptr [0x1bc8]           ; A1 C8 1B
        cmp     word ptr [bx], ax               ; 39 07
        je      L_0375                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A D0 03 00 00 [FIXUP]
L_0375:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        call    far _entry_61                   ; 9A D8 03 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x336], ax       ; 89 86 CA FC
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
        inc     ax                              ; 40
        jne     L_03AE                          ; 75 19
        mov     word ptr [0x1bc8], 0            ; C7 06 C8 1B 00 00
L_039B:
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_056C                          ; E9 C5 01
L_03A7:
        inc     word ptr [bp - 0x338]           ; FF 86 C8 FC
        jmp     L_02FE                          ; E9 50 FF
L_03AE:
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ax                              ; 50
        mov     bx, word ptr [0x1bc8]           ; 8B 1E C8 1B
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x336]           ; FF B6 CA FC
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        mov     ax, word ptr [0x1010]           ; A1 10 10
        cmp     word ptr [bx + 2], ax           ; 39 47 02
        je      L_03D4                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_03D4:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x336], ax       ; 89 86 CA FC
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 33 04 00 00 [FIXUP]
        mov     word ptr [0x1010], ax           ; A3 10 10
        inc     ax                              ; 40
        jne     L_03FA                          ; 75 08
        mov     word ptr [0x1010], 0            ; C7 06 10 10 00 00
        jmp     L_039B                          ; EB A1
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03FA -- offset 0x03FA -- 25 instr
; Funcion sin clasificar definitiva (25 instr).
; tags: calls_kernel, small
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_03FA:
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [0x1010]           ; 8B 1E 10 10
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x336]           ; FF B6 CA FC
        call    far _entry_62                   ; 9A 55 04 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        mov     ax, word ptr [0xf94]            ; A1 94 0F
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        je      L_041E                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A 20 05 00 00 [FIXUP]
L_041E:
        push    word ptr [bp - 0x330]           ; FF B6 D0 FC
        call    far _entry_61                   ; 9A 69 04 00 00 [FIXUP]
        inc     ax                              ; 40
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x336], ax       ; 89 86 CA FC
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 8B 03 00 00 [FIXUP]
        mov     word ptr [0xf94], ax            ; A3 94 0F
        inc     ax                              ; 40
        jne     L_0446                          ; 75 09
        mov     word ptr [0xf94], 0             ; C7 06 94 0F 00 00
        jmp     L_039B                          ; E9 55 FF
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0446 -- offset 0x0446 -- 35 instr
; Funcion mediana (35 instr, 1 calls).
; tags: calls_kernel, medium
; calls (inter): KERNEL.LOADLIBRARY
;----------------------------------------------------------------------
L_0446:
        push    word ptr [bp - 0x330]           ; FF B6 D0 FC
        mov     bx, word ptr [0xf94]            ; 8B 1E 94 0F
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 0x336]           ; FF B6 CA FC
        call    far _entry_62                   ; 9A BE 03 00 00 [FIXUP]
        mov     ax, 0xb2                        ; B8 B2 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x380]                ; 8D 86 80 FC
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_61                   ; 9A 7A 04 00 00 [FIXUP]
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 80 04 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xb2                        ; B8 B2 00
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 97 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 9E 05 00 00 [FIXUP]
        lea     ax, [bp - 0x380]                ; 8D 86 80 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LOADLIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x33e], ax       ; 89 86 C2 FC
        cmp     ax, 0x20                        ; 3D 20 00
        ja      L_04AC                          ; 77 14
        cmp     ax, 2                           ; 3D 02 00
        jne     L_04A0                          ; 75 03
        jmp     L_01D3                          ; E9 33 FD
L_04A0:
        mov     ax, 0x2018                      ; B8 18 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A CB 04 00 00 [FIXUP]
        jmp     L_01D3                          ; E9 27 FD
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04AC -- offset 0x04AC -- 69 instr
; Funcion mediana (69 instr, 3 calls).
; tags: calls_kernel, far, medium
; calls (inter): KERNEL.FREELIBRARY, KERNEL.GETPROCADDRESS, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_04AC:
        push    word ptr [bp - 0x33e]           ; FF B6 C2 FC
        mov     ax, 0x198                       ; B8 98 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x33c], ax       ; 89 86 C4 FC
        mov     word ptr [bp - 0x33a], dx       ; 89 96 C6 FC
        or      ax, dx                          ; 0B C2
        jne     L_04DB                          ; 75 15
        mov     ax, 0x2018                      ; B8 18 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x33e]           ; FF B6 C2 FC
        call    far KERNEL.FREELIBRARY          ; 9A 04 05 00 00 [FIXUP]
        jmp     L_01D3                          ; E9 F8 FC
L_04DB:
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A D8 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x33e]           ; FF B6 C2 FC
        lea     ax, [bp - 0x122]                ; 8D 86 DE FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x330]       ; 8B 86 D0 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        lcall   [bp - 0x33c]                    ; FF 9E C4 FC
        or      ax, ax                          ; 0B C0
        jne     L_050B                          ; 75 0C
        push    word ptr [bp - 0x33e]           ; FF B6 C2 FC
        call    far KERNEL.FREELIBRARY          ; 9A 10 05 00 00 [FIXUP]
        jmp     L_01DC                          ; E9 D1 FC
L_050B:
        push    word ptr [bp - 0x33e]           ; FF B6 C2 FC
        call    far KERNEL.FREELIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALFREE            ; 9A 30 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALFREE            ; 9A 3B 05 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        push    word ptr [bx]                   ; FF 37
        call    far KERNEL.LOCALFREE            ; 9A 71 03 00 00 [FIXUP]
        mov     word ptr [0x6e], 0              ; C7 06 6E 00 00 00
        jmp     L_056C                          ; EB 25
L_0547:
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x1bc8], ax           ; A3 C8 1B
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        add     word ptr [bp - 0x32c], 2        ; 83 86 D4 FC 02
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x1010], ax           ; A3 10 10
        mov     bx, word ptr [bp - 0x32c]       ; 8B 9E D4 FC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0xf94], ax            ; A3 94 0F
L_056C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01C7                          ; E9 4D FC
L_057A:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0586 -- offset 0x0586 -- 51 instr
; Funcion mediana (51 instr, 0 calls).
; tags: medium
;----------------------------------------------------------------------
L_0586:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A CB 05 00 00 [FIXUP]
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _entry_45                   ; 9A BD 05 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, 0xa6e                       ; B8 6E 0A
        push    ax                              ; 50
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far _entry_68                   ; 9A FA 02 00 00 [FIXUP]
        mov     ax, 0xa6f                       ; B8 6F 0A
        push    ax                              ; 50
        push    si                              ; 56
        mov     al, byte ptr [0xa6e]            ; A0 6E 0A
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_45                   ; 9A D1 05 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 4]               ; FF 76 04
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_61                   ; 9A 73 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        mov     ax, 0x1114                      ; B8 14 11
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05F7                          ; 74 14
        jmp     L_05F2                          ; EB 0D
L_05E5:
        mov     al, byte ptr [si]               ; 8A 04
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [si], al               ; 88 04
        inc     si                              ; 46
L_05F2:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_05E5                          ; 75 EE
L_05F7:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        push    es                              ; 06

WRITE_TEXT ENDS

        END
