; AUTO-GENERATED from original PAINT segment 3
; segment_size=2754 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        call    far USER.ICONSIZE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     word ptr [0xae8], ax            ; A3 E8 0A
        mov     ax, dx                          ; 8B C2
        mov     word ptr [0xbea], ax            ; A3 EA 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0x267        ; 81 7E FC 67 02
        jle     L_0073                          ; 7E 2C
        mov     ax, word ptr [0xae8]            ; A1 E8 0A
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 2                           ; B9 02 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [0xae8]            ; 03 06 E8 0A
        mov     word ptr [0xe06], ax            ; A3 06 0E
        mov     ax, word ptr [0xbea]            ; A1 EA 0B
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        add     ax, word ptr [0xbea]            ; 03 06 EA 0B
        jmp     L_007C                          ; EB 09
L_0073:
        mov     ax, word ptr [0xae8]            ; A1 E8 0A
        mov     word ptr [0xe06], ax            ; A3 06 0E
        mov     ax, word ptr [0xbea]            ; A1 EA 0B
L_007C:
        mov     word ptr [0xe5c], ax            ; A3 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 5                           ; 05 05 00
        mov     word ptr [0xbc4], ax            ; A3 C4 0B
        mov     word ptr [0x116c], 0x18         ; C7 06 6C 11 18 00
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        push    word ptr [0xb96]                ; FF 36 96 0B
        push    word ptr [0xba2]                ; FF 36 A2 0B
        call    far GDI.MULDIV                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xa44], ax            ; A3 44 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_00DB                          ; E8 34 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_00C8                          ; 74 1A
        call    L_05DB                          ; E8 2A 05
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_054B                          ; E8 94 04
        call    L_042C                          ; E8 72 03
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0181                          ; E8 C1 00
        call    L_06E3                          ; E8 20 06
        call    L_0768                          ; E8 A2 06
        jmp     L_00CD                          ; EB 05
L_00C8:
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
L_00CD:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DB -- offset 0x00DB -- 74 instr
; Funcion mediana (74 instr, 4 calls).
; tags: calls_gdi, calls_user, medium
; calls (inter): GDI.CREATEBITMAP, GDI.CREATEPEN, GDI.GETSTOCKOBJECT, USER.LOADBITMAP
;----------------------------------------------------------------------
L_00DB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x80c                       ; B8 0C 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADBITMAP             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xca4], ax            ; A3 A4 0C
        or      ax, ax                          ; 0B C0
        jne     L_00FA                          ; 75 05
L_00F5:
        sub     ax, ax                          ; 2B C0
        jmp     L_017B                          ; E9 81 00
L_00FA:
        push    word ptr [0xe06]                ; FF 36 06 0E
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 2A 01 00 00 [FIXUP]
        mov     word ptr [0xe96], ax            ; A3 96 0E
        or      ax, ax                          ; 0B C0
        je      L_00F5                          ; 74 DA
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdb0], ax            ; A3 B0 0D
        or      ax, ax                          ; 0B C0
        je      L_00F5                          ; 74 C0
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x8e                        ; B8 8E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 10 01 00 00 [FIXUP]
        mov     word ptr [0xe04], ax            ; A3 04 0E
        or      ax, ax                          ; 0B C0
        je      L_00F5                          ; 74 A5
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc7e], ax            ; A3 7E 0C
        or      ax, ax                          ; 0B C0
        je      L_00F5                          ; 74 90
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xe62], ax            ; A3 62 0E
        or      ax, ax                          ; 0B C0
        jne     L_0178                          ; 75 03
        jmp     L_00F5                          ; E9 7D FF
L_0178:
        mov     ax, 1                           ; B8 01 00
L_017B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0181 -- offset 0x0181 -- 266 instr
; Dispatcher: tabla de decisiones cmp+jcc (266 instr).
; tags: calls_gdi, dispatcher
; callers: sub_02EC
; calls (inter): GDI.BITBLT, GDI.DELETEDC, GDI.GETOBJECT, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_0181:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0xca4]                ; FF 36 A4 0C
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x16]                 ; 8D 46 EA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        add     ax, 0xd                         ; 05 0D 00
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jl      L_01AD                          ; 7C 03
        jmp     L_02B1                          ; E9 04 01
L_01AD:
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x1e], 5         ; C7 46 E2 05 00
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
L_01C8:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 18 02 00 00 [FIXUP]
        add     word ptr [bp - 0x18], 0x20      ; 83 46 E8 20
        add     word ptr [bp - 0x1e], 0x24      ; 83 46 E2 24
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        add     word ptr [bp - 0x1e], 5         ; 83 46 E2 05
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        cmp     word ptr [bp - 0x1c], 0xc       ; 83 7E E4 0C
        jl      L_01C8                          ; 7C 9C
        mov     word ptr [bp - 0x20], 5         ; C7 46 E0 05 00
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
        mov     word ptr [bp - 0x1c], 0         ; C7 46 E4 00 00
L_023B:
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 8B 02 00 00 [FIXUP]
        add     word ptr [bp - 0x1a], 0x20      ; 83 46 E6 20
        add     word ptr [bp - 0x20], 0x24      ; 83 46 E0 24
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A EA 01 00 00 [FIXUP]
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        add     word ptr [bp - 0x20], 5         ; 83 46 E0 05
        inc     word ptr [bp - 0x1c]            ; FF 46 E4
        cmp     word ptr [bp - 0x1c], 2         ; 83 7E E4 02
        jl      L_023B                          ; 7C 9C
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A 3C 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], 0x43      ; C7 46 EE 43 00
        mov     word ptr [bp - 0x14], 0x18d     ; C7 46 EC 8D 01
L_02B1:
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        shl     ax, 1                           ; D1 E0
        add     ax, 3                           ; 05 03 00
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        jl      L_02C1                          ; 7C 03
        jmp     L_0424                          ; E9 63 01
L_02C1:
        push    word ptr [0xca4]                ; FF 36 A4 0C
        call    far _entry_27                   ; 9A B2 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, 3                           ; 2D 03 00
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        jmp     L_0339                          ; EB 57
L_02E2:
        mov     si, word ptr [bp - 0x22]        ; 8B 76 DE
        sar     si, 1                           ; D1 FE
        inc     si                              ; 46
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 31 03 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 5D 02 00 00 [FIXUP]
        add     word ptr [bp - 0x22], 2         ; 83 46 DE 02
L_0339:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jl      L_02E2                          ; 7C A1
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 6A 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        sar     si, 1                           ; D1 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [si + 2]                    ; 8D 44 02
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        jmp     L_03DF                          ; EB 5C
L_0383:
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        add     si, word ptr [bp - 0x22]        ; 03 76 DE
        mov     di, word ptr [bp - 0x22]        ; 8B 7E DE
        sar     di, 1                           ; D1 FF
        add     di, word ptr [bp - 0x24]        ; 03 7E DC
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A D7 03 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [si + 3]                    ; 8D 44 03
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A 0A 03 00 00 [FIXUP]
        add     word ptr [bp - 0x22], 2         ; 83 46 DE 02
L_03DF:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jl      L_0383                          ; 7C 9C
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 49 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 4F 03 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        push    ax                              ; 50
        push    word ptr [bp - 0x14]            ; FF 76 EC
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 72 03 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.DELETEDC                ; 9A A3 02 00 00 [FIXUP]
L_0424:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_042C -- offset 0x042C -- 115 instr
; Funcion compleja: 115 instrucciones, 4 llamadas, 3 branches.
; tags: calls_gdi, complex
; calls (inter): GDI.DELETEDC, GDI.GETSTOCKOBJECT, GDI.PATBLT, GDI.SELECTOBJECT
;----------------------------------------------------------------------
L_042C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0xe96]                ; FF 36 96 0E
        call    far _entry_27                   ; 9A C6 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 75 04 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A 7B 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xe06]                ; FF 36 06 0E
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A ED 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A EF 03 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.SELECTOBJECT            ; 9A F5 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_0484:
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xe5c]            ; A1 5C 0E
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     cx, ax                          ; 03 C8
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_04F7                          ; 75 43
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
L_04B7:
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, word ptr [0xe06]            ; 8B 0E 06 0E
        sub     cx, ax                          ; 2B C8
        cmp     cx, word ptr [bp - 0xa]         ; 3B 4E F6
        jle     L_0533                          ; 7E 60
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 18 04 00 00 [FIXUP]
        add     word ptr [bp - 0xa], 4          ; 83 46 F6 04
        jmp     L_04B7                          ; EB C0
L_04F7:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [bp - 6]           ; 2B 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xe06]            ; A1 06 0E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [0xe06]            ; 8B 0E 06 0E
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.PATBLT                  ; 9A 69 04 00 00 [FIXUP]
L_0533:
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     word ptr [bp - 6], 5            ; 83 7E FA 05
        jge     L_053F                          ; 7D 03
        jmp     L_0484                          ; E9 45 FF
L_053F:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far GDI.DELETEDC                ; 9A 20 04 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_054B -- offset 0x054B -- 52 instr
; Dispatcher: tabla de decisiones cmp+jcc (52 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.LOADCURSOR
;----------------------------------------------------------------------
L_054B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_0557:
        cmp     word ptr [bp - 2], 7            ; 83 7E FE 07
        je      L_058C                          ; 74 2F
        cmp     word ptr [bp - 2], 0xa          ; 83 7E FE 0A
        je      L_058C                          ; 74 29
        cmp     word ptr [bp - 2], 0xb          ; 83 7E FE 0B
        je      L_058C                          ; 74 23
        cmp     word ptr [bp - 2], 8            ; 83 7E FE 08
        je      L_058C                          ; 74 1D
        cmp     word ptr [bp - 2], 6            ; 83 7E FE 06
        je      L_058C                          ; 74 17
        mov     si, word ptr [bp - 2]           ; 8B 76 FE
        shl     si, 1                           ; D1 E6
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [si + 0xbe]        ; 8B 84 BE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xe08], ax       ; 89 84 08 0E
L_058C:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0xc          ; 83 7E FE 0C
        jle     L_0557                          ; 7E C2
        jmp     L_05A6                          ; EB 0F
L_0597:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [0xe20]            ; A1 20 0E
        mov     word ptr [bx + 0xe08], ax       ; 89 87 08 0E
        inc     word ptr [bp - 2]               ; FF 46 FE
L_05A6:
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jl      L_0597                          ; 7C EB
        mov     ax, word ptr [0x3cc]            ; A1 CC 03
        mov     word ptr [0xe38], ax            ; A3 38 0E
        mov     ax, word ptr [0xe20]            ; A1 20 0E
        mov     word ptr [0xe1c], ax            ; A3 1C 0E
        mov     word ptr [0xe1e], ax            ; A3 1E 0E
        mov     word ptr [0xe18], ax            ; A3 18 0E
        mov     word ptr [0xe16], ax            ; A3 16 0E
        mov     word ptr [0xe14], ax            ; A3 14 0E
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x328                       ; B8 28 03
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADCURSOR             ; 9A 84 05 00 00 [FIXUP]
        mov     word ptr [0x3ca], ax            ; A3 CA 03
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05DB -- offset 0x05DB -- 87 instr
; Funcion compleja: 87 instrucciones, 1 llamadas, 0 branches.
; tags: complex
; calls (intra): sub_068B
;----------------------------------------------------------------------
L_05DB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xe06]                ; F7 2E 06 0E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    L_068B                          ; E8 82 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0xe5c]                ; F7 2E 5C 0E
        push    ax                              ; 50
        push    word ptr [0xe06]                ; FF 36 06 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_068B                          ; E8 5B 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        mov     ax, 0xf0                        ; B8 F0 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x18                        ; B8 18 00
        push    ax                              ; 50
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_068B                          ; E8 38 00
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        imul    word ptr [0xa44]                ; F7 2E 44 0A
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        imul    word ptr [0x116c]               ; F7 2E 6C 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_068B                          ; E8 04 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_068B -- offset 0x068B -- 34 instr
; Funcion mediana (34 instr, 1 calls).
; tags: calls_user, medium
; callers: sub_05DB
; calls (inter): USER.SETRECT
;----------------------------------------------------------------------
L_068B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x14                        ; B8 14 00
        imul    word ptr [bp + 0x14]            ; F7 6E 14
        add     ax, 0xc02                       ; 05 02 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0x12], ax        ; 89 47 12
        cdq                                     ; 99
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        idiv    cx                              ; F7 F9
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     word ptr [bx + 0xe], dx         ; 89 57 0E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x12                            ; C2 12 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06E3 -- offset 0x06E3 -- 53 instr
; Funcion mediana (53 instr, 2 calls).
; tags: calls_gdi, medium
; calls (inter): GDI.DELETEDC, GDI.STRETCHBLT
;----------------------------------------------------------------------
L_06E3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 8                           ; B8 08 00
        mov     word ptr [0x1168], ax           ; A3 68 11
        mov     word ptr [0x1122], ax           ; A3 22 11
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cmp     word ptr [0xba2], ax            ; 39 06 A2 0B
        jle     L_071B                          ; 7E 20
        mov     word ptr [0x1122], 0x10         ; C7 06 22 11 10 00
        push    word ptr [0xe04]                ; FF 36 04 0E
        call    far _entry_27                   ; 9A 2F 07 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        jmp     L_0742                          ; EB 27
L_071B:
        mov     ax, word ptr [0xb96]            ; A1 96 0B
        cmp     word ptr [0xba2], ax            ; 39 06 A2 0B
        jge     L_0764                          ; 7D 40
        mov     word ptr [0x1168], 0x10         ; C7 06 68 11 10 00
        push    word ptr [0xe04]                ; FF 36 04 0E
        call    far _entry_27                   ; 9A 37 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0x10                        ; B8 10 00
L_0742:
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far GDI.DELETEDC                ; 9A 43 05 00 00 [FIXUP]
L_0764:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0768 -- offset 0x0768 -- 349 instr
; Dispatcher: tabla de decisiones cmp+jcc (349 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; calls (inter): GDI.CREATEBITMAP, GDI.CREATECOMPATIBLEDC, GDI.CREATEPATTERNBRUSH, GDI.CREATEPEN, GDI.DELETEDC, GDI.GETDEVICECAPS (+2 mas)
;----------------------------------------------------------------------
L_0768:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xae                        ; B8 AE 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 45 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xacc], ax            ; A3 CC 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
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
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0xe3a                       ; B8 3A 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A CC 07 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0xaf4                       ; B8 F4 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E2 07 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0xc56                       ; B8 56 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A F8 07 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x10c2                      ; B8 C2 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 0E 08 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 0xbca                       ; B8 CA 0B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        mov     ax, 0x1148                      ; B8 48 11
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 3A 08 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        mov     ax, 0x1128                      ; B8 28 11
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 50 08 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 0xe98                       ; B8 98 0E
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 66 08 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        mov     ax, 0x10f0                      ; B8 F0 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 7C 08 00 00 [FIXUP]
        push    word ptr [0x111c]               ; FF 36 1C 11
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xdc2                       ; B8 C2 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A B6 07 00 00 [FIXUP]
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
        sub     sp, 0x1c                        ; 83 EC 1C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 24 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_08A8                          ; 75 03
        jmp     L_0AA3                          ; E9 FB 01
L_08A8:
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A BD 08 00 00 [FIXUP]
        mov     word ptr [0xb96], ax            ; A3 96 0B
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 31 00 00 00 [FIXUP]
        mov     word ptr [0xba2], ax            ; A3 A2 0B
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A DB 08 00 00 [FIXUP]
        mov     word ptr [0xc86], ax            ; A3 86 0C
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A EA 08 00 00 [FIXUP]
        mov     word ptr [0xc92], ax            ; A3 92 0C
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A F9 08 00 00 [FIXUP]
        mov     word ptr [0xdaa], ax            ; A3 AA 0D
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A AE 08 00 00 [FIXUP]
        mov     word ptr [0xdbe], ax            ; A3 BE 0D
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far GDI.DELETEDC                ; 9A 60 07 00 00 [FIXUP]
        mov     ax, word ptr [0xc86]            ; A1 86 0C
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
        mov     ax, word ptr [0xc92]            ; A1 92 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 4C 09 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
        or      dx, dx                          ; 0B D2
        jge     L_0934                          ; 7D 03
        jmp     L_09C6                          ; E9 92 00
L_0934:
        jg      L_093E                          ; 7F 08
        cmp     ax, 0xffdf                      ; 3D DF FF
        ja      L_093E                          ; 77 03
        jmp     L_09C6                          ; E9 88 00
L_093E:
        mov     ax, word ptr [0xc86]            ; A1 86 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffdf                      ; B8 DF FF
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 6E 09 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_28                   ; 9A 7B 09 00 00 [FIXUP]
        mov     word ptr [0xc86], ax            ; A3 86 0C
        mov     ax, word ptr [0xc92]            ; A1 92 0C
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffdf                      ; B8 DF FF
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 90 09 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_28                   ; 9A 9D 09 00 00 [FIXUP]
        mov     word ptr [0xc92], ax            ; A3 92 0C
        mov     ax, word ptr [0xdaa]            ; A1 AA 0D
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffdf                      ; B8 DF FF
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdaa], ax            ; A3 AA 0D
        mov     ax, word ptr [0xdbe]            ; A1 BE 0D
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffdf                      ; B8 DF FF
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 23 09 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_28                   ; 9A 59 09 00 00 [FIXUP]
        mov     word ptr [0xdbe], ax            ; A3 BE 0D
L_09C6:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xdb4], ax            ; A3 B4 0D
        mov     word ptr [0xda8], ax            ; A3 A8 0D
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEPEN               ; 9A 5A 01 00 00 [FIXUP]
        mov     word ptr [0xaca], ax            ; A3 CA 0A
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A 43 04 00 00 [FIXUP]
        mov     word ptr [0x874], ax            ; A3 74 08
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 17 0A 00 00 [FIXUP]
        mov     word ptr [0xc90], ax            ; A3 90 0C
        push    word ptr [0xc86]                ; FF 36 86 0C
        mov     ax, word ptr [0xc92]            ; A1 92 0C
        sub     ax, word ptr [0xbc4]            ; 2B 06 C4 0B
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 30 0A 00 00 [FIXUP]
        mov     word ptr [0xe92], ax            ; A3 92 0E
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A 7E 07 00 00 [FIXUP]
        mov     word ptr [0xbf4], ax            ; A3 F4 0B
        cmp     word ptr [0xaca], 0             ; 83 3E CA 0A 00
        je      L_0A53                          ; 74 15
        cmp     word ptr [0x874], 0             ; 83 3E 74 08 00
        je      L_0A53                          ; 74 0E
        cmp     word ptr [0xc90], 0             ; 83 3E 90 0C 00
        je      L_0A53                          ; 74 07
        cmp     word ptr [0xe92], 0             ; 83 3E 92 0E 00
        jne     L_0AB6                          ; 75 63
L_0A53:
        cmp     word ptr [0xaca], 0             ; 83 3E CA 0A 00
        je      L_0A63                          ; 74 09
        push    word ptr [0xaca]                ; FF 36 CA 0A
        call    far _entry_19                   ; 9A 6F 0A 00 00 [FIXUP]
L_0A63:
        cmp     word ptr [0x874], 0             ; 83 3E 74 08 00
        je      L_0A73                          ; 74 09
        push    word ptr [0x874]                ; FF 36 74 08
        call    far _entry_19                   ; 9A 92 07 00 00 [FIXUP]
L_0A73:
        cmp     word ptr [0xc90], 0             ; 83 3E 90 0C 00
        je      L_0A83                          ; 74 09
        push    word ptr [0xc90]                ; FF 36 90 0C
        call    far _entry_19                   ; 9A 8F 0A 00 00 [FIXUP]
L_0A83:
        cmp     word ptr [0xe92], 0             ; 83 3E 92 0E 00
        je      L_0A93                          ; 74 09
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_19                   ; 9A 9F 0A 00 00 [FIXUP]
L_0A93:
        cmp     word ptr [0xbf4], 0             ; 83 3E F4 0B 00
        je      L_0AA3                          ; 74 09
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_19                   ; 9A 5F 0A 00 00 [FIXUP]
L_0AA3:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xbf4], ax            ; A3 F4 0B
        mov     word ptr [0xe92], ax            ; A3 92 0E
        mov     word ptr [0xc90], ax            ; A3 90 0C
        mov     word ptr [0x874], ax            ; A3 74 08
        mov     word ptr [0xaca], ax            ; A3 CA 0A
        jmp     L_0AB9                          ; EB 03
L_0AB6:
        mov     ax, 1                           ; B8 01 00
L_0AB9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PAINT_TEXT ENDS

        END
