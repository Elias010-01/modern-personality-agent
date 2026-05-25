; AUTO-GENERATED from original NEC3550 segment 1
; segment_size=5482 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NEC3550_TEXT SEGMENT BYTE PUBLIC 'CODE'

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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0033                          ; 74 1D
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0033                          ; 74 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
L_0033:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0183                          ; E8 47 01
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_01AA                          ; E8 5D 01
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_0092                          ; 74 3F
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx + 0x26], 1      ; 26 83 7F 26 01
        jne     L_0068                          ; 75 05
        mov     ax, 0x148                       ; B8 48 01
        jmp     L_006B                          ; EB 03
L_0068:
        mov     ax, 0x78                        ; B8 78 00
L_006B:
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        call    far GDI.COPY                    ; 9A FF FF 00 00 [FIXUP]
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_0082                          ; 74 05
        mov     ax, 0x28                        ; B8 28 00
        jmp     L_0085                          ; EB 03
L_0082:
        mov     ax, 0x248                       ; B8 48 02
L_0085:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_0124                          ; E9 92 00
L_0092:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        mov     ax, 0x1bc                       ; B8 BC 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.COPY                    ; 9A 72 00 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     ax, si                          ; 8B C6
        or      al, 1                           ; 0C 01
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 0xa], 0xffff  ; 26 C7 47 0A FF FF
        mov     ax, 0x1b0                       ; B8 B0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.ADDFONTRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_011B                          ; 75 54
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
        add     ax, 0x28                        ; 05 28 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    L_0E89                          ; E8 A3 0D
        or      ax, ax                          ; 0B C0
        je      L_0117                          ; 74 2D
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A 03 01 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        or      ax, ax                          ; 0B C0
        je      L_0117                          ; 74 19
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        or      ax, ax                          ; 0B C0
        je      L_0117                          ; 74 05
L_0112:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0124                          ; EB 0D
L_0117:
        sub     ax, ax                          ; 2B C0
        jmp     L_0124                          ; EB 09
L_011B:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        or      byte ptr es:[bx], 0x10          ; 26 80 0F 10
        jmp     L_0112                          ; EB EE
L_0124:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x1e4                       ; B8 E4 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far GDI.REMOVEFONTRESOURCE      ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        test    byte ptr es:[bx], 0x10          ; 26 F6 07 10
        je      L_0152                          ; 74 05
L_014D:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0178                          ; EB 26
L_0152:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        call    far GDI.DELETEPQ                ; 9A 66 01 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        call    far GDI.DELETEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_014D                          ; EB D5
L_0178:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0183 -- offset 0x0183 -- 17 instr
; Funcion hoja (no llama a otras, 17 instr): probable helper aritmetico/conversion.
; tags: leaf
;----------------------------------------------------------------------
L_0183:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_01A1                          ; 74 0D
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0xd    ; 26 83 7F 20 0D
        jne     L_01A1                          ; 75 03
        mov     si, 4                           ; BE 04 00
L_01A1:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01AA -- offset 0x01AA -- 208 instr
; Dispatcher: tabla de decisiones cmp+jcc (208 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (inter): GDI.DELETEJOB, GDI.EXTRACTPQ, GDI.INSERTPQ, GDI.STARTSPOOLPAGE, GDI.WRITEDIALOG, GDI.WRITESPOOL (+6 mas)
;----------------------------------------------------------------------
L_01AA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_01C3                          ; 74 0E
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x26], ax     ; 26 89 47 26
L_01C3:
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
        sub     sp, 0x3a                        ; 83 EC 3A
        push    si                              ; 56
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_01EE                          ; 76 03
        jmp     L_04EC                          ; E9 FE 02
L_01EE:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x51b]        ; 2E FF A7 1B 05
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x1a], 1      ; 26 83 7F 1A 01
        je      L_0230                          ; 74 30
L_0200:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 6], 0         ; 26 83 7F 06 00
        jne     L_0218                          ; 75 03
        jmp     L_0432                          ; E9 1A 02
L_0218:
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        jmp     L_0432                          ; E9 02 02
L_0230:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 4], 0         ; 26 83 7F 04 00
        jne     L_025B                          ; 75 21
        inc     word ptr es:[bx + 4]            ; 26 FF 47 04
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x3c0                       ; B8 C0 03
        push    ax                              ; 50
        mov     ax, 0x210                       ; B8 10 02
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
L_0255:
        mov     ax, 1                           ; B8 01 00
        jmp     L_0538                          ; E9 DD 02
L_025B:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A 07 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x1a], 0      ; 26 83 7F 1A 00
        jne     L_0288                          ; 75 06
L_0282:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0538                          ; E9 B0 02
L_0288:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        cmp     ax, 1                           ; 3D 01 00
        je      L_02A3                          ; 74 03
        jmp     L_0200                          ; E9 5D FF
L_02A3:
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x38], ax        ; 89 46 C8
        test    byte ptr es:[bx], 4             ; 26 F6 07 04
        je      L_02E2                          ; 74 32
        mov     ax, 0x1f0                       ; B8 F0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        lea     ax, [bp - 0x30]                 ; 8D 46 D0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        call    far GDI.WRITEDIALOG             ; 9A FF FF 00 00 [FIXUP]
L_02E2:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x1f8                       ; B8 F8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 9A 0A
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x26]     ; 26 8B 5F 26
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x212]           ; FF B7 12 02
        call    L_0B7C                          ; E8 72 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0x18], ax     ; 26 89 47 18
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x32], dx        ; 89 56 CE
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far GDI.EXTRACTPQ               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        add     ax, word ptr [bp - 0x34]        ; 03 46 CC
        mov     dx, word ptr [bp - 0x32]        ; 8B 56 CE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
L_033D:
        cmp     word ptr [bp - 0x3a], -1        ; 83 7E C6 FF
        je      L_03AC                          ; 74 69
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_034C:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_0370                          ; 75 19
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        push    word ptr [bp - 0x3a]            ; FF 76 C6
        les     bx, ptr [bp - 8]                ; C4 5E F8
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_038D                          ; 75 1D
L_0370:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0B7C                          ; E8 00 08
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x32]            ; FF 76 CE
        push    word ptr [bp - 0x34]            ; FF 76 CC
        call    L_054B                          ; E8 C0 01
        jmp     L_033D                          ; EB B0
L_038D:
        push    word ptr [bp - 0x38]            ; FF 76 C8
        call    far GDI.EXTRACTPQ               ; 9A 2A 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        inc     ax                              ; 40
        je      L_0370                          ; 74 D5
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        add     ax, word ptr [bp - 0x34]        ; 03 46 CC
        mov     dx, word ptr [bp - 0x32]        ; 8B 56 CE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_034C                          ; EB A0
L_03AC:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x26]     ; 26 8B 5F 26
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x202]           ; FF B7 02 02
        call    L_0B7C                          ; E8 AE 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x1a], 1      ; 26 83 7F 1A 01
        je      L_03DB                          ; 74 03
        jmp     L_0200                          ; E9 25 FE
L_03DB:
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        or      ax, ax                          ; 0B C0
        jge     L_0402                          ; 7D 0A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        jmp     L_0200                          ; E9 FE FD
L_0402:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0429                          ; 75 18
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A 20 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], 0xffff    ; 26 C7 47 06 FF FF
L_0429:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x20], 0      ; 26 C7 47 20 00 00
L_0432:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x1a]     ; 26 8B 47 1A
        jmp     L_0538                          ; E9 FC 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x1a], 0      ; 26 83 7F 1A 00
        je      L_0449                          ; 74 03
        jmp     L_0282                          ; E9 39 FE
L_0449:
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x28                        ; 05 28 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     word ptr es:[bx + 0x1a], 1      ; 26 C7 47 1A 01 00
        jmp     L_0255                          ; E9 E4 FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x1a], 0      ; 26 83 7F 1A 00
        jne     L_047E                          ; 75 03
        jmp     L_0282                          ; E9 04 FE
L_047E:
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_050F                          ; E9 85 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     si, word ptr es:[bx + 0x26]     ; 26 8B 77 26
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si + 0x1fa]       ; 8B 84 FA 01
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [si + 0x202]       ; 8B 84 02 02
        jmp     L_04BA                          ; EB 17
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     si, word ptr es:[bx + 0x26]     ; 26 8B 77 26
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si + 0x20a]       ; 8B 84 0A 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [si + 0x212]       ; 8B 84 12 02
L_04BA:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_0255                          ; E9 94 FD
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 1                           ; 3D 01 00
        jl      L_04EC                          ; 7C 1D
        cmp     ax, 3                           ; 3D 03 00
        jg      L_04D7                          ; 7F 03
        jmp     L_0255                          ; E9 7E FD
L_04D7:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_04DF                          ; 75 03
        jmp     L_0255                          ; E9 76 FD
L_04DF:
        cmp     ax, 0xa                         ; 3D 0A 00
        jl      L_04EC                          ; 7C 08
        cmp     ax, 0xc                         ; 3D 0C 00
        jg      L_04EC                          ; 7F 03
        jmp     L_0255                          ; E9 69 FD
L_04EC:
        sub     ax, ax                          ; 2B C0
        jmp     L_0538                          ; EB 48
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        jmp     L_0255                          ; E9 55 FD
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A 1C 04 00 00 [FIXUP]
L_050F:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x1a], 0      ; 26 C7 47 1A 00 00
        jmp     L_0255                          ; E9 3A FD
        js      L_051F                          ; 78 02
        add     byte ptr [di], al               ; 00 05
L_051F:
        test    byte ptr [bx + di], 0xec        ; F6 01 EC
        add     al, 0xec                        ; 04 EC
        add     al, 0xec                        ; 04 EC
        add     al, 0xec                        ; 04 EC
        add     al, 0xc1                        ; 04 C1
        add     al, 0xf0                        ; 04 F0
        add     al, 0x3c                        ; 04 3C
        add     al, 0x71                        ; 04 71
        add     al, 0x8a                        ; 04 8A
        add     al, 0xa3                        ; 04 A3
        add     al, 0xe9                        ; 04 E9
        sbb     ax, 0x5efd                      ; 1D FD 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_054B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        jmp     L_05B5                          ; EB 62
L_0553:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x1a], 1      ; 26 83 7F 1A 01
        jne     L_05C7                          ; 75 6A
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [bp + 4]           ; 03 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    es                              ; 06
        push    bx                              ; 53
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        call    L_05CD                          ; E8 55 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 86 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        call    L_0D8E                          ; E8 E7 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        add     word ptr es:[bx + 0x16], ax     ; 26 01 47 16
L_05B5:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        call    far GDI.EXTRACTPQ               ; 9A 91 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     ax                              ; 40
        jne     L_0553                          ; 75 8C
L_05C7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_05CD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [bp + 4], -1           ; 83 7E 04 FF
        jne     L_05DC                          ; 75 03
        jmp     L_06B9                          ; E9 DD 00
L_05DC:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx + 0xa], ax      ; 26 39 47 0A
        jne     L_05EB                          ; 75 03
        jmp     L_06B9                          ; E9 CE 00
L_05EB:
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    es                              ; 06
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 16 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.WRITESPOOL              ; 9A ED 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        or      ax, ax                          ; 0B C0
        jge     L_062C                          ; 7D 07
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        jmp     L_06B9                          ; E9 8D 00
L_062C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     ax, 0x52e                       ; B8 2E 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A B6 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x574                       ; B8 74 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A C9 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x574                       ; B8 74 05
        push    ax                              ; 50
        call    L_06BF                          ; E8 5C 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        shl     bx, 1                           ; D1 E3
        push    word ptr [bx + 0x49c]           ; FF B7 9C 04
        call    L_06BF                          ; E8 4A 00
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x5ba                       ; B8 BA 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 52 06 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x5ba                       ; B8 BA 05
        push    ax                              ; 50
        call    L_06BF                          ; E8 28 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        call    far GDI.WRITEDIALOG             ; 9A DE 02 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
L_06B9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_06BF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        jmp     L_06E0                          ; EB 01
L_06DF:
        inc     si                              ; 46
L_06E0:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        mov     al, byte ptr [di]               ; 8A 05
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_06DF                          ; 75 EA
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx + 0xc], si      ; 26 01 77 0C
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0704:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0784                          ; 74 6A
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
L_0743:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jge     L_0798                          ; 7D 4D
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x1a], al        ; 88 46 E6
        cwde                                    ; 98
        cmp     ax, 0x7f                        ; 3D 7F 00
        jbe     L_0768                          ; 76 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_0FAA                          ; E8 44 08
        jmp     L_077C                          ; EB 14
L_0768:
        les     bx, ptr [bp - 0x12]             ; C4 5E EE
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x18]             ; C4 76 E8
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_077C:
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        inc     word ptr [bp - 0x14]            ; FF 46 EC
        jmp     L_0743                          ; EB BF
L_0784:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        add     ax, word ptr es:[bx + 0x16]     ; 26 03 47 16
        imul    word ptr [bp + 8]               ; F7 6E 08
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
L_0798:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0812                          ; 74 6C
        cmp     word ptr es:[bx + 0x14], 0      ; 26 83 7F 14 00
        je      L_0812                          ; 74 65
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0802                          ; EB 32
L_07D0:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_07FC                          ; 74 26
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_07FC                          ; 75 1B
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_07FC                          ; 7F 09
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_07FC:
        dec     word ptr [bp + 8]               ; FF 4E 08
        inc     word ptr [bp + 4]               ; FF 46 04
L_0802:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jne     L_07D0                          ; 75 C8
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
L_0812:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xe                             ; C2 0E 00
L_0825:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    si                              ; 56
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B34                          ; E8 F9 02
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        add     ax, word ptr es:[bx + 0x16]     ; 26 03 47 16
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_089C                          ; 74 46
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        cwde                                    ; 98
        cmp     ax, 0x7f                        ; 3D 7F 00
        jbe     L_0889                          ; 76 0C
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0FAA                          ; E8 23 07
        jmp     L_08A3                          ; EB 1A
L_0889:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x10]             ; C4 76 F0
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        jmp     L_08A3                          ; EB 07
L_089C:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
L_08A3:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        sar     word ptr [bp - 6], 1            ; D1 7E FA
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 56 03
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_08FA                          ; 74 30
        cmp     word ptr es:[bx + 0x14], 0      ; 26 83 7F 14 00
        je      L_08FA                          ; 74 29
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        mov     byte ptr [bp - 0x14], al        ; 88 46 EC
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
L_08FA:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     word ptr es:[bx + 0x12], 0      ; 26 C7 47 12 00 00
        jmp     L_09DA                          ; E9 D4 00
L_0906:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_097C                          ; 74 6C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        cmp     al, 0x7f                        ; 3C 7F
        jbe     L_092B                          ; 76 0E
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0FAA                          ; E8 81 06
        jmp     L_093C                          ; EB 11
L_092B:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x10]             ; C4 76 F0
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_093C:
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 8], 1            ; 83 7E 08 01
        je      L_0982                          ; 74 3B
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 1], 0x7f      ; 26 80 7F 01 7F
        jbe     L_0963                          ; 76 12
        mov     al, byte ptr es:[bx + 1]        ; 26 8A 47 01
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0FAA                          ; E8 49 06
        jmp     L_0975                          ; EB 12
L_0963:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 1]        ; 26 8A 47 01
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x10]             ; C4 76 F0
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_0975:
        sar     ax, 1                           ; D1 F8
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        jmp     L_0982                          ; EB 06
L_097C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_0982:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_09AE                          ; 74 26
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_09AE                          ; 75 1B
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_09AE                          ; 7F 09
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 2], ax           ; 01 46 FE
L_09AE:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 6], ax           ; 01 46 FA
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_09FC                          ; E8 28 00
        dec     word ptr [bp + 8]               ; FF 4E 08
        inc     word ptr [bp + 4]               ; FF 46 04
L_09DA:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_09E3                          ; 74 03
        jmp     L_0906                          ; E9 23 FF
L_09E3:
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0B58                          ; E8 66 01
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
L_09FC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x1c                        ; 05 1C 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
L_0A24:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jg      L_0A2F                          ; 7F 03
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
L_0A2F:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        je      L_0A51                          ; 74 17
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 AA 02
L_0A51:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x39]     ; 26 8A 47 39
        cwde                                    ; 98
        cmp     ax, si                          ; 3B C6
        ja      L_0A6C                          ; 77 09
        mov     al, byte ptr es:[bx + 0x3a]     ; 26 8A 47 3A
        cwde                                    ; 98
        cmp     ax, si                          ; 3B C6
        jae     L_0A80                          ; 73 14
L_0A6C:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x1f                        ; 05 1F 00
        push    dx                              ; 52
L_0A7C:
        push    ax                              ; 50
        jmp     L_0B0B                          ; E9 8B 00
L_0A80:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x3b]     ; 26 8A 47 3B
        cwde                                    ; 98
        cmp     ax, si                          ; 3B C6
        ja      L_0A9B                          ; 77 09
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        cmp     ax, si                          ; 3B C6
        jae     L_0AA7                          ; 73 0C
L_0A9B:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        jmp     L_0A7C                          ; EB D5
L_0AA7:
        and     byte ptr [bp + 6], 0xff         ; 80 66 06 FF
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x3b]     ; 26 8A 47 3B
        cwde                                    ; 98
        mov     cl, byte ptr [bp + 6]           ; 8A 4E 06
        sub     ch, ch                          ; 2A ED
        sub     cx, ax                          ; 2B C8
        shl     cx, 1                           ; D1 E1
        mov     word ptr [bp - 2], cx           ; 89 4E FE
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        add     ax, cx                          ; 03 C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        sub     ax, 0x42                        ; 2D 42 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 AD 02
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0B12                          ; 74 25
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x536                       ; B8 36 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 8F 02
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
L_0B0B:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 7C 02
L_0B12:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jle     L_0B23                          ; 7E 09
        sub     word ptr [bp + 4], ax           ; 29 46 04
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0A24                          ; E9 01 FF
L_0B23:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x10                            ; C2 10 00
L_0B34:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x190     ; 26 81 7F 08 90 01
        jle     L_0B52                          ; 7E 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x46                        ; 05 46 00
        push    ax                              ; 50
        call    L_0D68                          ; E8 16 02
L_0B52:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0B58:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x190     ; 26 81 7F 08 90 01
        jle     L_0B76                          ; 7E 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x4a                        ; 05 4A 00
        push    ax                              ; 50
        call    L_0D68                          ; E8 F2 01
L_0B76:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0B7C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x18]     ; 26 8B 77 18
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jge     L_0B94                          ; 7D 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0C0A                          ; EB 76
L_0B94:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        je      L_0C0A                          ; 74 71
        jmp     L_0BB0                          ; EB 15
L_0B9B:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x538                       ; B8 38 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 E1 01
        add     si, 8                           ; 83 C6 08
L_0BB0:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 8                           ; 2D 08 00
        cmp     ax, si                          ; 3B C6
        jge     L_0B9B                          ; 7D E1
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        sub     di, si                          ; 2B FE
        je      L_0C00                          ; 74 3F
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x12                        ; 05 12 00
        push    ax                              ; 50
        push    di                              ; 57
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 25 01
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x53a                       ; B8 3A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 A6 01
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x12                        ; 05 12 00
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 FB 00
L_0C00:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x18], ax     ; 26 89 47 18
L_0C0A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0C12:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx + 0x16]     ; 26 8B 77 16
        mov     bx, word ptr es:[bx + 0x26]     ; 26 8B 5F 26
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bx + 0x1fa], ax       ; 39 87 FA 01
        jge     L_0C33                          ; 7D 03
        jmp     L_0CF3                          ; E9 C0 00
L_0C33:
        or      ax, ax                          ; 0B C0
        jge     L_0C44                          ; 7D 0D
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        mov     ax, si                          ; 8B C6
        add     ax, di                          ; 03 C7
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0C85                          ; EB 41
L_0C44:
        cmp     byte ptr [bp + 4], 0x20         ; 80 7E 04 20
        jne     L_0C6A                          ; 75 20
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jge     L_0C6A                          ; 7D 1B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x53c                       ; B8 3C 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 2D 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x16], 0      ; 26 C7 47 16 00 00
L_0C6A:
        cmp     byte ptr [bp + 4], 0x20         ; 80 7E 04 20
        jne     L_0C7C                          ; 75 0C
        cmp     word ptr [bp + 6], si           ; 39 76 06
        jl      L_0C7C                          ; 7C 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, si                          ; 2B C6
        jmp     L_0C7F                          ; EB 03
L_0C7C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
L_0C7F:
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_0CF3                          ; 74 6E
L_0C85:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0xc                         ; B9 0C 00
        idiv    cx                              ; F7 F9
        mov     si, dx                          ; 8B F2
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x1c                        ; 05 1C 00
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 51 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 D2 00
        sub     di, si                          ; 2B FE
        je      L_0CF3                          ; 74 33
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x1c                        ; 05 1C 00
        push    ax                              ; 50
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 23 00
        jmp     L_0CEF                          ; EB 15
L_0CDA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp + 4]                    ; 8D 46 04
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 A2 00
        sub     di, 0xc                         ; 83 EF 0C
L_0CEF:
        or      di, di                          ; 0B FF
        jne     L_0CDA                          ; 75 E7
L_0CF3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
L_0CFB:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, 6                           ; 05 06 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        add     byte ptr [bp + 6], al           ; 00 46 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cx, word ptr [0x52a]            ; 8B 0E 2A 05
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_0D8E                          ; E8 61 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 4F 00
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0D62                          ; 74 1D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cx, word ptr [0x52a]            ; 8B 0E 2A 05
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_0D8E                          ; E8 2C 00
L_0D62:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0D68:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     cx, word ptr [0x52a]            ; 8B 0E 2A 05
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        push    ax                              ; 50
        call    L_0D8E                          ; E8 06 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0D8E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jg      L_0D9E                          ; 7F 03
        jmp     L_0E23                          ; E9 85 00
L_0D9E:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 0x1a], 1      ; 26 83 7F 1A 01
        jne     L_0E23                          ; 75 7B
        mov     si, word ptr es:[bx + 0xc]      ; 26 8B 77 0C
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     si, ax                          ; 03 F0
        cmp     si, 0x200                       ; 81 FE 00 02
        jl      L_0DFE                          ; 7C 38
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        push    ax                              ; 50
        call    far GDI.WRITESPOOL              ; 9A 11 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_0DEC                          ; 7D 09
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        jmp     L_0E23                          ; EB 37
L_0DEC:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x48                        ; 05 48 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     si, word ptr [bp + 4]           ; 8B 76 04
L_0DFE:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0xc], si      ; 26 89 77 0C
        jmp     L_0E19                          ; EB 12
L_0E07:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     byte ptr es:[bx], al            ; 26 88 07
L_0E19:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_0E07                          ; 75 E4
L_0E23:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0E2A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 0x20], ax     ; 26 89 47 20
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0E3B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x20]     ; 26 8B 77 20
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0xa                         ; 05 0A 00
        add     word ptr es:[bx + 0x20], ax     ; 26 01 47 20
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        cmp     ax, word ptr es:[bx + 0x1e]     ; 26 3B 47 1E
        jl      L_0E7F                          ; 7C 21
        add     byte ptr es:[bx + 0x1f], 4      ; 26 80 47 1F 04
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        mov     ax, word ptr es:[bx + 0x1e]     ; 26 8B 47 1E
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0E7F                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0E81                          ; EB 02
L_0E7F:
        mov     ax, si                          ; 8B C6
L_0E81:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
L_0E89:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, 0x1000                      ; B8 00 10
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x1c], ax     ; 26 89 47 1C
        or      ax, ax                          ; 0B C0
        jne     L_0EAA                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0EBC                          ; EB 12
L_0EAA:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x1e], 0x1000 ; 26 C7 47 1E 00 10
        mov     word ptr es:[bx + 0x20], 0      ; 26 C7 47 20 00 00
        mov     ax, 1                           ; B8 01 00
L_0EBC:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
L_0EC2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x16]     ; 26 8B 77 16
        mov     bx, word ptr es:[bx + 0x26]     ; 26 8B 5F 26
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bx + 0x1fa], ax       ; 39 87 FA 01
        jge     L_0EE3                          ; 7D 03
        jmp     L_0FA2                          ; E9 BF 00
L_0EE3:
        or      ax, ax                          ; 0B C0
        jge     L_0EF4                          ; 7D 0D
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        mov     ax, si                          ; 8B C6
        add     ax, di                          ; 03 C7
        mov     word ptr [bp + 8], ax           ; 89 46 08
        jmp     L_0F35                          ; EB 41
L_0EF4:
        cmp     byte ptr [bp + 6], 0x20         ; 80 7E 06 20
        jne     L_0F1A                          ; 75 20
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jge     L_0F1A                          ; 7D 1B
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x53e                       ; B8 3E 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 7D FE
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x16], 0      ; 26 C7 47 16 00 00
L_0F1A:
        cmp     byte ptr [bp + 6], 0x20         ; 80 7E 06 20
        jne     L_0F2C                          ; 75 0C
        cmp     word ptr [bp + 8], si           ; 39 76 08
        jl      L_0F2C                          ; 7C 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, si                          ; 2B C6
        jmp     L_0F2F                          ; EB 03
L_0F2C:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
L_0F2F:
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_0FA2                          ; 74 6D
L_0F35:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 0x16], ax     ; 26 89 47 16
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        idiv    cx                              ; F7 F9
        mov     si, dx                          ; 8B F2
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x1c                        ; 05 1C 00
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 A1 FD
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 22 FE
        sub     di, si                          ; 2B FE
        je      L_0FA2                          ; 74 32
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, 0x1c                        ; 05 1C 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0CFB                          ; E8 74 FD
        jmp     L_0F9E                          ; EB 15
L_0F89:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0D8E                          ; E8 F3 FD
        sub     di, word ptr [bp + 4]           ; 2B 7E 04
L_0F9E:
        or      di, di                          ; 0B FF
        jne     L_0F89                          ; 75 E7
L_0FA2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
L_0FAA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jae     L_0FBE                          ; 73 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0xbe]     ; 26 8B 87 BE 00
        jmp     L_0FD2                          ; EB 14
L_0FBE:
        mov     bl, byte ptr [bp + 8]           ; 8A 5E 08
        sub     bh, bh                          ; 2A FF
        mov     al, byte ptr [bx + 0x428]       ; 8A 87 28 04
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
L_0FD2:
        pop     si                              ; 5E
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
        cmp     word ptr [0x548], 0             ; 83 3E 48 05 00
        je      L_0FF2                          ; 74 05
L_0FED:
        sub     ax, ax                          ; 2B C0
        jmp     L_10AA                          ; E9 B8 00
L_0FF2:
        mov     word ptr [0x548], 1             ; C7 06 48 05 01 00
        mov     ax, 0x550                       ; B8 50 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A 4D 10 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x550                       ; B8 50 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x24                        ; 3D 24 00
        jne     L_1035                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x550                       ; B8 50 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCMP              ; 9A 23 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1051                          ; 74 1C
L_1035:
        mov     word ptr [0x570], 0xc           ; C7 06 70 05 0C 00
        mov     word ptr [0x572], 0             ; C7 06 72 05 00 00
        mov     ax, 0x550                       ; B8 50 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far KERNEL.LSTRCPY              ; 9A D9 00 00 00 [FIXUP]
L_1051:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x540                       ; B8 40 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_1077                          ; 75 09
        mov     word ptr [0x548], 0             ; C7 06 48 05 00 00
        jmp     L_0FED                          ; E9 76 FF
L_1077:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x550                       ; B8 50 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x548], 0             ; C7 06 48 05 00 00
        mov     ax, 1                           ; B8 01 00
L_10AA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_10D6                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_10D3                          ; 75 03
        jmp     L_1156                          ; E9 83 00
L_10D3:
        jmp     L_11C0                          ; E9 EA 00
L_10D6:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, 0x550                       ; B8 50 05
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        jmp     L_10E9                          ; EB 03
L_10E6:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_10E9:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     byte ptr [bp + si - 0x3c], al   ; 88 42 C4
        or      al, al                          ; 0A C0
        jne     L_10E6                          ; 75 EA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        lea     ax, [bp + si - 0x3c]            ; 8D 42 C4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x570]                ; FF 36 70 05
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 3E 11 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, word ptr [0x572]            ; A1 72 05
        add     ax, 0x14                        ; 05 14 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x570]                ; FF 36 70 05
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11C0                          ; EB 6A
L_1156:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_11C0                          ; 72 62
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_11B0                          ; 76 4D
        cmp     ax, 0xc                         ; 3D 0C 00
        jb      L_11C0                          ; 72 58
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_1179                          ; 76 0C
        cmp     ax, 0x14                        ; 3D 14 00
        jb      L_11C0                          ; 72 4E
        cmp     ax, 0x17                        ; 3D 17 00
        jbe     L_1192                          ; 76 1B
        jmp     L_11C0                          ; EB 47
L_1179:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x570], ax            ; A3 70 05
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_11C0                          ; EB 2E
L_1192:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x17                        ; B8 17 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.CHECKRADIOBUTTON       ; 9A 8C 11 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x14                        ; 2D 14 00
        mov     word ptr [0x572], ax            ; A3 72 05
        jmp     L_11C0                          ; EB 10
L_11B0:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
        jmp     L_11C2                          ; EB 02
L_11C0:
        sub     ax, ax                          ; 2B C0
L_11C2:
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
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
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
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jge     L_1245                          ; 7D 1E
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    L_0704                          ; E8 C2 F4
        jmp     L_13D8                          ; E9 93 01
L_1245:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_126C                          ; 7C 21
        cmp     word ptr [bp + 0x1c], 0         ; 83 7E 1C 00
        jl      L_126C                          ; 7C 1B
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     si, word ptr es:[bx + 0x26]     ; 26 8B 77 26
        shl     si, 1                           ; D1 E6
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cmp     word ptr [si + 0x1fa], ax       ; 39 84 FA 01
        jl      L_126C                          ; 7C 09
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr [si + 0x202], ax       ; 39 84 02 02
        jge     L_1272                          ; 7D 06
L_126C:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_13D8                          ; E9 66 01
L_1272:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        call    L_0825                          ; E8 8A F5
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x33]     ; 26 8B 47 33
        shl     ax, 1                           ; D1 E0
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     cl, byte ptr es:[bx + 0xa]      ; 26 8A 4F 0A
        sub     ch, ch                          ; 2A ED
        and     cx, 1                           ; 81 E1 01 00
        or      ax, cx                          ; 0B C1
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_13E4                          ; E8 1B 01
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        jne     L_12D6                          ; 75 03
        jmp     L_139F                          ; E9 C9 00
L_12D6:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_132F                          ; 74 46
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        cwde                                    ; 98
        cmp     ax, 0x7f                        ; 3D 7F 00
        jbe     L_131C                          ; 76 0C
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0FAA                          ; E8 90 FC
        jmp     L_1336                          ; EB 1A
L_131C:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 8]                ; C4 76 F8
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        jmp     L_1336                          ; EB 07
L_132F:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
L_1336:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        sar     word ptr [bp - 0xa], 1          ; D1 7E F6
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 C3 F8
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_1379                          ; 74 20
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 0xbe]     ; 26 8B 87 BE 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x5f                        ; B8 5F 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_0EC2                          ; E8 4B FB
        jmp     L_1389                          ; EB 10
L_1379:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x5f                        ; B8 5F 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 89 F8
L_1389:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_13E4                          ; E8 45 00
L_139F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx + 0xc], 0       ; 26 80 7F 0C 00
        je      L_13D8                          ; 74 2F
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0xc], 0       ; 26 C7 47 0C 00 00
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x5f                        ; B8 5F 00
        push    ax                              ; 50
        call    L_0C12                          ; E8 54 F8
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        sub     ax, 4                           ; 2D 04 00
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_13E4                          ; E8 0C 00
L_13D8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
L_13E4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_0E3B                          ; E8 41 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_1405                          ; 75 05
L_1400:
        sub     ax, ax                          ; 2B C0
        jmp     L_14BD                          ; E9 B8 00
L_1405:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALLOCK           ; 9A 1C 03 00 00 [FIXUP]
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.COPY                    ; 9A A2 00 00 00 [FIXUP]
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.INSERTPQ                ; 9A AA 14 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_14AE                          ; 75 40
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_149C                          ; 75 1B
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALUNLOCK         ; 9A B6 14 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0E2A                          ; E8 91 F9
        jmp     L_1400                          ; E9 64 FF
L_149C:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 8]               ; FF 76 08
        call    far GDI.INSERTPQ                ; 9A 69 03 00 00 [FIXUP]
L_14AE:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        call    far KERNEL.GLOBALUNLOCK         ; 9A B4 03 00 00 [FIXUP]
        mov     ax, 1                           ; B8 01 00
L_14BD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 1                           ; B8 01 00
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
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     ax, ax                          ; 2B C0
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        sub     ax, sp                          ; 2B C4
        jae     L_155D                          ; 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_155D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1559                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
L_1559:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
L_155D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0ffh                            ; FF
        db      0ffh                            ; FF

NEC3550_TEXT ENDS

        END
