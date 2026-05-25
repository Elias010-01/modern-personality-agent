; AUTO-GENERATED from original WRITE segment 23
; segment_size=2480 bytes, flags=0xf130
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
        sub     sp, 0x52                        ; 83 EC 52
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0019                          ; 75 03
        jmp     L_00E2                          ; E9 C9 00
L_0019:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0021                          ; 75 03
        jmp     L_00CE                          ; E9 AD 00
L_0021:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_0029                          ; 75 03
        jmp     L_0259                          ; E9 30 02
L_0029:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0039                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0036                          ; 75 03
        jmp     L_00FF                          ; E9 C9 00
L_0036:
        jmp     L_00DD                          ; E9 A4 00
L_0039:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 7F 03 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_005D                          ; 75 03
        jmp     L_0264                          ; E9 07 02
L_005D:
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
L_0069:
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        jne     L_0078                          ; 75 03
        jmp     L_0264                          ; E9 EC 01
L_0078:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 81 02 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        and     al, 7                           ; 24 07
        cmp     al, 3                           ; 3C 03
        jne     L_00BD                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00BF                          ; EB 02
L_00BD:
        sub     ax, ax                          ; 2B C0
L_00BF:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 93 02 00 00 [FIXUP]
        add     word ptr [bp - 0x14], 4         ; 83 46 EC 04
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0069                          ; EB 9B
L_00CE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00DD                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
L_00DD:
        sub     ax, ax                          ; 2B C0
        jmp     L_02F9                          ; E9 17 02
L_00E2:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00EE                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_00EE:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_00DD                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00DD                          ; EB DE
L_00FF:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x1a                        ; 3D 1A 00
        ja      L_00DD                          ; 77 D3
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x2c0]        ; 2E FF A7 C0 02
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_81                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        mov     word ptr [bp - 0x4c], ax        ; 89 46 B4
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
L_012D:
        cmp     word ptr [bp - 4], 0xf          ; 83 7E FC 0F
        jle     L_0136                          ; 7E 03
        jmp     L_01CC                          ; E9 96 00
L_0136:
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_80                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0152                          ; 75 09
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_0264                          ; E9 12 01
L_0152:
        cmp     word ptr [bp - 0x52], -1        ; 83 7E AE FF
        je      L_015E                          ; 74 06
        cmp     word ptr [bp - 0x52], 0         ; 83 7E AE 00
        jne     L_0163                          ; 75 05
L_015E:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_012D                          ; EB CA
L_0163:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        mov     word ptr [bp - 0x50], ax        ; 89 46 B0
L_0169:
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x4e], ax        ; 89 46 B2
        or      ax, ax                          ; 0B C0
        je      L_0191                          ; 74 1C
        cmp     word ptr [bp - 0x52], ax        ; 39 46 AE
        je      L_015E                          ; 74 E4
        cmp     word ptr [bp - 0x52], ax        ; 39 46 AE
        jae     L_01B0                          ; 73 31
        push    bx                              ; 53
        mov     ax, bx                          ; 8B C3
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x4c]        ; 8B 46 B4
        sub     ax, bx                          ; 2B C3
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
L_0191:
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     ax, word ptr [bp - 0x52]        ; 8B 46 AE
        mov     word ptr [bx], ax               ; 89 07
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A A9 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_01B6                          ; 74 0A
        mov     al, 7                           ; B0 07
        jmp     L_01B8                          ; EB 08
L_01B0:
        add     word ptr [bp - 0x50], 4         ; 83 46 B0 04
        jmp     L_0169                          ; EB B3
L_01B6:
        mov     al, 4                           ; B0 04
L_01B8:
        sub     al, 4                           ; 2C 04
        and     al, 7                           ; 24 07
        mov     bx, word ptr [bp - 0x50]        ; 8B 5E B0
        mov     cl, byte ptr [bx + 2]           ; 8A 4F 02
        and     cl, 0xf8                        ; 80 E1 F8
        or      al, cl                          ; 0A C1
        mov     byte ptr [bx + 2], al           ; 88 47 02
        jmp     L_015E                          ; EB 92
L_01CC:
        mov     ax, 0x22                        ; B8 22 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x14]   ; 8B 40 14
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0229                          ; 75 24
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        je      L_0259                          ; 74 45
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx + si + 0x14], ax   ; 89 40 14
L_0229:
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     si, ax                          ; 8B F0
        or      byte ptr [bx + si + 6], 2       ; 80 48 06 02
        mov     word ptr [0x2d0], 0xffff        ; C7 06 D0 02 FF FF
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
L_0259:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
L_0264:
        mov     ax, 1                           ; B8 01 00
        jmp     L_02F9                          ; E9 8F 00
        mov     word ptr [bp - 4], 4            ; C7 46 FC 04 00
L_026F:
        cmp     word ptr [bp - 4], 0xf          ; 83 7E FC 0F
        jg      L_0264                          ; 7F EF
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x6f8                       ; B8 F8 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A BA 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0xc                         ; 05 0C 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A BA 02 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_026F                          ; EB D3
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_02B6                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_02B8                          ; EB 02
L_02B6:
        sub     ax, ax                          ; 2B C0
L_02B8:
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 77 03 00 00 [FIXUP]
        jmp     L_0264                          ; EB A4
        adc     al, byte ptr [bx + di]          ; 12 01
        pop     cx                              ; 59
        add     ch, byte ptr [bp + si + 2]      ; 02 6A 02
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        fld     qword ptr [bx + si]             ; DD 00
        pushf                                   ; 9C
        add     bl, byte ptr [si - 0x63fe]      ; 02 9C 02 9C
        add     bl, byte ptr [si - 0x63fe]      ; 02 9C 02 9C
        add     bl, byte ptr [si - 0x63fe]      ; 02 9C 02 9C
        add     bl, byte ptr [si - 0x63fe]      ; 02 9C 02 9C
        add     bl, byte ptr [si - 0x63fe]      ; 02 9C 02 9C
        add     bl, byte ptr [si - 0x16fe]      ; 02 9C 02 E9
        imul    di, di, 0x5e                    ; 6B FF 5E
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
        sub     sp, 0x38                        ; 83 EC 38
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0xc]    ; 8B 41 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_033A                          ; 75 03
        jmp     L_04AE                          ; E9 74 01
L_033A:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_0342                          ; 75 03
        jmp     L_049A                          ; E9 58 01
L_0342:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0352                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_034F                          ; 75 03
        jmp     L_04CB                          ; E9 7C 01
L_034F:
        jmp     L_04A9                          ; E9 57 01
L_0352:
        mov     ax, word ptr [0x30e]            ; A1 0E 03
        mov     word ptr [0x8a2], ax            ; A3 A2 08
        cmp     ax, 1                           ; 3D 01 00
        jne     L_0365                          ; 75 08
        mov     word ptr [0x8a0], 9             ; C7 06 A0 08 09 00
        jmp     L_036B                          ; EB 06
L_0365:
        mov     word ptr [0x8a0], 8             ; C7 06 A0 08 08 00
L_036B:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x8a0]                ; FF 36 A0 08
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_038E                          ; 75 05
        mov     ax, 0xfa4                       ; B8 A4 0F
        jmp     L_0393                          ; EB 05
L_038E:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     ax, word ptr [bx]               ; 8B 07
L_0393:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [si + 6], -1           ; 83 7C 06 FF
        je      L_03C6                          ; 74 2B
        push    word ptr [si + 6]               ; FF 74 06
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        call    far _entry_78                   ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     byte ptr [bp + di - 0xe], 0     ; C6 43 F2 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A D3 03 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        jmp     L_03D7                          ; EB 11
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03C6 -- offset 0x03C6 -- 558 instr
; Dispatcher: tabla de decisiones cmp+jcc (558 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKDLGBUTTON, USER.GETDLGITEM, USER.GETDLGITEMTEXT, USER.SETDLGITEMTEXT, USER.SETFOCUS, USER.SHOWCURSOR
;----------------------------------------------------------------------
L_03C6:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x6f9                       ; B8 F9 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
L_03D7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A D4 05 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [si + 0xc]             ; FF 74 0C
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 25 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 36 04 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si + 0xe]         ; 2B 44 0E
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 50 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 61 04 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [si + 8]               ; FF 74 08
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 82 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 93 04 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     ax, word ptr [si + 0xa]         ; 2B 44 0A
        sub     ax, word ptr [si + 8]           ; 2B 44 08
        push    ax                              ; 50
L_0479:
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 8E 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 9E 00 00 00 [FIXUP]
        jmp     L_05ED                          ; E9 53 01
L_049A:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_04A9                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A D9 00 00 00 [FIXUP]
L_04A9:
        sub     ax, ax                          ; 2B C0
        jmp     L_09A4                          ; E9 F6 04
L_04AE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_04BA                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
L_04BA:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_04A9                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A F9 00 00 00 [FIXUP]
        jmp     L_04A9                          ; EB DE
L_04CB:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_04ED                          ; 74 1A
        cmp     ax, 2                           ; 3D 02 00
        jne     L_04DB                          ; 75 03
        jmp     L_0812                          ; E9 37 03
L_04DB:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_04E3                          ; 75 03
        jmp     L_0827                          ; E9 44 03
L_04E3:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_04EB                          ; 75 03
        jmp     L_082F                          ; E9 44 03
L_04EB:
        jmp     L_04A9                          ; EB BC
L_04ED:
        lea     ax, [bp - 0x24]                 ; 8D 46 DC
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200a                      ; B8 0A 20
        push    ax                              ; 50
        call    far _entry_86                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_051A                          ; 75 09
L_0511:
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        jmp     L_05ED                          ; E9 D3 00
L_051A:
        mov     ax, word ptr [0x30e]            ; A1 0E 03
        cmp     word ptr [0x8a2], ax            ; 39 06 A2 08
        je      L_0528                          ; 74 05
        call    far _entry_85                   ; 9A FF FF 00 00 [FIXUP]
L_0528:
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_056B                          ; 74 3C
        mov     ax, word ptr [0x107c]           ; A1 7C 10
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa8]            ; A1 A8 0F
        sub     ax, word ptr [0x107c]           ; 2B 06 7C 10
        sub     ax, word ptr [0xa5a]            ; 2B 06 5A 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A 62 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0x10f6]           ; A1 F6 10
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0xfa6]            ; A1 A6 0F
        sub     ax, word ptr [0x10f6]           ; 2B 06 F6 10
        sub     ax, word ptr [0xa6c]            ; 2B 06 6C 0A
        push    ax                              ; 50
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_0579                          ; EB 0E
L_056B:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
L_0579:
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
L_057E:
        cmp     word ptr [bp - 0x20], 4         ; 83 7E E0 04
        jge     L_05F8                          ; 7D 74
        mov     di, word ptr [bp - 0x20]        ; 8B 7E E0
        shl     di, 1                           ; D1 E7
        lea     ax, [bp + di - 0x2e]            ; 8D 43 D2
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _entry_83                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_05A3                          ; 75 03
        jmp     L_0511                          ; E9 6E FF
L_05A3:
        mov     di, word ptr [bp - 0x20]        ; 8B 7E E0
        shl     di, 1                           ; D1 E7
        add     di, bp                          ; 03 FD
        mov     ax, word ptr [di - 0x2e]        ; 8B 45 D2
        add     ax, 7                           ; 05 07 00
        cmp     ax, word ptr [di - 0x1e]        ; 3B 45 E2
        jge     L_05F3                          ; 7D 3E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A BB 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A D1 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A D7 06 00 00 [FIXUP]
L_05ED:
        mov     ax, 1                           ; B8 01 00
        jmp     L_09A4                          ; E9 B1 03
L_05F3:
        inc     word ptr [bp - 0x20]            ; FF 46 E0
        jmp     L_057E                          ; EB 86
L_05F8:
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        jne     L_0637                          ; 75 39
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 62 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        inc     ax                              ; 40
        jne     L_0610                          ; 75 03
        jmp     L_0818                          ; E9 08 02
L_0610:
        mov     ax, 0xfa4                       ; B8 A4 0F
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        push    word ptr [bx]                   ; FF 37
        mov     ax, 0x33                        ; B8 33 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A 37 02 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bx + di + 0xc], ax    ; 89 41 0C
L_0637:
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx]               ; 8B 37
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, 0x2d0                       ; 2D D0 02
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     ax, 0x5a0                       ; 2D A0 05
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, word ptr [bp - 0x22]        ; 3B 46 DE
        jg      L_069A                          ; 7F 39
        add     word ptr [bp - 0x16], 2         ; 83 46 EA 02
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jg      L_069A                          ; 7F 25
        add     word ptr [bp - 0x16], 2         ; 83 46 EA 02
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     ax, word ptr [bp - 0x26]        ; 3B 46 DA
        jg      L_069A                          ; 7F 14
        add     word ptr [bp - 0x16], 2         ; 83 46 EA 02
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
        mov     ax, word ptr [bx]               ; 8B 07
        add     word ptr [bp - 0x14], ax        ; 01 46 EC
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jle     L_06DE                          ; 7E 44
L_069A:
        mov     ax, 0x200d                      ; B8 0D 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xbda], 0             ; C7 06 DA 0B 00 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, bp                          ; 2B C5
        add     ax, 0x2e                        ; 05 2E 00
        sar     ax, 1                           ; D1 F8
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far _entry_73                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     ax, bp                          ; 2B C5
        add     ax, 0x2e                        ; 05 2E 00
        sar     ax, 1                           ; D1 F8
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_04A9                          ; E9 CB FD
L_06DE:
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_0715                          ; 75 2F
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        cmp     word ptr [bp - 0x2e], ax        ; 39 46 D2
        jne     L_0715                          ; 75 27
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [bp - 0x2e]        ; 2B 46 D2
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        cmp     ax, word ptr [si + 0xe]         ; 3B 44 0E
        jne     L_0715                          ; 75 19
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jne     L_0715                          ; 75 11
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sub     ax, word ptr [bp - 0x2a]        ; 2B 46 D6
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        cmp     ax, word ptr [si + 0xa]         ; 3B 44 0A
        jne     L_0715                          ; 75 03
        jmp     L_0818                          ; E9 03 01
L_0715:
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A E8 01 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_0745                          ; 75 03
        jmp     L_07D0                          ; E9 8B 00
L_0745:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     bx, ax                          ; 8B D8
        add     bx, cx                          ; 03 D9
        mov     di, word ptr [bx + 0x10]        ; 8B 7F 10
        or      di, di                          ; 0B FF
        jne     L_0794                          ; 75 37
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    far _entry_64                   ; 9A 0A 02 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        inc     ax                              ; 40
        jne     L_0773                          ; 75 08
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05ED                          ; E9 7A FE
L_0773:
        mov     bx, word ptr [di]               ; 8B 1D
        mov     word ptr [bx + 2], 0xa          ; C7 47 02 0A 00
        mov     bx, word ptr [di]               ; 8B 1D
        mov     word ptr [bx], 1                ; C7 07 01 00
        mov     bx, word ptr [di]               ; 8B 1D
        mov     ax, word ptr [0x71a]            ; A1 1A 07
        mov     dx, word ptr [0x71c]            ; 8B 16 1C 07
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     word ptr [bx + 8], dx           ; 89 57 08
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     si, word ptr [bx]               ; 8B 37
L_0794:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        mov     bx, word ptr [di]               ; 8B 1D
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [di]               ; 8B 05
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        jmp     L_07C2                          ; EB 12
L_07B0:
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        inc     word ptr [bp - 0x24]            ; FF 46 DC
        mov     word ptr [bx], ax               ; 89 07
        inc     word ptr [bp - 0x30]            ; FF 46 D0
        add     word ptr [bp - 0x36], 6         ; 83 46 CA 06
L_07C2:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jl      L_07B0                          ; 7C E6
        mov     word ptr [0x30], 0xffff         ; C7 06 30 00 FF FF
L_07D0:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     cx, word ptr [bp - 0x2e]        ; 8B 4E D2
        mov     word ptr [si + 0xc], cx         ; 89 4C 0C
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [bp - 0x2c]        ; 2B 46 D4
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     cx, word ptr [bp - 0x2a]        ; 8B 4E D6
        mov     word ptr [si + 8], cx           ; 89 4C 08
        sub     ax, cx                          ; 2B C1
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     word ptr [0x1c04], 0xffff       ; C7 06 04 1C FF FF
        call    far _entry_79                   ; 9A 55 02 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x12b4]               ; F7 2E B4 12
        mov     di, ax                          ; 8B F8
        or      byte ptr [bx + di + 6], 2       ; 80 49 06 02
        jmp     L_0818                          ; EB 06
L_0812:
        mov     ax, word ptr [0x8a2]            ; A1 A2 08
        mov     word ptr [0x30e], ax            ; A3 0E 03
L_0818:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_59                   ; 9A 60 02 00 00 [FIXUP]
        jmp     L_05ED                          ; E9 C6 FD
L_0827:
        mov     word ptr [0x30e], 0             ; C7 06 0E 03 00 00
        jmp     L_0835                          ; EB 06
L_082F:
        mov     word ptr [0x30e], 1             ; C7 06 0E 03 01 00
L_0835:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x8a0]                ; FF 36 A0 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 53 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x8a0], ax            ; A3 A0 08
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A C1 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A C2 08 00 00 [FIXUP]
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        call    far _entry_87                   ; 9A DC 08 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A F6 08 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 07 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 1C 09 00 00 [FIXUP]
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        call    far _entry_87                   ; 9A 36 09 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A 50 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 61 09 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A 76 09 00 00 [FIXUP]
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        call    far _entry_87                   ; 9A 90 09 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x38]            ; FF 76 C8
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A F3 03 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A 04 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ax                              ; 50
        lea     ax, [bp - 0xd]                  ; 8D 46 F3
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        call    far _entry_87                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        push    word ptr [bp - 0x38]            ; FF 76 C8
        jmp     L_0479                          ; E9 D5 FA
L_09A4:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
