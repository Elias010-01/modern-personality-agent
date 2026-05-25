; AUTO-GENERATED from original WRITE segment 9
; segment_size=863 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A E7 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_0033                          ; 74 12
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        and     word ptr [bx], 0x8000           ; 81 27 00 80
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        and     byte ptr [bx + 1], 0x7f         ; 80 67 01 7F
L_0033:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_003F -- offset 0x003F -- 46 instr
; Funcion mediana (46 instr, 1 calls).
; tags: far, medium
; callers: sub_01FE
; calls (intra): sub_00A0
;----------------------------------------------------------------------
L_003F:
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
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0089                          ; 75 24
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 96 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_0075                          ; 75 05
        mov     ax, 0xff                        ; B8 FF 00
        jmp     L_0094                          ; EB 1F
L_0075:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + si + 0x12], ax   ; 89 40 12
L_0089:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00A0                          ; E8 0C 00
L_0094:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00A0 -- offset 0x00A0 -- 124 instr
; Funcion compleja: 124 instrucciones, 2 llamadas, 5 branches.
; tags: calls_kernel, complex, far
; callers: sub_003F
; calls (intra): sub_01FE
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_00A0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        and     byte ptr [bx + 1], 0x7f         ; 80 67 01 7F
        mov     word ptr [bp - 0xa], 0xff       ; C7 46 F6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        mov     ax, bx                          ; 8B C3
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0x20                        ; 3D 20 00
        jbe     L_00DB                          ; 76 05
        mov     word ptr [bp - 0xe], 0x20       ; C7 46 F2 20 00
L_00DB:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        inc     ax                              ; 40
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_016C                          ; 74 7B
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     byte ptr [bx + di], 0           ; C6 01 00
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        inc     ax                              ; 40
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        shl     ax, 1                           ; D1 E0
        add     ax, 3                           ; 05 03 00
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_95                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0164                          ; 74 2D
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     ax                              ; 48
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     di, word ptr [bx]               ; 8B 3F
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + di + 2], ax      ; 89 41 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        and     ah, 0x7f                        ; 80 E4 7F
        mov     cx, word ptr [si]               ; 8B 0C
        and     cx, 0x8000                      ; 81 E1 00 80
        or      ax, cx                          ; 0B C1
        mov     word ptr [si], ax               ; 89 04
        jmp     L_016C                          ; EB 08
L_0164:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A EE 02 00 00 [FIXUP]
L_016C:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01FE                          ; E8 6D 00
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_01A6                          ; 75 10
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00A0                          ; E8 FF FE
        cmp     ax, 0xff                        ; 3D FF 00
        je      L_01AB                          ; 74 05
L_01A6:
        mov     ax, 1                           ; B8 01 00
        jmp     L_01AD                          ; EB 02
L_01AB:
        sub     ax, ax                          ; 2B C0
L_01AD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01B8 -- offset 0x01B8 -- 34 instr
; Funcion mediana (34 instr, 1 calls).
; tags: far, medium
; callers: sub_01FE
; calls (intra): sub_01FE
;----------------------------------------------------------------------
L_01B8:
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
        mov     word ptr [bp - 6], 0xff         ; C7 46 FA FF 00
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x12]   ; 8B 40 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_01EF                          ; 74 0C
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01FE                          ; E8 12 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_01EF:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01FE -- offset 0x01FE -- 161 instr
; Dispatcher: tabla de decisiones cmp+jcc (161 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_00A0, sub_01B8
; calls (intra): sub_003F, sub_01B8
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_01FE:
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
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0265                          ; EB 3E
L_0227:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     bx, word ptr [bx + si]          ; 8B 18
        mov     ax, word ptr [bx]               ; 8B 07
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0262                          ; 75 1F
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        or      al, al                          ; 0A C0
        je      L_025D                          ; 74 0E
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     bx, word ptr [bx + si]          ; 8B 18
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     byte ptr [bx], al               ; 88 07
L_025D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0270                          ; EB 0E
L_0262:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0265:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0227                          ; 7C BA
        mov     ax, 0xff                        ; B8 FF 00
L_0270:
        pop     si                              ; 5E
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01B8                          ; E8 24 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0xff                        ; 3D FF 00
        jne     L_02AA                          ; 75 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_003F                          ; E8 98 FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_02AA:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0305                          ; 74 39
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx]               ; 8B 07
        and     ah, 0x7f                        ; 80 E4 7F
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_02F5                          ; EB 15
L_02E0:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + si + 2]          ; FF 70 02
        call    far KERNEL.LOCALFREE            ; 9A 01 03 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
L_02F5:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_02E0                          ; 7C E3
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0305:
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0342                          ; EB 1C
L_0326:
        mov     ax, 0x7e                        ; B8 7E 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [si + 0x13ec]      ; 8B 84 EC 13
        and     ax, 0xf                         ; 25 0F 00
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_033F                          ; 75 05
        or      byte ptr [si + 0x13ea], 0xff    ; 80 8C EA 13 FF
L_033F:
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0342:
        mov     ax, word ptr [0x7b4]            ; A1 B4 07
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0326                          ; 7C DC
        or      byte ptr [0x1bf8], 0xff         ; 80 0E F8 1B FF
        or      byte ptr [0xe8a], 0xff          ; 80 0E 8A 0E FF
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
