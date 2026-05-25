; AUTO-GENERATED from original NOTEPAD segment 3
; segment_size=984 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_0053                          ; EB 44
L_000F:
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
        je      L_005A                          ; 74 34
        cmp     word ptr [0x27c], 0             ; 83 3E 7C 02 00
        je      L_003F                          ; 74 12
        push    word ptr [0x27c]                ; FF 36 7C 02
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0053                          ; 75 14
L_003F:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
L_0053:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        je      L_000F                          ; 74 B5
L_005A:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        jne     L_0066                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0068                          ; EB 02
L_0066:
        sub     ax, ax                          ; 2B C0
L_0068:
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_009F                          ; 74 1A
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0091                          ; 74 07
        cmp     ax, 0x116                       ; 3D 16 01
        je      L_00E3                          ; 74 54
        jmp     L_00F6                          ; EB 65
L_0091:
        mov     word ptr [0x276], 1             ; C7 06 76 02 01 00
        call    L_03B5                          ; E8 1B 03
L_009A:
        mov     ax, 1                           ; B8 01 00
        jmp     L_00F8                          ; EB 59
L_009F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x246], ax            ; A3 46 02
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_00D9                          ; 75 25
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_00C7                          ; 74 05
        mov     ax, word ptr [0x32]             ; A1 32 00
        jmp     L_00D0                          ; EB 09
L_00C7:
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
L_00D0:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
L_00D9:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_009A                          ; EB B7
L_00E3:
        push    word ptr [0x246]                ; FF 36 46 02
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_009A                          ; EB A4
L_00F6:
        sub     ax, ax                          ; 2B C0
L_00F8:
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
        sub     sp, 0xd6                        ; 81 EC D6 00
        push    word ptr [0x28a]                ; FF 36 8A 02
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x276], 0             ; C7 06 76 02 00 00
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        or      ax, ax                          ; 0B C0
        jge     L_0132                          ; 7D 06
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_03AC                          ; E9 7A 02
L_0132:
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        mov     word ptr [0x254], ax            ; A3 54 02
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [0x24a], ax            ; A3 4A 02
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xd4], ax        ; 89 86 2C FF
        cdq                                     ; 99
        mov     cx, word ptr [0x254]            ; 8B 0E 54 02
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xca], ax        ; 89 86 36 FF
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET _entry_12            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_12            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x27e]                ; FF 36 7E 02
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A 0B 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A D7 01 00 00 [FIXUP]
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [0x38]             ; A1 38 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A B5 01 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_01AD                          ; 74 05
        mov     ax, word ptr [0x32]             ; A1 32 00
        jmp     L_01B0                          ; EB 03
L_01AD:
        mov     ax, 0x1c4                       ; B8 C4 01
L_01B0:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0xc6]                 ; 8D 86 3A FF
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A E8 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        jge     L_01F0                          ; 7D 0E
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far GDI.DELETEDC                ; 9A 35 02 00 00 [FIXUP]
L_01EA:
        mov     ax, word ptr [bp - 0x44]        ; 8B 46 BC
        jmp     L_03AC                          ; E9 BC 01
L_01F0:
        push    word ptr [0x27e]                ; FF 36 7E 02
        mov     ax, 0xc                         ; B8 0C 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, OFFSET _entry_11            ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_11            ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x27e]                ; FF 36 7E 02
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x286], ax            ; A3 86 02
        mov     word ptr [0x288], dx            ; 89 16 88 02
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x27c], ax            ; A3 7C 02
        or      ax, ax                          ; 0B C0
        jne     L_023F                          ; 75 1B
        push    word ptr [0x288]                ; FF 36 88 02
        push    word ptr [0x286]                ; FF 36 86 02
        call    far KERNEL.FREEPROCINSTANCE     ; 9A 0E 03 00 00 [FIXUP]
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far GDI.DELETEDC                ; 9A F7 02 00 00 [FIXUP]
        mov     ax, 0xfffb                      ; B8 FB FF
        jmp     L_03AC                          ; E9 6D 01
L_023F:
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A C1 03 00 00 [FIXUP]
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40d                       ; B8 0D 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 86 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xc8], ax        ; 89 86 38 FF
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 0x3a], 0         ; C7 46 C6 00 00
        mov     word ptr [bp - 0xd2], 0         ; C7 86 2E FF 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
L_0276:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x411                       ; B8 11 04
        push    ax                              ; 50
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 31 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        push    word ptr [bp - 0xc8]            ; FF B6 38 FF
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x3a]        ; 03 46 C6
        mov     word ptr [bp - 0xd6], ax        ; 89 86 2A FF
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, word ptr [bp - 0xd6]        ; 8B 86 2A FF
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc8]            ; FF B6 38 FF
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x254]            ; A1 54 02
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp - 0xca]        ; 8B 86 36 FF
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0315                          ; 7C 46
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 55 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        jge     L_0315                          ; 7D 22
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far GDI.DELETEDC                ; 9A 72 03 00 00 [FIXUP]
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        jne     L_0305                          ; 75 03
        call    L_03B5                          ; E8 B0 00
L_0305:
        push    word ptr [0x288]                ; FF 36 88 02
        push    word ptr [0x286]                ; FF 36 86 02
        call    far KERNEL.FREEPROCINSTANCE     ; 9A A6 03 00 00 [FIXUP]
        jmp     L_01EA                          ; E9 D5 FE
L_0315:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        jne     L_033F                          ; 75 23
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x40b                       ; B8 0B 04
        push    ax                              ; 50
        inc     word ptr [bp - 0xd2]            ; FF 86 2E FF
        push    word ptr [bp - 0xd2]            ; FF B6 2E FF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        jl      L_033F                          ; 7C 03
        jmp     L_0276                          ; E9 37 FF
L_033F:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        jne     L_0378                          ; 75 32
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 8E 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0362                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0364                          ; EB 02
L_0362:
        sub     ax, ax                          ; 2B C0
L_0364:
        mov     word ptr [bp - 0x44], ax        ; 89 46 BC
        or      ax, ax                          ; 0B C0
        je      L_0378                          ; 74 0D
        call    L_03B5                          ; E8 47 00
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far GDI.DELETEDC                ; 9A 99 03 00 00 [FIXUP]
        jmp     L_0305                          ; EB 8D
L_0378:
        cmp     word ptr [0x276], 0             ; 83 3E 76 02 00
        jne     L_0395                          ; 75 16
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        call    L_03B5                          ; E8 20 00
L_0395:
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x288]                ; FF 36 88 02
        push    word ptr [0x286]                ; FF 36 86 02
        call    far KERNEL.FREEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
L_03AC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03B5 -- offset 0x03B5 -- 12 instr
; Funcion sin clasificar definitiva (12 instr).
; tags: calls_user, small
; calls (inter): USER.DESTROYWINDOW, USER.ENABLEWINDOW
;----------------------------------------------------------------------
L_03B5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x27c]                ; FF 36 7C 02
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x27c], 0             ; C7 06 7C 02 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

NOTEPAD_TEXT ENDS

        END
