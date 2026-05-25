; AUTO-GENERATED from original WRITE segment 61
; segment_size=2373 bytes, flags=0xf130
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
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0018                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0018 -- offset 0x0018 -- 764 instr
; Iterador con instrucciones de string (movsb/scasb/...) (764 instr).
; tags: calls_kernel, complex_iterator, far, string_op
; calls (intra): sub_08DE
; calls (inter): KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0018:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        call    far _entry_183                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xcac]            ; A1 AC 0C
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x29                        ; 3D 29 00
        jbe     L_0042                          ; 76 03
        jmp     L_08D3                          ; E9 91 08
L_0042:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x739]        ; 2E FF A7 39 07
        jmp     L_08D3                          ; E9 86 08
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_206                  ; 9A 64 01 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A D7 01 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        cmp     word ptr [bp - 0x12], 0xf       ; 83 7E EE 0F
        jne     L_00A0                          ; 75 05
        mov     ax, 3                           ; B8 03 00
        jmp     L_00A3                          ; EB 03
L_00A0:
        mov     ax, 0xe                         ; B8 0E 00
L_00A3:
        mov     word ptr [0xcac], ax            ; A3 AC 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 00 01 00 00 [FIXUP]
        cmp     word ptr [bp - 0x12], 0x26      ; 83 7E EE 26
        je      L_00B8                          ; 74 03
        jmp     L_078D                          ; E9 D5 06
L_00B8:
        call    far _entry_79                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_078D                          ; E9 CD 06
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_238                  ; 9A 39 01 00 00 [FIXUP]
        cmp     word ptr [bp - 0x12], 0xe       ; 83 7E EE 0E
        jne     L_00F5                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_00F8                          ; EB 03
L_00F5:
        mov     ax, 0xf                         ; B8 0F 00
L_00F8:
        mov     word ptr [0xcac], ax            ; A3 AC 0C
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 48 01 00 00 [FIXUP]
        jmp     L_078D                          ; E9 86 06
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        jne     L_0111                          ; 75 03
        jmp     L_01F2                          ; E9 E1 00
L_0111:
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 5D 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_238                  ; 9A 30 02 00 00 [FIXUP]
        mov     word ptr [0xcac], 6             ; C7 06 AC 0C 06 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 91 01 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A 81 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_206                  ; 9A 88 01 00 00 [FIXUP]
L_0168:
        call    far _entry_362                  ; 9A DC 01 00 00 [FIXUP]
        jmp     L_078D                          ; E9 1D 06
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 00 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_206                  ; 9A B4 01 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 55 02 00 00 [FIXUP]
        mov     word ptr [0xcac], 5             ; C7 06 AC 0C 05 00
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_206                  ; 9A 4C 02 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 9B 02 00 00 [FIXUP]
        call    far _entry_362                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        jmp     L_078D                          ; E9 A2 05
        cmp     word ptr [0x7b0], 0             ; 83 3E B0 07 00
        jne     L_01FB                          ; 75 09
L_01F2:
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        jmp     L_078D                          ; E9 92 05
L_01FB:
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 45 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0xcae]                ; FF 36 AE 0C
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        add     ax, word ptr [0xcb4]            ; 03 06 B4 0C
        adc     dx, word ptr [0xcb6]            ; 13 16 B6 0C
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_238                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc20]                ; FF 36 20 0C
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_206                  ; 9A 78 02 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xcac], 8             ; C7 06 AC 0C 08 00
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
L_0263:
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_206                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
        jmp     L_0168                          ; E9 B9 FE
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A F9 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0xcae]                ; FF 36 AE 0C
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        add     ax, word ptr [0xcb4]            ; 03 06 B4 0C
        adc     dx, word ptr [0xcb6]            ; 13 16 B6 0C
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_238                  ; 9A CF 03 00 00 [FIXUP]
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0xc20]                ; FF 36 20 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xc20]                ; FF 36 20 0C
        call    far _entry_89                   ; 9A 08 05 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_206                  ; 9A 66 00 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A B1 04 00 00 [FIXUP]
        mov     word ptr [0xcac], 7             ; C7 06 AC 0C 07 00
        push    word ptr [0xc20]                ; FF 36 20 0C
        jmp     L_0263                          ; E9 49 FF
        push    word ptr [0xcb8]                ; FF 36 B8 0C
        push    word ptr [0xcbc]                ; FF 36 BC 0C
        push    word ptr [0xcba]                ; FF 36 BA 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        push    word ptr [0xcae]                ; FF 36 AE 0C
        mov     ax, 0xcb0                       ; B8 B0 0C
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_364                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0345                          ; 75 03
        jmp     L_08D3                          ; E9 8E 05
L_0345:
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [0xcb0]            ; A1 B0 0C
        mov     dx, word ptr [0xcb2]            ; 8B 16 B2 0C
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, word ptr [0xcba]            ; A1 BA 0C
        mov     dx, word ptr [0xcbc]            ; 8B 16 BC 0C
        mov     word ptr [0xcb0], ax            ; A3 B0 0C
        mov     word ptr [0xcb2], dx            ; 89 16 B2 0C
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        mov     word ptr [0xcba], ax            ; A3 BA 0C
        mov     word ptr [0xcbc], dx            ; 89 16 BC 0C
        mov     ax, word ptr [0xcae]            ; A1 AE 0C
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0xcb8]            ; A1 B8 0C
        mov     word ptr [0xcae], ax            ; A3 AE 0C
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        mov     word ptr [0xcb8], ax            ; A3 B8 0C
        call    far _entry_363                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_078D                          ; E9 F9 03
        cmp     word ptr [bp - 0x12], 0x25      ; 83 7E EE 25
        je      L_03A3                          ; 74 09
        mov     ax, word ptr [0xcbe]            ; A1 BE 0C
        mov     dx, word ptr [0xcc0]            ; 8B 16 C0 0C
        jmp     L_03AA                          ; EB 07
L_03A3:
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
L_03AA:
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_238                  ; 9A F6 03 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_238                  ; 9A 38 05 00 00 [FIXUP]
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 89 00 00 00 [FIXUP]
        cmp     word ptr [bp - 0x12], 0x25      ; 83 7E EE 25
        je      L_0438                          ; 74 1B
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        mov     word ptr [0xcbe], ax            ; A3 BE 0C
        mov     word ptr [0xcc0], dx            ; 89 16 C0 0C
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
L_0438:
        cmp     word ptr [bp - 0x12], 0x25      ; 83 7E EE 25
        jne     L_0476                          ; 75 38
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 2]      ; 8B 40 02
        mov     dx, word ptr [bx + si + 4]      ; 8B 50 04
        sub     ax, word ptr [0xcb0]            ; 2B 06 B0 0C
        sbb     dx, word ptr [0xcb2]            ; 1B 16 B2 0C
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
L_0476:
        cmp     word ptr [bp - 0x12], 0x27      ; 83 7E EE 27
        jne     L_0484                          ; 75 08
        mov     word ptr [0xcac], 0x28          ; C7 06 AC 0C 28 00
        jmp     L_04AC                          ; EB 28
L_0484:
        cmp     word ptr [bp - 0x12], 0x28      ; 83 7E EE 28
        jne     L_0492                          ; 75 08
        mov     word ptr [0xcac], 0x27          ; C7 06 AC 0C 27 00
        jmp     L_04AC                          ; EB 1A
L_0492:
        cmp     word ptr [bp - 0x12], 2         ; 83 7E EE 02
        jne     L_04A0                          ; 75 08
        mov     word ptr [0xcac], 0x10          ; C7 06 AC 0C 10 00
        jmp     L_04AC                          ; EB 0C
L_04A0:
        cmp     word ptr [bp - 0x12], 0x10      ; 83 7E EE 10
        jne     L_04AC                          ; 75 06
        mov     word ptr [0xcac], 2             ; C7 06 AC 0C 02 00
L_04AC:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A AB 00 00 00 [FIXUP]
        push    word ptr [0x1be4]               ; FF 36 E4 1B
        push    word ptr [0x1be2]               ; FF 36 E2 1B
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_35                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x1be8]               ; FF 36 E8 1B
        push    word ptr [0x1be6]               ; FF 36 E6 1B
        call    far _entry_176                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_078D                          ; E9 AE 02
        push    word ptr [0xcae]                ; FF 36 AE 0C
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ax                              ; 50
        call    L_08DE                          ; E8 F4 03
        or      ax, ax                          ; 0B C0
        jne     L_04F1                          ; 75 03
        jmp     L_078D                          ; E9 9C 02
L_04F1:
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        call    L_08DE                          ; E8 E2 03
        or      ax, ax                          ; 0B C0
        jne     L_0503                          ; 75 03
        jmp     L_078D                          ; E9 8A 02
L_0503:
        push    word ptr [0xcae]                ; FF 36 AE 0C
        call    far _entry_89                   ; 9A 17 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        call    far _entry_89                   ; 9A 2C 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _entry_238                  ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far _entry_238                  ; 9A 78 06 00 00 [FIXUP]
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A C0 06 00 00 [FIXUP]
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0597                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A C7 05 00 00 [FIXUP]
L_0597:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx + si + 0x10], ax   ; 89 40 10
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_05CB                          ; 74 06
        push    ax                              ; 50
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_05CB:
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bx + si + 0x10], ax   ; 89 40 10
        mov     word ptr [0x1bf0], 0xffff       ; C7 06 F0 1B FF FF
        jmp     L_078D                          ; E9 A4 01
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        mov     ax, word ptr [si + 0xc]         ; 8B 44 0C
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 32 07 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        mov     word ptr [0x30], ax             ; A3 30 00
        mov     word ptr [0x1bf0], ax           ; A3 F0 1B
        mov     word ptr [0x1c04], ax           ; A3 04 1C
        jmp     L_00B8                          ; E9 65 FA
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        push    word ptr [0xcc0]                ; FF 36 C0 0C
        push    word ptr [0xcbe]                ; FF 36 BE 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        call    far _entry_238                  ; 9A A1 06 00 00 [FIXUP]
        push    word ptr [0xcae]                ; FF 36 AE 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb6]                ; FF 36 B6 0C
        push    word ptr [0xcb4]                ; FF 36 B4 0C
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xcc0]                ; FF 36 C0 0C
        push    word ptr [0xcbe]                ; FF 36 BE 0C
        call    far _entry_238                  ; 9A E4 02 00 00 [FIXUP]
        push    word ptr [0x1bfc]               ; FF 36 FC 1B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xcc0]                ; FF 36 C0 0C
        push    word ptr [0xcbe]                ; FF 36 BE 0C
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A 13 04 00 00 [FIXUP]
        mov     ax, word ptr [0xcb4]            ; A1 B4 0C
        mov     dx, word ptr [0xcb6]            ; 8B 16 B6 0C
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     word ptr [bp - 0x20], dx        ; 89 56 E0
        mov     ax, word ptr [0xcbe]            ; A1 BE 0C
        mov     dx, word ptr [0xcc0]            ; 8B 16 C0 0C
        mov     word ptr [0xcb4], ax            ; A3 B4 0C
        mov     word ptr [0xcb6], dx            ; 89 16 B6 0C
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        mov     word ptr [0xcbe], ax            ; A3 BE 0C
        mov     word ptr [0xcc0], dx            ; 89 16 C0 0C
        mov     ax, 1                           ; B8 01 00
        sub     ax, word ptr [0xcc2]            ; 2B 06 C2 0C
        mov     word ptr [0xcc2], ax            ; A3 C2 0C
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        add     ax, word ptr [bx]               ; 03 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 0x14]        ; 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     si, word ptr [bp - 0xe]         ; 8B 76 F2
        mov     ax, word ptr [si + 0x14]        ; 8B 44 14
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bx + 0x14], ax        ; 89 47 14
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_42                   ; 9A 09 03 00 00 [FIXUP]
        jmp     L_00B8                          ; E9 7F F9
        dec     bp                              ; 4D
        add     byte ptr [si - 0x3ffd], dl      ; 00 94 03 C0
        add     byte ptr [bp + si], bl          ; 00 1A
        add     ax, word ptr [bx]               ; 03 07
        add     word ptr [bx + si + 1], si      ; 01 70 01
        jmp     L_0748                          ; EB 01
        scasw   ax, word ptr es:[di]            ; AF
L_0748:
        add     dl, bl                          ; 02 D3
        or      bl, dl                          ; 08 D3
        or      bl, dl                          ; 08 D3
        or      bl, dl                          ; 08 D3
        or      bl, dl                          ; 08 D3
        or      al, al                          ; 08 C0
        add     byte ptr [di], cl               ; 00 4D 00
        xchg    sp, ax                          ; 94
        add     dx, bx                          ; 03 D3
        or      byte ptr [si - 0x6bfd], dl      ; 08 94 03 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     bp, cx                          ; 03 E9
        add     ax, 0x394                       ; 05 94 03
        xchg    sp, ax                          ; 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     dx, word ptr [si - 0x9fd]       ; 03 94 03 F6
        push    es                              ; 06
        xchg    sp, ax                          ; 94
        add     dx, word ptr [si - 0x6bfd]      ; 03 94 03 94
        add     cx, word ptr [di]               ; 03 4D 00
        xchg    sp, ax                          ; 94
        add     dx, word ptr [si + 0x5303]      ; 03 94 03 53
        push    es                              ; 06
        fild    word ptr [si]                   ; DF 04
L_078D:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_0799                          ; 74 05
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
L_0799:
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0xcae]                ; F7 2E AE 0C
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        add     si, word ptr [bx]               ; 03 37
        mov     word ptr [bp - 0x14], si        ; 89 76 EC
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [0x1bfc]               ; F7 2E FC 1B
        mov     di, ax                          ; 8B F8
        add     di, word ptr [bx]               ; 03 3F
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        shr     ax, 1                           ; D1 E8
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 1                           ; 25 01 00
        shl     ax, 1                           ; D1 E0
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        and     cl, 0xfd                        ; 80 E1 FD
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 6], ax           ; 89 45 06
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        and     ax, 1                           ; 25 01 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        and     al, 0xfe                        ; 24 FE
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     ax, 1                           ; 25 01 00
        mov     cx, word ptr [di + 6]           ; 8B 4D 06
        and     cl, 0xfe                        ; 80 E1 FE
        or      ax, cx                          ; 0B C1
        mov     word ptr [di + 6], ax           ; 89 45 06
        cmp     word ptr [bp - 0x12], 4         ; 83 7E EE 04
        jne     L_0820                          ; 75 03
        jmp     L_08D3                          ; E9 B3 00
L_0820:
        cmp     word ptr [bp - 0x12], 0x22      ; 83 7E EE 22
        jne     L_0829                          ; 75 03
        jmp     L_08D3                          ; E9 AA 00
L_0829:
        cmp     word ptr [bp - 0x12], 0x1a      ; 83 7E EE 1A
        jne     L_0832                          ; 75 03
        jmp     L_08D3                          ; E9 A1 00
L_0832:
        cmp     word ptr [bp - 0x12], 0x29      ; 83 7E EE 29
        jne     L_083B                          ; 75 03
        jmp     L_08D3                          ; E9 98 00
L_083B:
        cmp     word ptr [0x12b4], -1           ; 83 3E B4 12 FF
        jne     L_0845                          ; 75 03
        jmp     L_08D3                          ; E9 8E 00
L_0845:
        mov     ax, word ptr [0x12b4]           ; A1 B4 12
        cmp     word ptr [0xcae], ax            ; 39 06 AE 0C
        je      L_0851                          ; 74 03
        jmp     L_08D3                          ; E9 82 00
L_0851:
        mov     ax, word ptr [0x13e0]           ; A1 E0 13
        mov     dx, word ptr [0x13e2]           ; 8B 16 E2 13
        cmp     word ptr [0xcb2], dx            ; 39 16 B2 0C
        jl      L_08D3                          ; 7C 75
        jg      L_0866                          ; 7F 06
        cmp     word ptr [0xcb0], ax            ; 39 06 B0 0C
        jb      L_08D3                          ; 72 6D
L_0866:
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        add     ax, word ptr [0xcb0]            ; 03 06 B0 0C
        adc     dx, word ptr [0xcb2]            ; 13 16 B2 0C
        cmp     dx, word ptr [0x13a8]           ; 3B 16 A8 13
        jg      L_08D3                          ; 7F 59
        jl      L_0882                          ; 7C 06
        cmp     ax, word ptr [0x13a6]           ; 3B 06 A6 13
        ja      L_08D3                          ; 77 51
L_0882:
        cmp     word ptr [bp - 0x12], 0x25      ; 83 7E EE 25
        jne     L_08B0                          ; 75 28
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_100                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A C9 08 00 00 [FIXUP]
        mov     word ptr [0x13de], 1            ; C7 06 DE 13 01 00
        jmp     L_08CD                          ; EB 1D
L_08B0:
        push    word ptr [0xcb2]                ; FF 36 B2 0C
        push    word ptr [0xcb0]                ; FF 36 B0 0C
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     dx, word ptr [bp - 0x20]        ; 8B 56 E0
        add     ax, word ptr [0xcb0]            ; 03 06 B0 0C
        adc     dx, word ptr [0xcb2]            ; 13 16 B2 0C
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A D8 04 00 00 [FIXUP]
L_08CD:
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
L_08D3:
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
; sub_08DE -- offset 0x08DE -- 44 instr
; Funcion mediana (44 instr, 0 calls).
; tags: medium
; callers: sub_0018
;----------------------------------------------------------------------
L_08DE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    word ptr [bp + 6]               ; F7 6E 06
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bx + si + 0x10]   ; 8B 40 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0906                          ; 75 09
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_093C                          ; EB 36
L_0906:
        mov     ax, 3                           ; B8 03 00
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     bx, word ptr [bx]               ; 8B 1F
        imul    word ptr [bx + 2]               ; F7 6F 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        call    far _entry_64                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr [bx], ax               ; 89 07
        inc     ax                              ; 40
        jne     L_0928                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_093F                          ; EB 17
L_0928:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        push    word ptr [bx]                   ; FF 37
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr [bx]               ; 8B 1F
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
L_093C:
        mov     ax, 1                           ; B8 01 00
L_093F:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
