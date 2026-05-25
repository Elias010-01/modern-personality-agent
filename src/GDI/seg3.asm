; AUTO-GENERATED from original GDI segment 3
; segment_size=2176 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'
; @ANALYSIS_v1
;----------------------------------------------------------------------
; GETTEXTFACE -- 57 instr
; Getter: devuelve textface.
; tags: far, medium
;----------------------------------------------------------------------


;-----------------------------------------------------------------------
; GETTEXTFACE  (offset 0x0000, size 145 bytes)
;-----------------------------------------------------------------------
GETTEXTFACE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_0017                          ; 75 04
L_0013:
        sub     ax, ax                          ; 2B C0
        jmp     L_0086                          ; EB 6F
L_0017:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx + 8], 0x40         ; F6 47 08 40
        je      L_0033                          ; 74 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_2BC2                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0013                          ; 74 E0
L_0033:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     ax, word ptr [bx + 0x34]        ; 8B 47 34
        mov     dx, word ptr [bx + 0x36]        ; 8B 57 36
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp - 8]                ; C4 5E F8
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        add     ax, bx                          ; 03 C3
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0073                          ; EB 1B
L_0058:
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_007C                          ; 74 1B
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp - 4]               ; FF 46 FC
L_0073:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        dec     ax                              ; 48
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jg      L_0058                          ; 7F DC
L_007C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_0086:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
GETTEXTFACE ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0091 -- offset 0x0091 -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
; callers: ENUMCALLBACK, sub_048E
;----------------------------------------------------------------------

L_0091:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_32CE                  ; 9A 05 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp + 6], ax           ; 89 46 06
        or      ax, ax                          ; 0B C0
        jge     L_00CF                          ; 7D 02
        neg     ax                              ; F7 D8
L_00CF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00DA -- offset 0x00DA -- 34 instr
; Funcion mediana (34 instr, 0 calls).
; tags: far, medium
; callers: ENUMCALLBACK, sub_048E
;----------------------------------------------------------------------
L_00DA:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_32CE                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [bp + 6], ax           ; 89 46 06
        or      ax, ax                          ; 0B C0
        jge     L_0118                          ; 7D 02
        neg     ax                              ; F7 D8
L_0118:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENUMFONTS -- 296 instr
; Enumerador: itera sobre fonts.
; tags: calls_kernel, dispatcher, far
; calls (intra): sub_048E
; calls (inter): KERNEL.FATALEXIT, KERNEL.FINDATOM, KERNEL.GETATOMNAME, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK (+3 mas)
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ENUMFONTS  (offset 0x0123, size 875 bytes)
;-----------------------------------------------------------------------
ENUMFONTS PROC FAR
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
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_013C                          ; 75 05
L_0137:
        sub     ax, ax                          ; 2B C0
        jmp     L_0482                          ; E9 46 03
L_013C:
        mov     ax, 0x259                       ; B8 59 02
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_162D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        or      ax, ax                          ; 0B C0
        je      L_0137                          ; 74 E9
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A 48 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 6], dx        ; 26 89 57 06
        mov     word ptr es:[bx + 8], 0         ; 26 C7 47 08 00 00
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        call    far _SEG1_1662                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, OFFSET _entry_158           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_158           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        lcall   [bx + 0x14]                     ; FF 5F 14
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        call    far _SEG1_1694                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_01CA                          ; 75 08
        mov     word ptr [bp - 0x22], 0         ; C7 46 DE 00 00
        jmp     L_046F                          ; E9 A5 02
L_01CA:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 0x38], 0         ; C7 46 C8 00 00
        mov     word ptr [bp - 0x22], 0xffff    ; C7 46 DE FF FF
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x36], ax        ; 89 46 CA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x6e]        ; 8B 47 6E
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        or      ax, ax                          ; 0B C0
        jne     L_0211                          ; 75 0C
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        mov     bx, word ptr [bx + 0x2a]        ; 8B 5F 2A
        mov     ax, word ptr [bx + 0x34]        ; 8B 47 34
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
L_0211:
        mov     bx, word ptr [bp - 0x36]        ; 8B 5E CA
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        test    word ptr [bp - 0x24], 0x2000    ; F7 46 DC 00 20
        jne     L_0226                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0228                          ; EB 02
L_0226:
        sub     ax, ax                          ; 2B C0
L_0228:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
        jmp     L_044E                          ; E9 1B 02
L_0233:
        call    far KERNEL.YIELD                ; 9A 6E 02 00 00 [FIXUP]
L_0238:
        cmp     word ptr [0x13e], 0             ; 83 3E 3E 01 00
        jne     L_0233                          ; 75 F4
        inc     word ptr [0x13c]                ; FF 06 3C 01
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     ax, 0x2d                        ; B8 2D 00
        imul    word ptr [bp - 0x30]            ; F7 6E D0
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0272                          ; 75 08
        jmp     L_0436                          ; E9 C9 01
L_026D:
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
L_0272:
        cmp     word ptr [0x142], 0             ; 83 3E 42 01 00
        jne     L_026D                          ; 75 F4
        inc     word ptr [0x140]                ; FF 06 40 01
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        push    word ptr es:[bx]                ; 26 FF 37
        call    far _entry_385                  ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x3a], al        ; 88 46 C6
        cmp     al, 0xff                        ; 3C FF
        jne     L_0298                          ; 75 09
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_0298:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     dl, byte ptr [bp - 0x3a]        ; 8A 56 C6
        sub     dh, dh                          ; 2A F6
        mov     cl, 3                           ; B1 03
        shl     dx, cl                          ; D3 E2
        add     dx, ax                          ; 03 D0
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     bx, dx                          ; 8B DA
        cmp     word ptr [bx + 4], 0            ; 83 7F 04 00
        jg      L_02D6                          ; 7F 1F
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A DB 02 00 00 [FIXUP]
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jbe     L_02D1                          ; 76 0A
        dec     word ptr [0x140]                ; FF 0E 40 01
        mov     ax, word ptr [0x140]            ; A1 40 01
        jmp     L_0361                          ; E9 90 00
L_02D1:
        sub     ax, ax                          ; 2B C0
        jmp     L_0361                          ; E9 8B 00
L_02D6:
        push    word ptr [0x39a]                ; FF 36 9A 03
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x140], 0             ; 83 3E 40 01 00
        jbe     L_02EF                          ; 76 09
        dec     word ptr [0x140]                ; FF 0E 40 01
        mov     ax, word ptr [0x140]            ; A1 40 01
        jmp     L_02F1                          ; EB 02
L_02EF:
        sub     ax, ax                          ; 2B C0
L_02F1:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        or      ax, ax                          ; 0B C0
        je      L_0309                          ; 74 0A
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        cmp     word ptr [bp - 0x34], ax        ; 39 46 CC
        je      L_032C                          ; 74 25
        jmp     L_0361                          ; EB 58
L_0309:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        and     ax, 3                           ; 25 03 00
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        jne     L_0320                          ; 75 06
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0361                          ; 75 41
L_0320:
        cmp     word ptr [bp - 0x1c], 2         ; 83 7E E4 02
        je      L_0361                          ; 74 3B
        cmp     word ptr [bp - 0x1c], 3         ; 83 7E E4 03
        je      L_0361                          ; 74 35
L_032C:
        mov     word ptr [bp - 0x18], 1         ; C7 46 E8 01 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_03B0                          ; 75 77
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0348:
        mov     ax, word ptr [bp - 0x38]        ; 8B 46 C8
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0383                          ; 7D 33
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        cmp     word ptr es:[bx + si + 0xc], ax ; 26 39 40 0C
        jne     L_037E                          ; 75 1D
L_0361:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A 3B 04 00 00 [FIXUP]
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        ja      L_0374                          ; 77 03
        jmp     L_0449                          ; E9 D5 00
L_0374:
        dec     word ptr [0x13c]                ; FF 0E 3C 01
        mov     ax, word ptr [0x13c]            ; A1 3C 01
        jmp     L_044B                          ; E9 CD 00
L_037E:
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_0348                          ; EB C5
L_0383:
        mov     si, word ptr [bp - 0x38]        ; 8B 76 C8
        inc     word ptr [bp - 0x38]            ; FF 46 C8
        shl     si, 1                           ; D1 E6
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr es:[bx + si + 0xc], ax ; 26 89 40 0C
        mov     byte ptr es:[bx + 0x21a], 0     ; 26 C6 87 1A 02 00
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x21a                       ; 05 1A 02
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        call    far KERNEL.GETATOMNAME          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0402                          ; EB 52
L_03B0:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jne     L_0436                          ; 75 7A
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x21a                       ; 05 1A 02
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     word ptr [bp - 0x26], dx        ; 89 56 DA
L_03DC:
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0x28]             ; C4 5E D8
        inc     word ptr [bp - 0x28]            ; FF 46 D8
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        je      L_0402                          ; 74 10
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
        cmp     word ptr [bp - 0x1a], 0x1f      ; 83 7E E6 1F
        jne     L_03DC                          ; 75 E1
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
L_0402:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 0x208                       ; 05 08 02
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x23a                       ; 05 3A 02
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_048E                          ; E8 61 00
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_044B                          ; 75 17
        jmp     L_0459                          ; EB 23
L_0436:
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jbe     L_0449                          ; 76 03
        jmp     L_0374                          ; E9 2B FF
L_0449:
        sub     ax, ax                          ; 2B C0
L_044B:
        inc     word ptr [bp - 0x30]            ; FF 46 D0
L_044E:
        mov     ax, word ptr [0x12e]            ; A1 2E 01
        cmp     word ptr [bp - 0x30], ax        ; 39 46 D0
        jae     L_0459                          ; 73 03
        jmp     L_0238                          ; E9 DF FD
L_0459:
        cmp     word ptr [bp - 0x18], 0         ; 83 7E E8 00
        jne     L_046F                          ; 75 10
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_046F                          ; 74 06
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
L_046F:
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far KERNEL.GLOBALUNLOCK         ; 9A 39 07 00 00 [FIXUP]
        push    word ptr [bp - 0x2c]            ; FF 76 D4
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
L_0482:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
ENUMFONTS ENDP
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_048E -- offset 0x048E -- 236 instr
; Dispatcher: tabla de decisiones cmp+jcc (236 instr).
; tags: dispatcher
; callers: ENUMFONTS
;----------------------------------------------------------------------

L_048E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x25]     ; 26 8B 47 25
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        push    word ptr es:[bx + 0x22]         ; 26 FF 77 22
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 1B FC
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 C0 FB
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x1d]     ; 26 8B 47 1D
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x1a]     ; 26 8A 47 1A
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x1b]     ; 26 8A 47 1B
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x1c]     ; 26 8A 47 1C
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0xd], al      ; 26 88 47 0D
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_053B                          ; 75 04
        mov     al, 3                           ; B0 03
        jmp     L_053D                          ; EB 02
L_053B:
        mov     al, 1                           ; B0 01
L_053D:
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0xe], al      ; 26 88 47 0E
        mov     byte ptr es:[bx + 0xf], 2       ; 26 C6 47 0F 02
        mov     byte ptr es:[bx + 0x10], 1      ; 26 C6 47 10 01
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        test    byte ptr es:[bx + 0x24], 1      ; 26 F6 47 24 01
        je      L_055C                          ; 74 04
        mov     al, 2                           ; B0 02
        jmp     L_055E                          ; EB 02
L_055C:
        mov     al, 1                           ; B0 01
L_055E:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     cl, byte ptr es:[bx + 0x24]     ; 26 8A 4F 24
        and     cl, 0xf0                        ; 80 E1 F0
        or      al, cl                          ; 0A C1
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x22]     ; 26 8B 47 22
        sub     ax, word ptr es:[bx + 0x14]     ; 26 2B 47 14
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x18]     ; 26 8B 47 18
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x27]     ; 26 8B 47 27
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 FC FA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 E9 FA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 D6 FA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 C3 FA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 67 FA
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x12], al     ; 26 88 47 12
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x29]     ; 26 8A 47 29
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x13], al     ; 26 88 47 13
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x2a]     ; 26 8A 47 2A
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x14], al     ; 26 88 47 14
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x2b]     ; 26 8A 47 2B
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        add     al, byte ptr es:[bx + 0x13]     ; 26 02 47 13
        mov     byte ptr es:[bx + 0x15], al     ; 26 88 47 15
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     al, byte ptr es:[bx + 0x2c]     ; 26 8A 47 2C
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        add     al, byte ptr es:[bx + 0x13]     ; 26 02 47 13
        mov     byte ptr es:[bx + 0x16], al     ; 26 88 47 16
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_06B7                          ; 74 04
        mov     al, 1                           ; B0 01
        jmp     L_06B9                          ; EB 02
L_06B7:
        sub     al, al                          ; 2A C0
L_06B9:
        mov     cl, 3                           ; B1 03
        shl     al, cl                          ; D2 E0
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     cl, byte ptr es:[bx + 0xc]      ; 26 8A 4F 0C
        and     cl, 3                           ; 80 E1 03
        shl     cl, 1                           ; D0 E1
        or      al, cl                          ; 0A C1
        mov     cl, byte ptr es:[bx + 0x24]     ; 26 8A 4F 24
        and     cl, 0xf1                        ; 80 E1 F1
        or      al, cl                          ; 0A C1
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx + 0xd]      ; 26 8A 47 0D
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     byte ptr es:[bx + 0x18], al     ; 26 88 47 18
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x1b], ax     ; 26 89 47 1B
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x1d], ax     ; 26 89 47 1D
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        cmp     word ptr es:[bx + 8], 0         ; 26 83 7F 08 00
        je      L_071A                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_071C                          ; EB 02
L_071A:
        sub     ax, ax                          ; 2B C0
L_071C:
        les     bx, ptr [bp + 0x16]             ; C4 5E 16
        mov     si, ax                          ; 8B F0
        test    byte ptr es:[bx + 0xc], 3       ; 26 F6 47 0C 03
        jne     L_072D                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_072F                          ; EB 02
L_072D:
        sub     ax, ax                          ; 2B C0
L_072F:
        or      ax, si                          ; 0B C6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x3f4]                ; FF 36 F4 03
        call    far KERNEL.GLOBALUNLOCK         ; 9A 66 03 00 00 [FIXUP]
        cmp     word ptr [0x13c], 0             ; 83 3E 3C 01 00
        jbe     L_074D                          ; 76 09
        dec     word ptr [0x13c]                ; FF 0E 3C 01
        mov     ax, word ptr [0x13c]            ; A1 3C 01
        jmp     L_074F                          ; EB 02
L_074D:
        sub     ax, ax                          ; 2B C0
L_074F:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        lcall   [bp + 8]                        ; FF 5E 08
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; ENUMCALLBACK -- 116 instr
; Enumerador: itera sobre callback.
; tags: complex, far
; calls (intra): sub_0091, sub_00DA
;----------------------------------------------------------------------

;-----------------------------------------------------------------------
; ENUMCALLBACK  (offset 0x076E, size 274 bytes)
;-----------------------------------------------------------------------
ENUMCALLBACK PROC FAR
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
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0xa]      ; 26 8B 77 0A
        push    si                              ; 56
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        push    word ptr es:[bx]                ; 26 FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 4B F9
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    si                              ; 56
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 F2 F8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    si                              ; 56
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        push    word ptr es:[bx]                ; 26 FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 28 F9
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx], ax            ; 26 89 07
        push    si                              ; 56
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 18 F9
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        push    si                              ; 56
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 07 F9
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        push    si                              ; 56
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 F6 F8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        push    si                              ; 56
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00DA                          ; E8 E5 F8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        push    si                              ; 56
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 8B F8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        push    si                              ; 56
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 7A F8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        push    si                              ; 56
        push    word ptr es:[bx + 0x19]         ; 26 FF 77 19
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0091                          ; E8 69 F8
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x19], ax     ; 26 89 47 19
        or      byte ptr [bp + 0xa], 2          ; 80 4E 0A 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], 1         ; 26 C7 47 08 01 00
        test    byte ptr [bp + 0xa], 1          ; F6 46 0A 01
        je      L_0846                          ; 74 04
        sub     al, al                          ; 2A C0
        jmp     L_0848                          ; EB 02
L_0846:
        mov     al, 1                           ; B0 01
L_0848:
        shl     al, 1                           ; D0 E0
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     cl, byte ptr es:[bx + 0x17]     ; 26 8A 4F 17
        and     cl, 0xf1                        ; 80 E1 F1
        or      al, cl                          ; 0A C1
        or      al, 8                           ; 0C 08
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xa]             ; FF 76 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx]                ; 26 FF 37
        lcall   es:[bx + 4]                     ; 26 FF 5F 04
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    cs                              ; 0E
ENUMCALLBACK ENDP


GDI_TEXT ENDS

        END
