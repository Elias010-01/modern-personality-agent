; AUTO-GENERATED from original IBMGRX segment 2
; segment_size=4237 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

IBMGRX_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0000 -- offset 0x0000 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: far, small
;----------------------------------------------------------------------

L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_002D                          ; 72 1C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 0xff                        ; 81 E6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 0x314]  ; 8A 80 14 03
        sub     ah, ah                          ; 2A E4
        jmp     L_002F                          ; EB 02
L_002D:
        sub     ax, ax                          ; 2B C0
L_002F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_003B -- offset 0x003B -- 49 instr
; Funcion mediana (49 instr, 0 calls).
; tags: medium
; callers: sub_0B61, sub_0D6E
;----------------------------------------------------------------------
L_003B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_0071                          ; 7C 28
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_005B                          ; 75 08
        test    word ptr es:[bx + 0x26], 0x100  ; 26 F7 47 26 00 01
        jne     L_0071                          ; 75 16
L_005B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x264]            ; A1 64 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x266]            ; A0 66 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 97 00 00 00 [FIXUP]
L_0071:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_009B                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_009B                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x26a]            ; A1 6A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x26c]            ; A0 6C 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A B7 00 00 00 [FIXUP]
L_009B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_00BB                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x25e]            ; A1 5E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x260]            ; A0 60 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A F3 00 00 00 [FIXUP]
L_00BB:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00C1 -- offset 0x00C1 -- 313 instr
; Dispatcher: tabla de decisiones cmp+jcc (313 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0B61, sub_0D6E
; calls (intra): sub_03E7, sub_058F, sub_064B
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.FREERESOURCE, KERNEL.GETMODULEHANDLE, KERNEL.GLOBALUNLOCK, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE (+1 mas)
;----------------------------------------------------------------------
L_00C1:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_00F7                          ; 7C 28
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_00E1                          ; 75 08
        test    word ptr es:[bx + 0x26], 0x100  ; 26 F7 47 26 00 01
        jne     L_00F7                          ; 75 16
L_00E1:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x267]            ; A1 67 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x269]            ; A0 69 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 1D 01 00 00 [FIXUP]
L_00F7:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0121                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0121                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x26d]            ; A1 6D 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x26f]            ; A0 6F 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 3D 01 00 00 [FIXUP]
L_0121:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_0141                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x261]            ; A1 61 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x263]            ; A0 63 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
L_0141:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_058F                          ; E8 28 04
        mov     word ptr [bp - 0xa], 4          ; C7 46 F6 04 00
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, 0x144                       ; BE 44 01
        jmp     L_0225                          ; E9 A9 00
L_017C:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        cmp     byte ptr [bp - 0x19], al        ; 38 46 E7
        je      L_018D                          ; 74 04
        add     byte ptr [bp - 5], 8            ; 80 46 FB 08
L_018D:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        cmp     byte ptr [bp - 0x17], al        ; 38 46 E9
        je      L_0199                          ; 74 04
        add     byte ptr [bp - 5], 0x10         ; 80 46 FB 10
L_0199:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        cmp     byte ptr [bp - 0x18], al        ; 38 46 E8
        je      L_01A5                          ; 74 04
        add     byte ptr [bp - 5], 0x20         ; 80 46 FB 20
L_01A5:
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        je      L_01D2                          ; 74 27
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_01D2                          ; 74 14
        or      ax, ax                          ; 0B C0
        jle     L_01C6                          ; 7E 04
        mov     cl, 6                           ; B1 06
        jmp     L_01CD                          ; EB 07
L_01C6:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        mov     cl, 7                           ; B1 07
L_01CD:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_01D2:
        cmp     byte ptr [bp - 0x15], 0         ; 80 7E EB 00
        je      L_01F8                          ; 74 20
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x15]        ; 8A 46 EB
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_01F8                          ; 74 0D
        or      ax, ax                          ; 0B C0
        jg      L_01F1                          ; 7F 02
        neg     ax                              ; F7 D8
L_01F1:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
L_01F8:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        cwde                                    ; 98
        xor     ax, cx                          ; 33 C1
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_021F                          ; 73 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_021F:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 8                           ; 83 C6 08
L_0225:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0230                          ; 7D 03
        jmp     L_017C                          ; E9 4C FF
L_0230:
        mov     ax, 0x16c                       ; B8 6C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_026B                          ; 75 03
        jmp     L_031E                          ; E9 B3 00
L_026B:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_0282                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0321                          ; E9 9F 00
L_0282:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0x84          ; 26 C7 07 84 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x144                       ; 05 44 01
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_03E7                          ; E8 2D 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        or      al, al                          ; 0A C0
        je      L_02D1                          ; 74 05
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
L_02D1:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_02E8                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
L_02E8:
        cmp     byte ptr [0x260], 0             ; 80 3E 60 02 00
        je      L_02FD                          ; 74 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
L_02FD:
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bp - 0x13]            ; F6 6E ED
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
L_031E:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
L_0321:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5e                        ; 83 EC 5E
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_034A                          ; 75 06
L_0344:
        mov     ax, 1                           ; B8 01 00
        jmp     L_03DC                          ; E9 92 00
L_034A:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0375                          ; 74 23
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0375                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        call    L_064B                          ; E8 EB 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_0344                          ; 74 DE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x144                       ; 05 44 01
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        jmp     L_038C                          ; EB 17
L_0375:
        mov     word ptr [bp - 0x3e], 0x144     ; C7 46 C2 44 01
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
L_0384:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x3c], ax        ; 39 46 C4
        jge     L_03D9                          ; 7D 4D
L_038C:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_03E7                          ; E8 4C 00
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_03E7                          ; E8 3D 00
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        je      L_03D9                          ; 74 11
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_03D9                          ; 75 09
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        add     word ptr [bp - 0x3e], 8         ; 83 46 C2 08
        jmp     L_0384                          ; EB AB
L_03D9:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
L_03DC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03E7 -- offset 0x03E7 -- 132 instr
; Funcion compleja: 132 instrucciones, 1 llamadas, 3 branches.
; tags: calls_kernel, complex
; callers: sub_00C1
; calls (inter): KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_03E7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, di                          ; 8B C7
        or      ax, si                          ; 0B C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [si + 1]                    ; 8D 44 01
        or      ax, di                          ; 0B C7
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bx + 7]               ; F6 6F 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_0434                          ; 74 13
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0429                          ; 75 03
        jmp     L_0503                          ; E9 DA 00
L_0429:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0431                          ; 75 03
        jmp     L_04B2                          ; E9 81 00
L_0431:
        jmp     L_0587                          ; E9 53 01
L_0434:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     bx, si                          ; 8B DE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x164]       ; 8B 87 64 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0587                          ; E9 D5 00
L_04B2:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_0587                          ; E9 84 00
L_0503:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], 7         ; 26 C7 47 02 07 00
        mov     word ptr es:[bx + 4], 2         ; 26 C7 47 04 02 00
        mov     word ptr es:[bx + 8], 3         ; 26 C7 47 08 03 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        mov     byte ptr es:[bx + 0x13], 0x20   ; 26 C6 47 13 20
        mov     byte ptr es:[bx + 0x14], 0x7e   ; 26 C6 47 14 7E
        mov     byte ptr es:[bx + 0x15], 0x2e   ; 26 C6 47 15 2E
        mov     byte ptr es:[bx + 0x16], 0x20   ; 26 C6 47 16 20
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x48   ; 26 C7 47 1B 48 00
        mov     word ptr es:[bx + 0x1d], 0x78   ; 26 C7 47 1D 78 00
L_0587:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_058F -- offset 0x058F -- 69 instr
; Funcion mediana (69 instr, 1 calls).
; tags: medium
; callers: sub_00C1
; calls (intra): sub_064B
;----------------------------------------------------------------------
L_058F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf                         ; 24 0F
        cmp     al, 2                           ; 3C 02
        jne     L_05A4                          ; 75 04
        mov     al, 1                           ; B0 01
        jmp     L_05A6                          ; EB 02
L_05A4:
        sub     al, al                          ; 2A C0
L_05A6:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 1], al        ; 26 88 47 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        or      al, al                          ; 0A C0
        jne     L_05CD                          ; 75 05
        mov     byte ptr es:[bx + 3], 3         ; 26 C6 47 03 03
L_05CD:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jle     L_05DE                          ; 7E 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, si                          ; 8B C6
        jmp     L_05E9                          ; EB 0B
L_05DE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
        les     bx, ptr [bp + 4]                ; C4 5E 04
L_05E9:
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 2]        ; 26 8A 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 7], al        ; 26 88 47 07
        or      al, al                          ; 0A C0
        jne     L_0618                          ; 75 05
        mov     byte ptr es:[bx + 7], 4         ; 26 C6 47 07 04
L_0618:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 6], al        ; 26 88 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_064B                          ; E8 17 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 2], al        ; 26 88 47 02
        inc     al                              ; FE C0
        jne     L_0644                          ; 75 05
        mov     byte ptr es:[bx + 2], 1         ; 26 C6 47 02 01
L_0644:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_064B -- offset 0x064B -- 237 instr
; Dispatcher: tabla de decisiones cmp+jcc (237 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_00C1, sub_058F
; calls (intra): sub_08BE, sub_0994, sub_0B61
; calls (inter): KERNEL.GLOBALFREE, KERNEL.LSTRCMP
;----------------------------------------------------------------------
L_064B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0656:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x164]       ; 8B 87 64 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0675                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0681                          ; EB 0C
L_0675:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 4            ; 83 7E FE 04
        jl      L_0656                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
L_0681:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_06A6                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_06AB                          ; EB 05
L_06A6:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        neg     ax                              ; F7 D8
L_06AB:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0994                          ; E8 D6 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_06D6                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_06D6                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_08B1                          ; E9 DB 01
L_06D6:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_06E6                          ; 75 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_072A                          ; 74 44
L_06E6:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_072A                          ; EB 3D
L_06ED:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0730                          ; 7E 3D
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B61                          ; E8 49 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 0x18]            ; FF 46 18
        dec     word ptr [bp + 0x16]            ; FF 4E 16
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
L_072A:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_06ED                          ; 7C BD
L_0730:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0749                          ; 7E 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
L_0749:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B61                          ; E8 EE 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_0791                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0791:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jg      L_07A3                          ; 7F 0C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_07A0                          ; 75 03
        jmp     L_08AB                          ; E9 0B 01
L_07A0:
        jmp     L_08A3                          ; E9 00 01
L_07A3:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 0x10   ; 26 80 4F 26 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_08BE                          ; E8 05 01
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_07E2                          ; 7C 17
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    word ptr es:[bx + 0x26], 0x100  ; 26 F7 47 26 00 01
        je      L_07E2                          ; 74 0C
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    ax                              ; 50
        call    L_08BE                          ; E8 DC 00
L_07E2:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_07EB                          ; 75 03
        jmp     L_08AB                          ; E9 C0 00
L_07EB:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     di, word ptr es:[bx + 0x10]     ; 26 8B 7F 10
        sub     si, si                          ; 2B F6
L_07F4:
        cmp     word ptr [bp + 0x16], si        ; 39 76 16
        jg      L_07FC                          ; 7F 03
        jmp     L_089C                          ; E9 A0 00
L_07FC:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_0823                          ; 74 19
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 E4 F7
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0x20                        ; 3C 20
        ja      L_0826                          ; 77 03
L_0823:
        inc     si                              ; 46
        jmp     L_07F4                          ; EB CE
L_0826:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B61                          ; E8 0F 03
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B61                          ; E8 E3 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_08BE                          ; E8 27 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_0823                          ; EB 87
L_089C:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x10], di     ; 26 89 7F 10
L_08A3:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_08AB:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
L_08B1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08BE -- offset 0x08BE -- 74 instr
; Funcion mediana (74 instr, 5 calls).
; tags: calls_gdi, calls_kernel, medium
; callers: sub_064B
; calls (intra): sub_0AC0
; calls (inter): GDI.INSERTPQ, GDI.SIZEPQ, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_08BE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_0AC0                          ; E8 EC 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_08DF                          ; 75 05
L_08DA:
        sub     ax, ax                          ; 2B C0
        jmp     L_098E                          ; E9 AF 00
L_08DF:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALLOCK           ; 9A 30 0A 00 00 [FIXUP]
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_105                  ; 9A 96 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A 7B 09 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_097F                          ; 75 3E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_096D                          ; 75 19
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A 87 09 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        jmp     L_08DA                          ; E9 6D FF
L_096D:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
L_097F:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        call    far KERNEL.GLOBALUNLOCK         ; 9A AF 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_098E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0994 -- offset 0x0994 -- 110 instr
; Dispatcher: tabla de decisiones cmp+jcc (110 instr).
; tags: calls_kernel, dispatcher
; callers: sub_064B, sub_0D6E
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_0994:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_09B2                          ; 75 0A
        mov     byte ptr [bp - 0xc], 0x7e       ; C6 46 F4 7E
        mov     byte ptr [bp - 2], 0x2e         ; C6 46 FE 2E
        jmp     L_09C7                          ; EB 15
L_09B2:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 2], al           ; 88 46 FE
L_09C7:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
L_09D8:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_09F6                          ; 7D 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_09F6                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0A07                          ; 72 11
L_09F6:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_0A0F                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_0AB9                          ; E9 B2 00
L_0A07:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_09D8                          ; EB C9
L_0A0F:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 31 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0A2C                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0AB9                          ; E9 8D 00
L_0A2C:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0AA3                          ; EB 56
L_0A4D:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_0A70                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0A7C                          ; 72 10
        cmp     al, 0xa0                        ; 3C A0
        jae     L_0A7C                          ; 73 0C
L_0A70:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_0A7C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0A9D                          ; 72 14
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 6C F5
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
L_0A9D:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0AA3:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0A4D                          ; 7C A2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALUNLOCK         ; 9A 12 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
L_0AB9:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0AC0 -- offset 0x0AC0 -- 66 instr
; Funcion mediana (66 instr, 2 calls).
; tags: calls_kernel, far, medium
; callers: sub_08BE
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALREALLOC
;----------------------------------------------------------------------
L_0AC0:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x44]     ; 26 8B 77 44
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0xa                         ; 05 0A 00
        add     word ptr es:[bx + 0x44], ax     ; 26 01 47 44
        mov     ax, word ptr es:[bx + 0x44]     ; 26 8B 47 44
        cmp     ax, word ptr es:[bx + 0x42]     ; 26 3B 47 42
        jl      L_0B12                          ; 7C 2F
        add     byte ptr es:[bx + 0x43], 2      ; 26 80 47 43 02
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B12                          ; 75 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x44], si     ; 26 89 77 44
        sub     word ptr es:[bx + 0x42], 0x200  ; 26 81 6F 42 00 02
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0B14                          ; EB 02
L_0B12:
        mov     ax, si                          ; 8B C6
L_0B14:
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
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x40], ax     ; 26 89 47 40
        or      ax, ax                          ; 0B C0
        jne     L_0B44                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0B56                          ; EB 12
L_0B44:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x42], 0x200  ; 26 C7 47 42 00 02
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        mov     ax, 1                           ; B8 01 00
L_0B56:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B61 -- offset 0x0B61 -- 183 instr
; Dispatcher: tabla de decisiones cmp+jcc (183 instr).
; tags: dispatcher
; callers: sub_064B
; calls (intra): sub_003B, sub_00C1, sub_0D6E
;----------------------------------------------------------------------
L_0B61:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jle     L_0B73                          ; 7E 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B75                          ; EB 02
L_0B73:
        sub     ax, ax                          ; 2B C0
L_0B75:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0BAF                          ; 74 33
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cx, word ptr [0x174]            ; 8B 0E 74 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x38]     ; 26 8A 47 38
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 02 0D 00 00 [FIXUP]
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_003B                          ; E8 8E F4
        jmp     L_0BB7                          ; EB 08
L_0BAF:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
L_0BB7:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0C22                          ; 74 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_0BFF:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0C32                          ; 7D 2B
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0BFF                          ; EB DD
L_0C22:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
L_0C32:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0C4D                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0C5A                          ; 75 0D
L_0C4D:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0C5A                          ; 75 03
        jmp     L_0CEC                          ; E9 92 00
L_0C5A:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_0CD4                          ; EB 60
L_0C74:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0CAA                          ; 74 26
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_0CAA                          ; 75 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_0CAA                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_0CAA:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0CCE                          ; 74 18
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0D6E                          ; E8 A0 00
L_0CCE:
        dec     word ptr [bp + 0x10]            ; FF 4E 10
        inc     word ptr [bp + 0x12]            ; FF 46 12
L_0CD4:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0C74                          ; 75 9A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0D06                          ; 75 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_0D06                          ; EB 1A
L_0CEC:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0D06                          ; 74 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _entry_106                  ; 9A 51 0D 00 00 [FIXUP]
L_0D06:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        test    word ptr es:[bx + 0x26], 0x100  ; 26 F7 47 26 00 01
        je      L_0D1E                          ; 74 0D
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        mov     word ptr es:[bx + 0x36], 0      ; 26 C7 47 36 00 00
L_0D1E:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0D5B                          ; 74 37
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_00C1                          ; E8 8E F3
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x39]     ; 26 8B 47 39
        mov     cx, word ptr [0x174]            ; 8B 0E 74 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 84 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        jmp     L_0D67                          ; EB 0C
L_0D5B:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
L_0D67:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D6E -- offset 0x0D6E -- 227 instr
; Dispatcher: tabla de decisiones cmp+jcc (227 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0B61
; calls (intra): sub_003B, sub_00C1, sub_0994, sub_0FDE, sub_1018
; calls (inter): KERNEL.GLOBALFREE
;----------------------------------------------------------------------
L_0D6E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 9A 0D 00 00 [FIXUP]
        jmp     L_0DA4                          ; EB 1A
L_0D8A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x176                       ; B8 76 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 04 0E 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [bp + 4], ax           ; 29 46 04
L_0DA4:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_0D8A                          ; 7D DE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_0E27                          ; 7E 75
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        test    word ptr es:[bx + 0x26], 0x100  ; 26 F7 47 26 00 01
        je      L_0DE3                          ; 74 26
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     cx, 2                           ; B9 02 00
        idiv    cx                              ; F7 F9
        or      dx, dx                          ; 0B D2
        je      L_0DE3                          ; 74 19
        mov     ax, word ptr es:[bx + 0x36]     ; 26 8B 47 36
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr es:[bx + 0x36], dx     ; 26 89 57 36
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [bp + 4], ax           ; 89 46 04
L_0DE3:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0E27                          ; 74 3E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x256], ax            ; A3 56 02
        mov     byte ptr [0x255], 0x4c          ; C6 06 55 02 4C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x254                       ; B8 54 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 1A 0E 00 00 [FIXUP]
        jmp     L_0E21                          ; EB 17
L_0E0A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x178                       ; B8 78 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 13 0F 00 00 [FIXUP]
        dec     word ptr [bp + 4]               ; FF 4E 04
L_0E21:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0E0A                          ; 75 E3
L_0E27:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_1018                          ; E8 CA 01
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x26], 2      ; 26 F6 47 26 02
        jne     L_0E61                          ; 75 03
        jmp     L_0F97                          ; E9 36 01
L_0E61:
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        je      L_0E6A                          ; 74 03
        jmp     L_0F97                          ; E9 2D 01
L_0E6A:
        mov     ax, word ptr es:[bx + 0x3c]     ; 26 8B 47 3C
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_0E71:
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0994                          ; E8 11 FB
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_0E96                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_0E96                          ; 75 03
        jmp     L_0FAC                          ; E9 16 01
L_0E96:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jne     L_0EA6                          ; 75 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_0EAB                          ; 74 05
L_0EA6:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
L_0EAB:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A D8 0E 00 00 [FIXUP]
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_003B                          ; E8 70 F1
L_0ECB:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_0FDE                          ; E8 F6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cmp     word ptr es:[bx + 0x3c], 0x3c0  ; 26 81 7F 3C C0 03
        jg      L_0F72                          ; 7F 71
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_0F17                          ; 7C 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_106                  ; 9A 6D 00 00 00 [FIXUP]
L_0F17:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp + 0x1e], ax        ; 39 46 1E
        jge     L_0F22                          ; 7D 03
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
L_0F22:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        je      L_0F72                          ; 74 03
        jmp     L_0ECB                          ; E9 59 FF
L_0F72:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_00C1                          ; E8 40 F1
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0FB0                          ; 75 23
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        and     byte ptr es:[bx + 0x26], 0xfd   ; 26 80 67 26 FD
        jmp     L_0FB8                          ; EB 21
L_0F97:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0FAC                          ; 74 03
        jmp     L_0E71                          ; E9 C5 FE
L_0FAC:
        sub     ax, ax                          ; 2B C0
        jmp     L_0FD3                          ; EB 23
L_0FB0:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 2      ; 26 80 4F 26 02
L_0FB8:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr es:[bx + 0x46], ax     ; 26 89 47 46
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0FD0                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.GLOBALFREE           ; 9A A7 08 00 00 [FIXUP]
L_0FD0:
        mov     ax, 1                           ; B8 01 00
L_0FD3:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FDE -- offset 0x0FDE -- 26 instr
; Dispatcher: tabla de decisiones cmp+jcc (26 instr).
; tags: dispatcher
; callers: sub_0D6E
;----------------------------------------------------------------------
L_0FDE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_0FF6                          ; EB 0D
L_0FE9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_100A                          ; 74 18
        inc     si                              ; 46
        inc     word ptr [bp + 6]               ; FF 46 06
L_0FF6:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_0FE9                          ; 7F EE
        jmp     L_100A                          ; EB 0D
L_0FFD:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_100F                          ; 75 06
        inc     si                              ; 46
L_100A:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_0FFD                          ; 7F EE
L_100F:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1018 -- offset 0x1018 -- 46 instr
; Funcion mediana (46 instr, 0 calls).
; tags: medium
; callers: sub_0D6E
;----------------------------------------------------------------------
L_1018:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_1036                          ; 75 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_1036:
        cmp     word ptr [bp - 2], 0xc          ; 83 7E FE 0C
        jge     L_1063                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 7      ; 26 83 7F 38 07
        je      L_1088                          ; 74 42
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x273]            ; A1 73 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x275]            ; A0 75 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 7B 10 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 7      ; 26 C7 47 38 07 00
        jmp     L_1088                          ; EB 25
L_1063:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_1088                          ; 74 1B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x276]            ; A1 76 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x278]            ; A0 78 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 9A 0B 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
L_1088:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

IBMGRX_TEXT ENDS

        END
