; AUTO-GENERATED from original WRITE segment 35
; segment_size=5469 bytes, flags=0xf130
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
        mov     word ptr [0x44], 1              ; C7 06 44 00 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A 2A 03 00 00 [FIXUP]
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1124                          ; E8 07 11
        or      ax, ax                          ; 0B C0
        je      L_0048                          ; 74 27
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x129c]               ; FF 36 9C 12
        push    word ptr [0x129a]               ; FF 36 9A 12
        call    far _entry_93                   ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0048                          ; 75 09
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 13 02 00 00 [FIXUP]
L_0048:
        mov     word ptr [0x44], 0              ; C7 06 44 00 00 00
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
        sub     sp, 0x58                        ; 83 EC 58
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_00D3                          ; 74 66
        cmp     ax, 9                           ; 3D 09 00
        je      L_00BF                          ; 74 4D
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_007E                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_00F0                          ; 74 74
        jmp     L_00CE                          ; EB 50
L_007E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x257                       ; B8 57 02
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A AB 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x257                       ; B8 57 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A 89 01 00 00 [FIXUP]
        jmp     L_0490                          ; E9 D1 03
L_00BF:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00CE                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 22 03 00 00 [FIXUP]
L_00CE:
        sub     ax, ax                          ; 2B C0
        jmp     L_0493                          ; E9 C0 03
L_00D3:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00DF                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_00DF:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_00CE                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00CE                          ; EB DE
L_00F0:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0112                          ; 74 1A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0100                          ; 75 03
        jmp     L_0306                          ; E9 06 02
L_0100:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_0108                          ; 75 03
        jmp     L_0471                          ; E9 69 03
L_0108:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0110                          ; 75 03
        jmp     L_036B                          ; E9 5B 02
L_0110:
        jmp     L_00CE                          ; EB BC
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0112 -- offset 0x0112 -- 234 instr
; Dispatcher: tabla de decisiones cmp+jcc (234 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (intra): sub_1285, sub_132E, sub_13EE, sub_1435
; calls (inter): KERNEL.LOCALFREE, USER.DLGDIRLIST, USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.ISWINDOWENABLED, USER.SETDLGITEMTEXT (+1 mas)
;----------------------------------------------------------------------
L_0112:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_012B                          ; 75 03
        jmp     L_0490                          ; E9 65 03
L_012B:
        mov     word ptr [bp - 0x56], 0x7fff    ; C7 46 AA FF 7F
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 8F 03 00 00 [FIXUP]
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 9A 01 00 00 [FIXUP]
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1285                          ; E8 23 11
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_01B2                          ; 75 49
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    L_132E                          ; E8 BE 11
        or      ax, ax                          ; 0B C0
        je      L_01B2                          ; 74 3E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01B2                          ; 74 21
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        call    far _entry_180                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_031D                          ; E9 6B 01
L_01B2:
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1285                          ; E8 C9 10
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_01CE                          ; 75 0B
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        call    L_132E                          ; E8 64 11
        or      ax, ax                          ; 0B C0
        je      L_01D7                          ; 74 09
L_01CE:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_031D                          ; E9 46 01
L_01D7:
        cmp     byte ptr [0x8ba], 0             ; 80 3E BA 08 00
        je      L_020E                          ; 74 30
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_020E                          ; 74 1C
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FF FF 00 00 [FIXUP]
        dec     ax                              ; 48
        push    ax                              ; 50
        lea     ax, [bp - 0x54]                 ; 8D 46 AC
        push    ax                              ; 50
        call    far _entry_195                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0219                          ; 75 0B
L_020E:
        mov     ax, 0x200e                      ; B8 0E 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01CE                          ; EB B5
L_0219:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        mov     ax, 0x2f                        ; B8 2F 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A 3A 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0258                          ; 75 27
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        mov     ax, 0x3a                        ; B8 3A 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A 4B 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0258                          ; 75 16
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        mov     ax, 0x5c                        ; B8 5C 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0258                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_025A                          ; EB 02
L_0258:
        sub     ax, ax                          ; 2B C0
L_025A:
        push    ax                              ; 50
        call    far _entry_194                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x56], ax        ; 89 46 AA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        jne     L_026B                          ; 75 03
        jmp     L_0315                          ; E9 AA 00
L_026B:
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1435                          ; E8 C1 11
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_027D                          ; 75 03
        jmp     L_0326                          ; E9 A9 00
L_027D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_028C                          ; 74 09
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 0x26e                       ; B8 6E 02
        jmp     L_0293                          ; EB 07
L_028C:
        push    word ptr [0x780]                ; FF 36 80 07
        mov     ax, 0x25e                       ; B8 5E 02
L_0293:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x56]            ; FF 76 AA
        call    far _entry_193                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0x56]            ; F7 6E AA
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 0x1e]   ; 8B 58 1E
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ax                              ; 50
        call    far _entry_167                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
        inc     ax                              ; 40
        je      L_02ED                          ; 74 1C
        push    word ptr [bp - 0x56]            ; FF 76 AA
        push    word ptr [bp - 0x50]            ; FF 76 B0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_192                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x52], ax        ; 89 46 AE
        inc     ax                              ; 40
        jne     L_0331                          ; 75 4C
        push    word ptr [bp - 0x50]            ; FF 76 B0
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_02ED:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 8]      ; 8B 58 08
        push    word ptr [bx]                   ; FF 37
        call    far _entry_191                  ; 9A FF FF 00 00 [FIXUP]
L_0306:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0490                          ; E9 7B 01
L_0315:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0xbda], ax            ; A3 DA 0B
        mov     word ptr [0x3e], ax             ; A3 3E 00
L_031D:
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_0326:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0490                          ; E9 5F 01
L_0331:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_190                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr [0x12b4], ax           ; A3 B4 12
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_034F                          ; 74 09
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13EE                          ; E8 9F 10
L_034F:
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ax                              ; 50
        call    far _entry_189                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x70], 1              ; C7 06 70 00 01 00
        call    far _entry_188                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x70], 0              ; C7 06 70 00 00 00
        jmp     L_0306                          ; EB 9B
L_036B:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_037E                          ; 74 0B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_037B                          ; 75 03
        jmp     L_0430                          ; E9 B5 00
L_037B:
        jmp     L_0490                          ; E9 12 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_037E -- offset 0x037E -- 85 instr
; Dispatcher: tabla de decisiones cmp+jcc (85 instr).
; tags: calls_kernel, calls_user, dispatcher
; calls (inter): KERNEL.LSTRLEN, USER.DLGDIRLIST, USER.DLGDIRSELECT, USER.GETDLGITEMTEXT, USER.SETDLGITEMTEXT
;----------------------------------------------------------------------
L_037E:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.DLGDIRSELECT           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_041D                          ; 74 75
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A BB 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x48], ax        ; 89 46 B8
        mov     si, ax                          ; 8B F0
        lea     ax, [bp + si - 0x46]            ; 8D 42 BA
        mov     word ptr [bp - 0x4a], ax        ; 89 46 B6
        mov     word ptr [bp - 0x4e], 0         ; C7 46 B2 00 00
L_03CF:
        lea     ax, [bp - 0x46]                 ; 8D 46 BA
        cmp     word ptr [bp - 0x4a], ax        ; 39 46 B6
        jbe     L_0402                          ; 76 2B
        dec     word ptr [bp - 0x4a]            ; FF 4E B6
        mov     bx, word ptr [bp - 0x4a]        ; 8B 5E B6
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x58], al        ; 88 46 A8
        cmp     al, 0x2a                        ; 3C 2A
        je      L_03EA                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_03EF                          ; 75 05
L_03EA:
        mov     word ptr [bp - 0x4e], 1         ; C7 46 B2 01 00
L_03EF:
        mov     bx, word ptr [bp - 0x4a]        ; 8B 5E B6
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x58], al        ; 88 46 A8
        cmp     al, 0x5c                        ; 3C 5C
        je      L_03FF                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_03CF                          ; 75 D0
L_03FF:
        inc     word ptr [bp - 0x4a]            ; FF 46 B6
L_0402:
        cmp     word ptr [bp - 0x4e], 0         ; 83 7E B2 00
        je      L_040D                          ; 74 05
        push    word ptr [bp - 0x4a]            ; FF 76 B6
        jmp     L_0411                          ; EB 04
L_040D:
        mov     ax, 0x257                       ; B8 57 02
        push    ax                              ; 50
L_0411:
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        add     ax, 0x8ba                       ; 05 BA 08
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 53 01 00 00 [FIXUP]
L_041D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 62 04 00 00 [FIXUP]
        jmp     L_0490                          ; EB 60
L_0430:
        call    far _entry_69                   ; 9A 31 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A B8 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0455                          ; 75 03
        jmp     L_01B2                          ; E9 5D FD
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0455 -- offset 0x0455 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_kernel, calls_user, far, small
; callers: sub_0348
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.SETCLIPBOARDDATA
;----------------------------------------------------------------------
L_0455:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8ba                       ; B8 BA 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 32 06 00 00 [FIXUP]
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 3F 07 00 00 [FIXUP]
        jmp     L_0490                          ; EB 1F
L_0471:
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        je      L_047B                          ; 74 03
        jmp     L_00CE                          ; E9 53 FC
L_047B:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A E0 06 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C5A                          ; E8 CA 07
L_0490:
        mov     ax, 1                           ; B8 01 00
L_0493:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_049F -- offset 0x049F -- 145 instr
; Dispatcher: tabla de decisiones cmp+jcc (145 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_1124
; calls (intra): sub_11E2
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_049F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x44], 1              ; C7 06 44 00 01 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A 14 00 00 00 [FIXUP]
        cmp     word ptr [0x1bce], 0            ; 83 3E CE 1B 00
        je      L_04CD                          ; 74 0F
        push    word ptr [0x1bce]               ; FF 36 CE 1B
        call    far KERNEL.LOCALFREE            ; 9A E9 02 00 00 [FIXUP]
        mov     word ptr [0x1bce], 0            ; C7 06 CE 1B 00 00
L_04CD:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_11E2                          ; E8 10 0D
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x110e]               ; FF 36 0E 11
        push    word ptr [0x110c]               ; FF 36 0C 11
        call    far _entry_93                   ; 9A 38 00 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_0504                          ; 74 14
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1bce], ax           ; A3 CE 1B
        or      ax, ax                          ; 0B C0
        jne     L_050D                          ; 75 09
L_0504:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 44 00 00 00 [FIXUP]
L_050D:
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x44], 0              ; C7 06 44 00 00 00
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
        sub     sp, 0x328                       ; 81 EC 28 03
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_053B                          ; 75 03
        jmp     L_0748                          ; E9 0D 02
L_053B:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0543                          ; 75 03
        jmp     L_0734                          ; E9 F1 01
L_0543:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0553                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0550                          ; 75 03
        jmp     L_0765                          ; E9 15 02
L_0550:
        jmp     L_0743                          ; E9 F0 01
L_0553:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        mov     ax, 0x72a                       ; B8 2A 07
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A EA 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0574                          ; 75 03
        jmp     L_0645                          ; E9 D1 00
L_0574:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 92 05 00 00 [FIXUP]
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 2                           ; 3D 02 00
        jle     L_058D                          ; 7E 06
        mov     si, ax                          ; 8B F0
        mov     byte ptr [bp + si - 0x4a], 0    ; C6 42 B6 00
L_058D:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        call    far _entry_61                   ; 9A FB 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0x14                        ; 3D 14 00
        jg      L_05A1                          ; 7F 03
        jmp     L_0625                          ; E9 84 00
L_05A1:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_45                   ; 9A 14 06 00 00 [FIXUP]
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        push    ax                              ; 50
        mov     ax, 0x5c                        ; B8 5C 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A 29 02 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 0xd4], ax        ; 89 86 2C FF
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        lea     ax, [bp + si - 0x118]           ; 8D 82 E8 FE
        mov     word ptr [bp - 0xd2], ax        ; 89 86 2E FF
        jmp     L_05DF                          ; EB 0D
L_05D2:
        mov     bx, word ptr [bp - 0xd2]        ; 8B 9E 2E FF
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        je      L_05E9                          ; 74 0E
        dec     word ptr [bp - 0xd2]            ; FF 8E 2E FF
L_05DF:
        mov     ax, word ptr [bp - 0xd2]        ; 8B 86 2E FF
        cmp     word ptr [bp - 0xd4], ax        ; 39 86 2C FF
        jbe     L_05D2                          ; 76 E9
L_05E9:
        push    word ptr [bp - 0xd4]            ; FF B6 2C FF
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp - 0xd4], 3         ; 83 86 2C FF 03
        push    word ptr [bp - 0xd2]            ; FF B6 2E FF
        push    word ptr [bp - 0xd4]            ; FF B6 2C FF
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        sub     si, word ptr [bp - 0xd2]        ; 2B B6 2E FF
        lea     ax, [bp + si - 0x116]           ; 8D 82 EA FE
        push    ax                              ; 50
        call    far _entry_45                   ; 9A B5 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x116]                ; 8D 86 EA FE
        jmp     L_062F                          ; EB 0A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0625 -- offset 0x0625 -- 133 instr
; Dispatcher: tabla de decisiones cmp+jcc (133 instr).
; tags: calls_user, dispatcher
; calls (intra): sub_0BD5
; calls (inter): USER.CHECKDLGBUTTON, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.SETDLGITEMTEXT, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_0625:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
L_062F:
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 55 06 00 00 [FIXUP]
        cmp     word ptr [bp - 8], 3            ; 83 7E F8 03
        jle     L_0659                          ; 7E 1D
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     byte ptr [bp + si - 0x4a], 0x5c ; C6 42 B6 5C
        jmp     L_0659                          ; EB 14
L_0645:
        mov     byte ptr [bp - 0x4a], 0         ; C6 46 B6 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A C6 06 00 00 [FIXUP]
L_0659:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 8]      ; 8B 58 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_06D3                          ; 74 5C
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        inc     word ptr [bx + 2]               ; FF 47 02
        push    word ptr [bp - 0x4c]            ; FF 76 B4
        lea     ax, [bp - 0xd0]                 ; 8D 86 30 FF
        push    ax                              ; 50
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BD5                          ; E8 45 05
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        lea     ax, [bp - 0xd0]                 ; 8D 86 30 FF
        push    ax                              ; 50
        call    far _entry_71                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_06A8                          ; 75 06
        lea     ax, [bp - 0x8e]                 ; 8D 86 72 FF
        jmp     L_06AB                          ; EB 03
L_06A8:
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
L_06AB:
        push    ax                              ; 50
        mov     ax, 0x8fe                       ; B8 FE 08
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A BE 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x8fe                       ; B8 FE 08
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 93 00 00 00 [FIXUP]
        mov     bx, word ptr [6]                ; 8B 1E 06 00
        dec     word ptr [bx + 2]               ; FF 4F 02
        jmp     L_06ED                          ; EB 1A
L_06D3:
        mov     byte ptr [0x8fe], 0             ; C6 06 FE 08 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 9F 07 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_06ED:
        mov     ax, word ptr [0x4c]             ; A1 4C 00
        mov     word ptr [0x8b4], ax            ; A3 B4 08
        mov     ax, word ptr [0xa6a]            ; A1 6A 0A
        mov     word ptr [0x8fc], ax            ; A3 FC 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        push    word ptr [0x4c]                 ; FF 36 4C 00
        call    far USER.CHECKDLGBUTTON         ; 9A 15 07 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0xa6a]                ; FF 36 6A 0A
        call    far USER.CHECKDLGBUTTON         ; 9A 25 07 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        push    word ptr [0x730]                ; FF 36 30 07
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 82 00 00 00 [FIXUP]
        jmp     L_0890                          ; E9 5C 01
L_0734:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0743                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A CA 00 00 00 [FIXUP]
L_0743:
        sub     ax, ax                          ; 2B C0
        jmp     L_0A89                          ; E9 41 03
L_0748:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0754                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0754:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0743                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A EA 00 00 00 [FIXUP]
        jmp     L_0743                          ; EB DE
L_0765:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0797                          ; 74 2A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0775                          ; 75 03
        jmp     L_09FC                          ; E9 87 02
L_0775:
        cmp     ax, 4                           ; 3D 04 00
        jne     L_077D                          ; 75 03
        jmp     L_0A67                          ; E9 EA 02
L_077D:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0785                          ; 75 03
        jmp     L_0A47                          ; E9 C2 02
L_0785:
        cmp     ax, 6                           ; 3D 06 00
        jne     L_078D                          ; 75 03
        jmp     L_0A0B                          ; E9 7E 02
L_078D:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0795                          ; 75 03
        jmp     L_0A29                          ; E9 94 02
L_0795:
        jmp     L_0743                          ; EB AC
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0797 -- offset 0x0797 -- 349 instr
; Dispatcher: tabla de decisiones cmp+jcc (349 instr).
; tags: calls_kernel, calls_user, dispatcher, far
; calls (intra): sub_0C5A, sub_1243, sub_1355, sub_14EC
; calls (inter): KERNEL.WRITEPROFILESTRING, USER.CHECKDLGBUTTON, USER.ENABLEWINDOW, USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.ISDLGBUTTONCHECKED (+4 mas)
;----------------------------------------------------------------------
L_0797:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 1A 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A 20 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_07B0                          ; 75 03
        jmp     L_0890                          ; E9 E0 00
L_07B0:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     word ptr [bp - 0x118], ax       ; 89 86 E8 FE
        call    far _entry_69                   ; 9A 31 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0x15c]                ; 8D 86 A4 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 46 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 4E 09 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07F9                          ; 74 08
        mov     word ptr [bp - 0x1a2], 6        ; C7 86 5E FE 06 00
        jmp     L_07FF                          ; EB 06
L_07F9:
        mov     word ptr [bp - 0x1a2], 0        ; C7 86 5E FE 00 00
L_07FF:
        cmp     byte ptr [bp - 0x15c], 0        ; 80 BE A4 FE 00
        je      L_0852                          ; 74 4C
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        lea     ax, [bp - 0x15c]                ; 8D 86 A4 FE
        push    ax                              ; 50
        push    word ptr [bp - 0x1a2]           ; FF B6 5E FE
        call    far _entry_196                  ; 9A 69 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0852                          ; 74 35
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        call    far _entry_61                   ; 9A 79 05 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0x15e], ax       ; 89 86 A2 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x11a]                ; 8D 86 E6 FE
        push    ax                              ; 50
        call    far _entry_195                  ; 9A 06 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0852                          ; 74 12
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A BC 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0896                          ; 75 44
L_0852:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A 9F 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 7C 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x200e                      ; B8 0E 20
L_0873:
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 09 05 00 00 [FIXUP]
L_0879:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
L_087F:
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A E9 0A 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A B3 04 00 00 [FIXUP]
L_0890:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A89                          ; E9 F3 01
L_0896:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x1e6], ax       ; 89 86 1A FE
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        lea     ax, [bp - 0x1a0]                ; 8D 86 60 FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1355                          ; E8 9F 0A
        mov     bx, word ptr [bp - 0x1e6]       ; 8B 9E 1A FE
        test    byte ptr [bx + 6], 0x10         ; F6 47 06 10
        je      L_08D8                          ; 74 18
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        mov     bx, word ptr [bx + 8]           ; 8B 5F 08
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A E2 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08D8                          ; 75 05
        mov     ax, 0x2020                      ; B8 20 20
        jmp     L_0873                          ; EB 9B
L_08D8:
        mov     ax, 0x8fe                       ; B8 FE 08
        push    ax                              ; 50
        lea     ax, [bp - 0x15c]                ; 8D 86 A4 FE
        push    ax                              ; 50
        call    far _entry_71                   ; 9A E7 09 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_08F1                          ; 75 07
        cmp     word ptr [0x7e], 3              ; 83 3E 7E 00 03
        jne     L_0946                          ; 75 55
L_08F1:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        call    far _entry_198                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0946                          ; 74 44
        lea     ax, [bp - 0x1a0]                ; 8D 86 60 FE
        push    ax                              ; 50
        lea     ax, [bp - 0x328]                ; 8D 86 D8 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1243                          ; E8 32 09
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        lea     ax, [bp - 0x328]                ; 8D 86 D8 FC
        push    ax                              ; 50
        lea     ax, [bp - 0x2e6]                ; 8D 86 1A FD
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14EC                          ; E8 C8 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2e6]                ; 8D 86 1A FD
        push    ax                              ; 50
        mov     ax, 0x124                       ; B8 24 01
        push    ax                              ; 50
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 6                           ; 3D 06 00
        je      L_093D                          ; 74 03
        jmp     L_087F                          ; E9 42 FF
L_093D:
        push    word ptr [0xc32]                ; FF 36 32 0C
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
L_0946:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 5D 09 00 00 [FIXUP]
        mov     word ptr [0x4c], ax             ; A3 4C 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A 6C 09 00 00 [FIXUP]
        mov     word ptr [0xa6a], ax            ; A3 6A 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7e], ax             ; A3 7E 00
        mov     ax, 0xd2                        ; B8 D2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x138                       ; B8 38 01
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [0xa6a], 0             ; 83 3E 6A 0A 00
        je      L_0989                          ; 74 05
        mov     ax, 0x72b                       ; B8 2B 07
        jmp     L_098C                          ; EB 03
L_0989:
        mov     ax, 0x72d                       ; B8 2D 07
L_098C:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.WRITEPROFILESTRING   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        cmp     word ptr [0x4c], 0              ; 83 3E 4C 00 00
        jne     L_09A6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_09A8                          ; EB 02
L_09A6:
        sub     ax, ax                          ; 2B C0
L_09A8:
        push    ax                              ; 50
        push    word ptr [0xa6a]                ; FF 36 6A 0A
        call    far _entry_197                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        je      L_09BC                          ; 74 03
        jmp     L_0879                          ; E9 BD FE
L_09BC:
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        je      L_09C6                          ; 74 03
        jmp     L_0879                          ; E9 B3 FE
L_09C6:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_09FC                          ; 75 2F
        lea     ax, [bp - 0x1e4]                ; 8D 86 1C FE
        push    ax                              ; 50
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 8]      ; 8B 58 08
        push    word ptr [bx]                   ; FF 37
        call    far _entry_71                   ; 9A 9A 06 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_09F2                          ; 74 03
        jmp     L_0879                          ; E9 87 FE
L_09F2:
        lea     ax, [bp - 0x1a0]                ; 8D 86 60 FE
        push    ax                              ; 50
        call    far _entry_191                  ; 9A 02 03 00 00 [FIXUP]
L_09FC:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A 42 0B 00 00 [FIXUP]
        jmp     L_0890                          ; E9 85 FE
L_0A0B:
        cmp     word ptr [0x8b4], 0             ; 83 3E B4 08 00
        jne     L_0A17                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A19                          ; EB 02
L_0A17:
        sub     ax, ax                          ; 2B C0
L_0A19:
        mov     word ptr [0x8b4], ax            ; A3 B4 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        push    word ptr [0x8b4]                ; FF 36 B4 08
        jmp     L_0A5F                          ; EB 36
L_0A29:
        cmp     word ptr [0x730], 0             ; 83 3E 30 07 00
        jne     L_0A35                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A37                          ; EB 02
L_0A35:
        sub     ax, ax                          ; 2B C0
L_0A37:
        mov     word ptr [0x730], ax            ; A3 30 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        push    word ptr [0x730]                ; FF 36 30 07
        jmp     L_0A5F                          ; EB 18
L_0A47:
        cmp     word ptr [0x8fc], 0             ; 83 3E FC 08 00
        jne     L_0A53                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0A55                          ; EB 02
L_0A53:
        sub     ax, ax                          ; 2B C0
L_0A55:
        mov     word ptr [0x8fc], ax            ; A3 FC 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
L_0A5F:
        call    far USER.CHECKDLGBUTTON         ; 9A 05 07 00 00 [FIXUP]
        jmp     L_0890                          ; E9 29 FE
L_0A67:
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        je      L_0A71                          ; 74 03
        jmp     L_0743                          ; E9 D2 FC
L_0A71:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A C7 0A 00 00 [FIXUP]
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C5A                          ; E8 D4 01
        jmp     L_0890                          ; E9 07 FE
L_0A89:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_0AF1                          ; 74 4A
        cmp     ax, 9                           ; 3D 09 00
        je      L_0ADE                          ; 74 32
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0AB8                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0B0E                          ; 74 58
        jmp     L_0AED                          ; EB 35
L_0AB8:
        cmp     word ptr [0x728], 0             ; 83 3E 28 07 00
        je      L_0AD4                          ; 74 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 28 0B 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A E9 06 00 00 [FIXUP]
L_0AD4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 2D 07 00 00 [FIXUP]
        jmp     L_0B36                          ; EB 58
L_0ADE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0AED                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 6B 04 00 00 [FIXUP]
L_0AED:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B48                          ; EB 57
L_0AF1:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0AFD                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_0AFD:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0AED                          ; 74 E9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A 5F 07 00 00 [FIXUP]
        jmp     L_0AED                          ; EB DF
L_0B0E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_0AED                          ; 72 D7
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_0B3B                          ; 76 20
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0AED                          ; 75 CD
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A 86 04 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A A5 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B3B                          ; 75 05
L_0B36:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B48                          ; EB 0D
L_0B3B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_59                   ; 9A 0E 03 00 00 [FIXUP]
        jmp     L_0B36                          ; EB EE
L_0B48:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B53 -- offset 0x0B53 -- 58 instr
; Funcion mediana (58 instr, 2 calls).
; tags: far, medium
; callers: sub_1124
; calls (intra): sub_0BD5, sub_14EC
;----------------------------------------------------------------------
L_0B53:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x188                       ; 81 EC 88 01
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 8]      ; 8B 40 08
        mov     word ptr [bp - 0x188], ax       ; 89 86 78 FE
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0B91                          ; 75 10
        mov     ax, 0x110                       ; B8 10 01
        push    ax                              ; 50
        lea     ax, [bp - 0x144]                ; 8D 86 BC FE
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 19 04 00 00 [FIXUP]
        jmp     L_0BA6                          ; EB 15
L_0B91:
        mov     bx, word ptr [bp - 0x188]       ; 8B 9E 78 FE
        push    word ptr [bx]                   ; FF 37
        lea     ax, [bp - 0x186]                ; 8D 86 7A FE
        push    ax                              ; 50
        lea     ax, [bp - 0x144]                ; 8D 86 BC FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BD5                          ; E8 2F 00
L_0BA6:
        mov     ax, 0x201a                      ; B8 1A 20
        push    ax                              ; 50
        lea     ax, [bp - 0x144]                ; 8D 86 BC FE
        push    ax                              ; 50
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14EC                          ; E8 33 09
        push    word ptr [0x10f4]               ; FF 36 F4 10
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        call    far _entry_109                  ; 9A 31 09 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0BD5 -- offset 0x0BD5 -- 24 instr
; Funcion sin clasificar definitiva (24 instr).
; tags: small
; callers: sub_0625, sub_0B53
;----------------------------------------------------------------------
L_0BD5:
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
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0C08                          ; 75 11
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x732                       ; B8 32 07
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_196                  ; 9A 15 08 00 00 [FIXUP]
        jmp     L_0C4E                          ; EB 46
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C08 -- offset 0x0C08 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: far, small
;----------------------------------------------------------------------
L_0C08:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x2e                        ; B8 2E 00
        push    ax                              ; 50
        call    far _entry_67                   ; 9A 4A 08 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_0C17:
        dec     word ptr [bp - 6]               ; FF 4E FA
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_0C17                          ; 75 F5
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far _entry_45                   ; 9A BD 0E 00 00 [FIXUP]
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     byte ptr [bx + si], 0           ; C6 00 00
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_180                  ; 9A 8B 0B 00 00 [FIXUP]
L_0C4E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C5A -- offset 0x0C5A -- 68 instr
; Funcion mediana (68 instr, 3 calls).
; tags: calls_user, far, medium
; callers: sub_0455, sub_0797
; calls (intra): sub_0CEB
; calls (inter): USER.ENABLEWINDOW, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0C5A:
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
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        call    far USER.ENABLEWINDOW           ; 9A D0 0A 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
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
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_203                  ; 9A CE 0D 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0CD4                          ; 74 23
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_202                  ; 9A E2 0D 00 00 [FIXUP]
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bx + si + 0x1e]   ; 8B 58 1E
        push    word ptr [bx]                   ; FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0CEB                          ; E8 1A 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_0CD4:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_205                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CEB -- offset 0x0CEB -- 281 instr
; Dispatcher: tabla de decisiones cmp+jcc (281 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_0C5A
; calls (intra): sub_0FB6
; calls (inter): KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0CEB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_200                  ; 9A 20 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0D37                          ; 74 2B
        mov     ax, 0x424                       ; B8 24 04
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FB6                          ; E8 99 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D2F                          ; 74 0B
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_204                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
L_0D2F:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A 54 0E 00 00 [FIXUP]
L_0D37:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_0D43                          ; 7D 06
        cmp     word ptr [bp - 8], -2           ; 83 7E F8 FE
        jne     L_0D48                          ; 75 05
L_0D43:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D4A                          ; EB 02
L_0D48:
        sub     ax, ax                          ; 2B C0
L_0D4A:
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
        sub     sp, 0x48                        ; 83 EC 48
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A E2 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        je      L_0DA0                          ; 74 2C
        push    dx                              ; 52
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A 18 0F 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x48]                 ; 8D 46 B8
        push    ax                              ; 50
        call    far _entry_199                  ; 9A C0 0D 00 00 [FIXUP]
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_0DA0                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0DA3                          ; EB 03
L_0DA0:
        mov     ax, 1                           ; B8 01 00
L_0DA3:
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
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_199                  ; 9A 36 0F 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_0DE6                          ; 74 1A
        push    ax                              ; 50
        call    far _entry_203                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0E16                          ; 74 40
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_202                  ; 9A FF FF 00 00 [FIXUP]
L_0DE6:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0DF1                          ; 75 03
        jmp     L_0EC1                          ; E9 D0 00
L_0DF1:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    bx                              ; 53
        call    far _entry_198                  ; 9A FA 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E01                          ; 75 03
        jmp     L_0EC1                          ; E9 C0 00
L_0E01:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_201                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jge     L_0E1C                          ; 7D 09
        jmp     L_0EC3                          ; E9 AD 00
L_0E16:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0EC3                          ; E9 A7 00
L_0E1C:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_200                  ; 9A 2F 0E 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_0E60                          ; 74 35
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_200                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_0E58                          ; 74 1E
        mov     ax, 0x425                       ; B8 25 04
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FB6                          ; E8 66 01
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GLOBALFREE           ; 9A 5C 0E 00 00 [FIXUP]
L_0E58:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
L_0E60:
        cmp     word ptr [bp - 6], 0x7fff       ; 81 7E FA FF 7F
        je      L_0EC1                          ; 74 5A
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 0x1e]       ; FF 70 1E
        call    far KERNEL.LOCALFREE            ; 9A C3 04 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_167                  ; 9A 48 0F 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx + 0x1e], ax        ; 89 47 1E
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, 0x2a                        ; 05 2A 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A 28 08 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_117                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 6C 0F 00 00 [FIXUP]
L_0EC1:
        sub     ax, ax                          ; 2B C0
L_0EC3:
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
        sub     sp, 0x92                        ; 81 EC 92 00
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALLOCK           ; 9A F7 0E 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      ax, dx                          ; 0B C2
        jne     L_0EF3                          ; 75 03
        jmp     L_0FAA                          ; E9 B7 00
L_0EF3:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        or      ax, dx                          ; 0B C2
        jne     L_0F08                          ; 75 03
        jmp     L_0FA2                          ; E9 9A 00
L_0F08:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A 2D 0F 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x50]                 ; 8D 46 B0
        push    ax                              ; 50
        call    far _entry_199                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        cmp     ax, 0x7fff                      ; 3D FF 7F
        je      L_0F9A                          ; 74 58
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ax                              ; 50
        call    far _entry_167                  ; 9A C7 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        je      L_0F9A                          ; 74 48
        lea     ax, [bp - 0x92]                 ; 8D 86 6E FF
        push    ax                              ; 50
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     ax, word ptr [bx]               ; 03 07
        add     ax, 0x2a                        ; 05 2A 00
        push    ax                              ; 50
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A AE 05 00 00 [FIXUP]
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     si, ax                          ; 8B F0
        push    word ptr [bx + si + 0x1e]       ; FF 70 1E
        call    far KERNEL.LOCALFREE            ; 9A 79 0E 00 00 [FIXUP]
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp - 0xe]             ; F7 6E F2
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bx + si + 0x1e], ax   ; 89 40 1E
L_0F9A:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GLOBALUNLOCK         ; 9A A6 0F 00 00 [FIXUP]
L_0FA2:
        push    word ptr [bp + 8]               ; FF 76 08
        call    far KERNEL.GLOBALUNLOCK         ; 9A 8A 0D 00 00 [FIXUP]
L_0FAA:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0FB6 -- offset 0x0FB6 -- 120 instr
; Funcion compleja: 120 instrucciones, 5 llamadas, 5 branches.
; tags: calls_kernel, calls_user, complex, far
; callers: sub_0CEB
; calls (intra): sub_10D3
; calls (inter): KERNEL.MAKEPROCINSTANCE, USER.ENUMCHILDWINDOWS, USER.ENUMWINDOWS, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_0FB6:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x94a], ax            ; A3 4A 09
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x944], ax            ; A3 44 09
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [0x940], ax            ; A3 40 09
        mov     word ptr [0x942], dx            ; 89 16 42 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x946], ax            ; A3 46 09
        mov     word ptr [0x948], 0xffff        ; C7 06 48 09 FF FF
        mov     ax, word ptr [0x734]            ; A1 34 07
        or      ax, word ptr [0x736]            ; 0B 06 36 07
        jne     L_101E                          ; 75 30
        mov     ax, OFFSET _entry_26            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_26            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 13 10 00 00 [FIXUP]
        mov     word ptr [0x734], ax            ; A3 34 07
        mov     word ptr [0x736], dx            ; 89 16 36 07
        mov     ax, OFFSET _entry_27            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_27            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x782]                ; FF 36 82 07
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x738], ax            ; A3 38 07
        mov     word ptr [0x73a], dx            ; 89 16 3A 07
L_101E:
        push    word ptr [0x736]                ; FF 36 36 07
        push    word ptr [0x734]                ; FF 36 34 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENUMWINDOWS            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x948]            ; A1 48 09
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
        mov     ax, word ptr [0x780]            ; A1 80 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_1075                          ; 74 26
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x140                       ; B8 40 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10D3                          ; E8 78 00
        or      ax, ax                          ; 0B C0
        je      L_1075                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x73a]                ; FF 36 3A 07
        push    word ptr [0x738]                ; FF 36 38 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.ENUMCHILDWINDOWS       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1078                          ; EB 03
L_1075:
        mov     ax, 1                           ; B8 01 00
L_1078:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x14e                       ; B8 4E 01
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10D3                          ; E8 3A 00
        or      ax, ax                          ; 0B C0
        je      L_10C1                          ; 74 24
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x94a]                ; FF 36 4A 09
        push    word ptr [0x944]                ; FF 36 44 09
        push    word ptr [0x942]                ; FF 36 42 09
        push    word ptr [0x940]                ; FF 36 40 09
        call    far USER.SENDMESSAGE            ; 9A 75 0C 00 00 [FIXUP]
        mov     word ptr [0x948], ax            ; A3 48 09
        mov     ax, word ptr [0x946]            ; A1 46 09
        cmp     word ptr [0x948], ax            ; 39 06 48 09
        je      L_10C6                          ; 74 05
L_10C1:
        mov     ax, 1                           ; B8 01 00
        jmp     L_10C8                          ; EB 02
L_10C6:
        sub     ax, ax                          ; 2B C0
L_10C8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10D3 -- offset 0x10D3 -- 39 instr
; Funcion mediana (39 instr, 1 calls).
; tags: calls_user, far, medium
; callers: sub_0FB6
; calls (inter): USER.GETCLASSNAME
;----------------------------------------------------------------------
L_10D3:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2c                        ; 83 EC 2C
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.GETCLASSNAME           ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 1                           ; 3D 01 00
        jle     L_1116                          ; 7E 1B
        mov     si, ax                          ; 8B F0
        mov     byte ptr [bp + si - 0x2d], 0    ; C6 42 D3 00
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_71                   ; 9A CB 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1116                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1118                          ; EB 02
L_1116:
        sub     ax, ax                          ; 2B C0
L_1118:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1124 -- offset 0x1124 -- 75 instr
; Dispatcher: tabla de decisiones cmp+jcc (75 instr).
; tags: dispatcher, far
; calls (intra): sub_049F, sub_0B53
;----------------------------------------------------------------------
L_1124:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 6], 2            ; F6 47 06 02
        jne     L_114C                          ; 75 03
        jmp     L_11D6                          ; E9 8A 00
L_114C:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B53                          ; E8 02 FA
        cmp     ax, 2                           ; 3D 02 00
        je      L_11AB                          ; 74 55
        cmp     ax, 6                           ; 3D 06 00
        je      L_1162                          ; 74 07
        cmp     ax, 7                           ; 3D 07 00
        je      L_11D6                          ; 74 76
        jmp     L_11AB                          ; EB 49
L_1162:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx + 8]           ; 8B 5F 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_118E                          ; 74 1F
        cmp     word ptr [0x7e], 3              ; 83 3E 7E 00 03
        je      L_118E                          ; 74 18
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 6], 0x10         ; F6 47 06 10
        je      L_11AF                          ; 74 30
        mov     ax, 0x2020                      ; B8 20 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 0D 13 00 00 [FIXUP]
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
L_118E:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_049F                          ; E8 0C F3
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 6], 2            ; F6 47 06 02
        je      L_11CF                          ; 74 24
L_11AB:
        sub     ax, ax                          ; 2B C0
        jmp     L_11D9                          ; EB 2A
L_11AF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     bx, word ptr [bx + 8]           ; 8B 5F 08
        push    word ptr [bx]                   ; FF 37
        cmp     word ptr [0x4c], 0              ; 83 3E 4C 00 00
        jne     L_11C3                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_11C5                          ; EB 02
L_11C3:
        sub     ax, ax                          ; 2B C0
L_11C5:
        push    ax                              ; 50
        push    word ptr [0xa6a]                ; FF 36 6A 0A
        call    far _entry_197                  ; 9A AE 09 00 00 [FIXUP]
L_11CF:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_11AB                          ; 75 D5
L_11D6:
        mov     ax, 1                           ; B8 01 00
L_11D9:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_11E2 -- offset 0x11E2 -- 44 instr
; Funcion mediana (44 instr, 1 calls).
; tags: calls_kernel, far, medium
; callers: sub_049F
; calls (inter): KERNEL.GETCODEHANDLE
;----------------------------------------------------------------------
L_11E2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, OFFSET _entry_209           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_209           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A 02 12 00 00 [FIXUP]
        mov     ax, OFFSET _entry_208           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_208           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A 0F 12 00 00 [FIXUP]
        mov     ax, OFFSET _entry_207           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_207           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A 1C 12 00 00 [FIXUP]
        mov     ax, OFFSET _entry_206           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_206           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A 29 12 00 00 [FIXUP]
        mov     ax, OFFSET _entry_196           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_196           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A 36 12 00 00 [FIXUP]
        mov     ax, OFFSET _entry_197           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_197           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETCODEHANDLE        ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1243 -- offset 0x1243 -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
; callers: sub_0797
;----------------------------------------------------------------------
L_1243:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_1263                          ; EB 04
L_125F:
        inc     di                              ; 47
        inc     word ptr [bp - 4]               ; FF 46 FC
L_1263:
        inc     si                              ; 46
        mov     al, byte ptr [si - 1]           ; 8A 44 FF
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_70                   ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [di], al               ; 88 05
        or      al, al                          ; 0A C0
        jne     L_125F                          ; 75 EA
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1285 -- offset 0x1285 -- 66 instr
; Dispatcher: tabla de decisiones cmp+jcc (66 instr).
; tags: dispatcher
; callers: sub_0112, sub_1355
; calls (intra): sub_132E
;----------------------------------------------------------------------
L_1285:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_61                   ; 9A FC 12 00 00 [FIXUP]
        dec     ax                              ; 48
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     si, ax                          ; 8B F0
        add     si, word ptr [bp + 6]           ; 03 76 06
        dec     si                              ; 4E
        mov     di, si                          ; 8B FE
        cmp     ax, 2                           ; 3D 02 00
        jne     L_12C2                          ; 75 17
        cmp     byte ptr [si], 0x3a             ; 80 3C 3A
        je      L_12BB                          ; 74 0B
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_12C2                          ; 75 0D
        cmp     byte ptr [si - 1], 0x2e         ; 80 7C FF 2E
        jne     L_12C2                          ; 75 07
L_12BB:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_12F4                          ; EB 32
L_12C2:
        cmp     byte ptr [si], 0x5c             ; 80 3C 5C
        jne     L_12CE                          ; 75 07
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_12F4                          ; EB 26
L_12CE:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_12E0                          ; 74 0C
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_132E                          ; E8 54 00
        or      ax, ax                          ; 0B C0
        jne     L_1326                          ; 75 48
        jmp     L_12BB                          ; EB DB
L_12E0:
        mov     word ptr [bp - 8], 2            ; C7 46 F8 02 00
L_12E5:
        cmp     word ptr [bp + 6], di           ; 39 7E 06
        jae     L_12F4                          ; 73 0A
        cmp     byte ptr [di], 0x2e             ; 80 3D 2E
        je      L_1326                          ; 74 37
        cmp     byte ptr [di], 0x5c             ; 80 3D 5C
        jne     L_1313                          ; 75 1F
L_12F4:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0x256                       ; 05 56 02
        push    ax                              ; 50
        call    far _entry_61                   ; 9A AD 0E 00 00 [FIXUP]
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        cmp     ax, 0x42                        ; 3D 42 00
        jle     L_1316                          ; 7E 0E
        mov     ax, 0x200e                      ; B8 0E 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 75 08 00 00 [FIXUP]
        jmp     L_1326                          ; EB 13
L_1313:
        dec     di                              ; 4F
        jmp     L_12E5                          ; EB CF
L_1316:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0x256                       ; 05 56 02
        push    ax                              ; 50
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        call    far _entry_180                  ; 9A 4A 0C 00 00 [FIXUP]
L_1326:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_132E -- offset 0x132E -- 19 instr
; Funcion hoja (no llama a otras, 19 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_0112, sub_1285
;----------------------------------------------------------------------
L_132E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_1347                          ; EB 10
L_1337:
        cmp     byte ptr [si], 0x2a             ; 80 3C 2A
        je      L_1341                          ; 74 05
        cmp     byte ptr [si], 0x3f             ; 80 3C 3F
        jne     L_1346                          ; 75 05
L_1341:
        mov     ax, 1                           ; B8 01 00
        jmp     L_134E                          ; EB 08
L_1346:
        inc     si                              ; 46
L_1347:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_1337                          ; 75 EB
        sub     ax, ax                          ; 2B C0
L_134E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1355 -- offset 0x1355 -- 41 instr
; Funcion mediana (41 instr, 1 calls).
; tags: far, medium
; callers: sub_0797
; calls (intra): sub_1285
;----------------------------------------------------------------------
L_1355:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_61                   ; 9A 96 12 00 00 [FIXUP]
        add     ax, word ptr [bp + 8]           ; 03 46 08
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_1381                          ; EB 0B
L_1376:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        je      L_1389                          ; 74 0B
        dec     word ptr [bp - 4]               ; FF 4E FC
L_1381:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_1376                          ; 77 ED
L_1389:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 36 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1285                          ; E8 DF FE
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13B1 -- offset 0x13B1 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: far, small
; callers: sub_1435
;----------------------------------------------------------------------
L_13B1:
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
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        add     si, word ptr [bx]               ; 03 37
        test    byte ptr [si + 4], 1            ; F6 44 04 01
        je      L_13DB                          ; 74 08
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        cmp     word ptr [si + 0x18], ax        ; 39 44 18
        jne     L_13E0                          ; 75 05
L_13DB:
        mov     ax, 1                           ; B8 01 00
        jmp     L_13E2                          ; EB 02
L_13E0:
        sub     ax, ax                          ; 2B C0
L_13E2:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_13EE -- offset 0x13EE -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: far, small
; callers: sub_0112
;----------------------------------------------------------------------
L_13EE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x7e], 3              ; C7 06 7E 00 03 00
        mov     word ptr [0xa6a], 1             ; C7 06 6A 0A 01 00
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 8]           ; 8B 5F 08
        push    word ptr [bx]                   ; FF 37
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_197                  ; 9A CB 11 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1435 -- offset 0x1435 -- 84 instr
; Dispatcher: tabla de decisiones cmp+jcc (84 instr).
; tags: dispatcher, far
; callers: sub_0112
; calls (intra): sub_13B1
;----------------------------------------------------------------------
L_1435:
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
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13B1                          ; E8 66 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_1456                          ; 75 04
L_1452:
        sub     ax, ax                          ; 2B C0
        jmp     L_14B7                          ; EB 61
L_1456:
        mov     bx, word ptr [0x1218]           ; 8B 1E 18 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0xa2                        ; B8 A2 00
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + si + 4]      ; 8A 40 04
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [0x728], ax            ; A3 28 07
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xf9a]                ; FF 36 9A 0F
        push    word ptr [0xf98]                ; FF 36 98 0F
        call    far _entry_93                   ; 9A E9 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        jne     L_1498                          ; 75 09
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 84 11 00 00 [FIXUP]
L_1498:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_14AF                          ; 74 0F
        cmp     ax, 1                           ; 3D 01 00
        je      L_14B4                          ; 74 0F
        cmp     ax, 2                           ; 3D 02 00
        je      L_14AF                          ; 74 05
        cmp     ax, 7                           ; 3D 07 00
        je      L_1452                          ; 74 A3
L_14AF:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_14B7                          ; EB 03
L_14B4:
        mov     ax, 1                           ; B8 01 00
L_14B7:
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
        sub     sp, 0xc                         ; 83 EC 0C
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    far _entry_52                   ; 9A 05 15 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x8b8], ax            ; A3 B8 08
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_14EC -- offset 0x14EC -- 57 instr
; Iterador con instrucciones de string (movsb/scasb/...) (57 instr).
; tags: complex_iterator, string_op
; callers: sub_0797, sub_0B53
;----------------------------------------------------------------------
L_14EC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x106                       ; 81 EC 06 01
        push    di                              ; 57
        push    si                              ; 56
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        mov     si, bp                          ; 8B F5
        sub     si, 0x102                       ; 81 EE 02 01
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
L_1512:
        mov     ax, word ptr [0x8b8]            ; A1 B8 08
        cmp     word ptr [si], ax               ; 39 04
        jne     L_1521                          ; 75 08
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_1544                          ; 74 25
        jmp     L_153C                          ; EB 1B
L_1521:
        mov     al, byte ptr [si]               ; 8A 04
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_1512                          ; 75 E5
        sub     ax, ax                          ; 2B C0
        jmp     L_1551                          ; EB 20
L_1531:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        inc     word ptr [bp + 8]               ; FF 46 08
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
L_153C:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1531                          ; 75 ED
L_1544:
        inc     si                              ; 46
        inc     si                              ; 46
L_1546:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        inc     di                              ; 47
        or      al, al                          ; 0A C0
        jne     L_1546                          ; 75 F8
        mov     ax, 1                           ; B8 01 00
L_1551:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
