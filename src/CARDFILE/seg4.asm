; AUTO-GENERATED from original CARDFILE segment 4
; segment_size=11271 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x66                        ; 83 EC 66
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x16                        ; 3D 16 00
        jne     L_0018                          ; 75 03
        jmp     L_00CD                          ; E9 B5 00
L_0018:
        jbe     L_001D                          ; 76 03
        jmp     L_033D                          ; E9 20 03
L_001D:
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0x13                        ; 3D 13 00
        jbe     L_0028                          ; 76 03
        jmp     L_0367                          ; E9 3F 03
L_0028:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x315]        ; 2E FF A7 15 03
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x286], ax            ; A3 86 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B1F                          ; E8 E4 1A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A 86 00 00 00 [FIXUP]
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1e                        ; B8 1E 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x62]                 ; 8D 46 9E
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x22b7                      ; B8 B7 22
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        call    L_1A70                          ; E8 E3 19
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A AE 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A FF FF 00 00 [FIXUP]
L_00B2:
        sub     ax, ax                          ; 2B C0
        jmp     L_00FC                          ; EB 46
L_00B6:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_161C                          ; E8 54 15
        add     sp, 0xa                         ; 83 C4 0A
        jmp     L_00B2                          ; EB E5
L_00CD:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_00B2                          ; 74 DF
        mov     ax, 0x488                       ; B8 88 04
        push    ax                              ; 50
        call    far _entry_10                   ; 9A 1D 01 00 00 [FIXUP]
L_00DC:
        add     sp, 2                           ; 83 C4 02
        jmp     L_00B2                          ; EB D1
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_29B7                          ; E8 CF 28
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_00B2                          ; 74 C3
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 4A 22
        add     sp, 2                           ; 83 C4 02
L_00F9:
        mov     ax, 1                           ; B8 01 00
L_00FC:
        sub     dx, dx                          ; 2B D2
        jmp     L_03AF                          ; E9 AE 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_29B7                          ; E8 B0 28
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_00F9                          ; 74 EB
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00F9                          ; EB E1
        mov     ax, 0x488                       ; B8 88 04
        push    ax                              ; 50
        call    far _entry_10                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x16e]                ; FF 36 6E 01
        call    far KERNEL.GETMODULEUSAGE       ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_014D                          ; 75 1B
        push    word ptr [0x1fa]                ; FF 36 FA 01
        call    far GDI.DELETEOBJECT            ; 9A 40 01 00 00 [FIXUP]
        push    word ptr [0x43a]                ; FF 36 3A 04
        call    far GDI.DELETEOBJECT            ; 9A 49 01 00 00 [FIXUP]
        push    word ptr [0x400]                ; FF 36 00 04
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
L_014D:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.POSTQUITMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00F9                          ; EB A2
L_0157:
        call    L_138A                          ; E8 30 12
        jmp     L_00B2                          ; E9 55 FF
L_015D:
        mov     ax, word ptr [0x29a]            ; A1 9A 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0178                          ; 75 13
        cmp     word ptr [bp + 8], 0x500        ; 81 7E 08 00 05
        jne     L_0178                          ; 75 0C
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 E0 17
        jmp     L_00DC                          ; E9 64 FF
L_0178:
        cmp     word ptr [bp + 0xa], 0xc8       ; 81 7E 0A C8 00
        je      L_0182                          ; 74 03
        jmp     L_0306                          ; E9 84 01
L_0182:
        cmp     word ptr [0x16], 0              ; 83 3E 16 00 00
        jne     L_0196                          ; 75 0D
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        jne     L_0196                          ; 75 06
        mov     word ptr [0x84], 1              ; C7 06 84 00 01 00
L_0196:
        mov     word ptr [0x16], 0              ; C7 06 16 00 00 00
        jmp     L_00B2                          ; E9 13 FF
L_019F:
        mov     ax, word ptr [0x29a]            ; A1 9A 02
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_01AA                          ; 74 03
        jmp     L_0367                          ; E9 BD 01
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01AA -- offset 0x01AA -- 190 instr
; Iterador con bucle (190 instr).
; tags: calls_gdi, calls_user, complex_iterator, far, loop
; calls (intra): sub_03BA, sub_0459, sub_06CF, sub_091C, sub_098F, sub_1B1F (+4 mas)
; calls (inter): GDI.SETBKCOLOR, GDI.SETTEXTCOLOR, USER.BEGINPAINT, USER.DEFWINDOWPROC, USER.ENDPAINT, USER.GETDC (+4 mas)
;----------------------------------------------------------------------
L_01AA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0xff                        ; BA FF 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1f8]            ; A1 F8 01
        jmp     L_00FC                          ; E9 30 FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_03BA                          ; E8 E5 01
        jmp     L_030F                          ; E9 37 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_01FD                          ; 75 10
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_06CF                          ; E8 D4 04
        jmp     L_020B                          ; EB 0E
L_01FD:
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x2e]            ; FF 76 D2
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0459                          ; E8 4E 02
L_020B:
        add     sp, 8                           ; 83 C4 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00B2                          ; E9 94 FE
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0227                          ; 75 03
        jmp     L_00B2                          ; E9 8B FE
L_0227:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_091C                          ; E8 E9 06
L_0233:
        add     sp, 6                           ; 83 C4 06
        jmp     L_00B2                          ; E9 79 FE
L_0239:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1BA8                          ; E8 63 19
        jmp     L_0233                          ; EB EC
L_0247:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1D4B                          ; E8 F8 1A
        jmp     L_0233                          ; EB DE
L_0255:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_24B4                          ; E8 59 22
        jmp     L_00DC                          ; E9 7E FE
L_025E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_2706                          ; E8 9F 24
        jmp     L_030F                          ; E9 A5 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0273                          ; 75 03
        jmp     L_00B2                          ; E9 3F FE
L_0273:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_027C                          ; 74 03
        jmp     L_00B2                          ; E9 36 FE
L_027C:
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_028A                          ; 75 06
        push    word ptr [0x29a]                ; FF 36 9A 02
        jmp     L_028E                          ; EB 04
L_028A:
        push    word ptr [0x286]                ; FF 36 86 02
L_028E:
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00B2                          ; E9 1C FE
L_0296:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1B1F                          ; E8 84 18
        jmp     L_00B2                          ; E9 14 FE
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_02A9                          ; 74 03
        jmp     L_00B2                          ; E9 09 FE
L_02A9:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x42]            ; FF 76 BE
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 0x42]            ; FF 76 BE
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00B2                          ; E9 B3 FD
L_02FF:
        cmp     word ptr [bp + 0xa], 0x22b7     ; 81 7E 0A B7 22
        jne     L_0367                          ; 75 61
L_0306:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_098F                          ; E8 80 06
L_030F:
        add     sp, 4                           ; 83 C4 04
        jmp     L_00B2                          ; E9 9D FD
        xor     byte ptr [bx + si], al          ; 30 00
        sbb     byte ptr [bx + di], al          ; 18 01
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        push    ds                              ; 1E
        add     ch, byte ptr [bp + si + 2]      ; 02 6A 02
        sahf                                    ; 9E
        add     bl, byte ptr [bp + 0x6702]      ; 02 9E 02 67
        add     sp, word ptr [bx + 3]           ; 03 67 03
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        fadd    dword ptr [bx + di]             ; D8 01
        add     word ptr [bx + di], ax          ; 01 01
        loope   L_0337                          ; E1 00
L_0337:
        add     sp, word ptr [edi + 3]          ; 67 03 67 03
        int3                                    ; CC
        add     word ptr [di], di               ; 01 3D
        adc     word ptr [bx + di], ax          ; 11 01
        jne     L_0345                          ; 75 03
        jmp     L_015D                          ; E9 18 FE
L_0345:
        ja      L_037D                          ; 77 36
        cmp     ax, 0x19                        ; 3D 19 00
        jne     L_034F                          ; 75 03
        jmp     L_019F                          ; E9 50 FE
L_034F:
        cmp     ax, 0x1a                        ; 3D 1A 00
        jne     L_0357                          ; 75 03
        jmp     L_0296                          ; E9 3F FF
L_0357:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_035F                          ; 75 03
        jmp     L_025E                          ; E9 FF FE
L_035F:
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_0367                          ; 75 03
        jmp     L_0255                          ; E9 EE FE
L_0367:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03AF                          ; EB 32
L_037D:
        cmp     ax, 0x112                       ; 3D 12 01
        jne     L_0385                          ; 75 03
        jmp     L_02FF                          ; E9 7A FF
L_0385:
        cmp     ax, 0x114                       ; 3D 14 01
        jne     L_038D                          ; 75 03
        jmp     L_0239                          ; E9 AC FE
L_038D:
        cmp     ax, 0x115                       ; 3D 15 01
        jne     L_0395                          ; 75 03
        jmp     L_0247                          ; E9 B2 FE
L_0395:
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_039D                          ; 75 03
        jmp     L_0157                          ; E9 BA FD
L_039D:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_03A5                          ; 75 03
        jmp     L_00B6                          ; E9 11 FD
L_03A5:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_03AD                          ; 75 03
        jmp     L_00B6                          ; E9 09 FD
L_03AD:
        jmp     L_0367                          ; EB B8
L_03AF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_03BA -- offset 0x03BA -- 54 instr
; Funcion mediana (54 instr, 9 calls).
; tags: calls_gdi, calls_user, medium
; callers: sub_01AA
; calls (inter): GDI.CREATESOLIDBRUSH, GDI.DELETEOBJECT, GDI.SELECTOBJECT, GDI.SETBRUSHORG, GDI.UNREALIZEOBJECT, USER.CLIENTTOSCREEN (+3 mas)
;----------------------------------------------------------------------
L_03BA:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A DE 06 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_03E7                          ; 75 12
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A 15 07 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03EA                          ; EB 03
L_03E7:
        mov     ax, word ptr [0x53c]            ; A1 3C 05
L_03EA:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0455                          ; 74 64
        push    ax                              ; 50
        call    far GDI.UNREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.SETBRUSHORG             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.SELECTOBJECT            ; 9A 41 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.FILLRECT               ; 9A CE 05 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_0455                          ; 75 08
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.DELETEOBJECT            ; 9A 37 01 00 00 [FIXUP]
L_0455:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0459 -- offset 0x0459 -- 231 instr
; Dispatcher: tabla de decisiones cmp+jcc (231 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_01AA
; calls (inter): GDI.SETBKMODE, GDI.TEXTOUT, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN, USER.FILLRECT (+3 mas)
;----------------------------------------------------------------------
L_0459:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x26                        ; 83 EC 26
        push    si                              ; 56
        cmp     word ptr [0x16], 0              ; 83 3E 16 00 00
        je      L_046A                          ; 74 03
        jmp     L_06CA                          ; E9 60 02
L_046A:
        mov     ax, word ptr [0x198]            ; A1 98 01
        sub     ax, 8                           ; 2D 08 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        sub     ax, 8                           ; 2D 08 00
        cmp     ax, word ptr [0x508]            ; 3B 06 08 05
        jle     L_0480                          ; 7E 04
        sub     word ptr [bp - 0x14], 8         ; 83 6E EC 08
L_0480:
        mov     ax, word ptr [0x53e]            ; A1 3E 05
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        sub     ax, 8                           ; 2D 08 00
        cmp     ax, word ptr [0x164]            ; 3B 06 64 01
        jle     L_0493                          ; 7E 04
        sub     word ptr [bp - 0x1c], 8         ; 83 6E E4 08
L_0493:
        mov     word ptr [bp - 0x12], 1         ; C7 46 EE 01 00
        mov     ax, 1                           ; B8 01 00
        mov     word ptr [0x282], ax            ; A3 82 02
        mov     word ptr [0x536], ax            ; A3 36 05
        mov     ax, word ptr [0x486]            ; A1 86 04
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jle     L_04C3                          ; 7E 1A
        add     ax, word ptr [0x440]            ; 03 06 40 04
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x440]            ; 8B 0E 40 04
        idiv    cx                              ; F7 F9
        add     word ptr [0x282], ax            ; 01 06 82 02
        mov     ax, word ptr [0x486]            ; A1 86 04
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     word ptr [0x536], ax            ; 01 06 36 05
L_04C3:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [0x508]            ; 2B 06 08 05
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jle     L_04DD                          ; 7E 0C
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        shl     cx, 1                           ; D1 E1
        idiv    cx                              ; F7 F9
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
L_04DD:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        cdq                                     ; 99
        mov     cx, word ptr [0x440]            ; 8B 0E 40 04
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x282], ax            ; 39 06 82 02
        jle     L_04F6                          ; 7E 03
        mov     word ptr [0x282], ax            ; A3 82 02
L_04F6:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x536], ax            ; 39 06 36 05
        jle     L_0502                          ; 7E 03
        mov     word ptr [0x536], ax            ; A3 36 05
L_0502:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 0x12], ax        ; 39 46 EE
        jle     L_050F                          ; 7E 05
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        jmp     L_0512                          ; EB 03
L_050F:
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
L_0512:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jg      L_0520                          ; 7F 03
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
L_0520:
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [0x43c], ax            ; A3 3C 04
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A F9 06 00 00 [FIXUP]
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     word ptr [bp - 0x24], dx        ; 89 56 DC
        mov     si, word ptr [0x43c]            ; 8B 36 3C 04
        dec     si                              ; 4E
        mov     ax, word ptr [0x440]            ; A1 40 04
        imul    si                              ; F7 EE
        mov     cx, word ptr [0x486]            ; 8B 0E 86 04
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        imul    si                              ; F7 EE
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x484]            ; 03 06 84 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x18]             ; A1 18 00
        add     ax, word ptr [0x43c]            ; 03 06 3C 04
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x166]            ; 8B 0E 66 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, 0x34                        ; B8 34 00
        imul    dx                              ; F7 EA
        add     ax, word ptr [bp - 0x26]        ; 03 46 DA
        mov     dx, word ptr [bp - 0x24]        ; 8B 56 DC
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     word ptr [bp - 0x1a], 0         ; C7 46 E6 00 00
        jmp     L_0648                          ; E9 C7 00
L_0581:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x508]            ; 03 06 08 05
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0x164]            ; 03 06 64 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 75 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x482]                ; FF 36 82 04
        call    far USER.FRAMERECT              ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1f8]                ; FF 36 F8 01
        call    far USER.FILLRECT               ; 9A 86 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A 28 07 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x28e]            ; A1 8E 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 63 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 69 07 00 00 [FIXUP]
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        shl     ax, 1                           ; D1 E0
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        mov     ax, word ptr [0x440]            ; A1 40 04
        add     word ptr [bp - 8], ax           ; 01 46 F8
        sub     word ptr [bp - 0x18], 0x34      ; 83 6E E8 34
        dec     word ptr [bp - 4]               ; FF 4E FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_0645                          ; 7D 19
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 4]               ; F7 6E FC
        add     ax, word ptr [bp - 0x26]        ; 03 46 DA
        mov     dx, word ptr [bp - 0x24]        ; 8B 56 DC
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
L_0645:
        inc     word ptr [bp - 0x1a]            ; FF 46 E6
L_0648:
        mov     ax, word ptr [0x43c]            ; A1 3C 04
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jge     L_0653                          ; 7D 03
        jmp     L_0581                          ; E9 2E FF
L_0653:
        mov     si, word ptr [0x486]            ; 8B 36 86 04
        add     si, word ptr [0x1ba]            ; 03 36 BA 01
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x484]                ; FF 36 84 04
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        mov     ax, word ptr [0x484]            ; A1 84 04
        add     ax, word ptr [0x508]            ; 03 06 08 05
        push    ax                              ; 50
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A AC 06 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x296]                ; FF 36 96 02
        call    far USER.FILLRECT               ; 9A BD 06 00 00 [FIXUP]
        mov     si, word ptr [0x486]            ; 8B 36 86 04
        add     si, word ptr [0x1ba]            ; 03 36 BA 01
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x484]                ; FF 36 84 04
        lea     ax, [si + 3]                    ; 8D 44 03
        push    ax                              ; 50
        mov     ax, word ptr [0x484]            ; A1 84 04
        add     ax, word ptr [0x508]            ; 03 06 08 05
        push    ax                              ; 50
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A DF 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x296]                ; FF 36 96 02
        call    far USER.FILLRECT               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 87 07 00 00 [FIXUP]
L_06CA:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06CF -- offset 0x06CF -- 92 instr
; Funcion compleja: 92 instrucciones, 11 llamadas, 3 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; callers: sub_01AA
; calls (inter): GDI.SETBKMODE, GDI.SETTEXTCOLOR, GDI.TEXTOUT, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN (+5 mas)
;----------------------------------------------------------------------
L_06CF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [0x28a]                ; F7 2E 8A 02
        add     word ptr [bp - 0x12], ax        ; 01 46 EE
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far USER.GETSYSCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.SETTEXTCOLOR            ; 9A C2 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_077A                          ; EB 42
L_0738:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [0x28a]            ; 03 06 8A 02
        cmp     ax, word ptr [0x166]            ; 3B 06 66 01
        jge     L_0782                          ; 7D 3D
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x28c]                ; FF 36 8C 02
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     dx, word ptr [bp - 0x10]        ; 8B 56 F0
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     word ptr [bp - 2], ax           ; 01 46 FE
        add     word ptr [bp - 0x12], 0x34      ; 83 46 EE 34
        inc     word ptr [bp - 0xc]             ; FF 46 F4
L_077A:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0738                          ; 7C B6
L_0782:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        call    far USER.GETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x286]            ; 3B 06 86 02
        jne     L_07D1                          ; 75 3B
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 6C 08 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A EC 02 00 00 [FIXUP]
L_07D1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_07D5 -- offset 0x07D5 -- 124 instr
; Funcion compleja: 124 instrucciones, 9 llamadas, 3 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; callers: sub_1BA8, sub_24B4
; calls (inter): GDI.SETBKMODE, GDI.TEXTOUT, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, KERNEL.LSTRLEN, USER.FILLRECT (+3 mas)
;----------------------------------------------------------------------
L_07D5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 2B 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     word ptr [bp - 0x1a], dx        ; 89 56 E6
        mov     si, word ptr [0x282]            ; 8B 36 82 02
        dec     si                              ; 4E
        mov     ax, word ptr [0x440]            ; A1 40 04
        imul    si                              ; F7 EE
        mov     cx, word ptr [0x486]            ; 8B 0E 86 04
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        imul    si                              ; F7 EE
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x484]            ; 03 06 84 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x18]             ; A1 18 00
        add     ax, word ptr [0x282]            ; 03 06 82 02
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x166]            ; 8B 0E 66 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, 0x34                        ; B8 34 00
        imul    dx                              ; F7 EA
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A AE 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        or      ax, ax                          ; 0B C0
        jne     L_0842                          ; 75 03
        jmp     L_090E                          ; E9 CC 00
L_0842:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_08F7                          ; E9 AD 00
L_084A:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x508]            ; 03 06 08 05
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 9D 05 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1f8]                ; FF 36 F8 01
        call    far USER.FILLRECT               ; 9A 36 04 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.SETBKMODE               ; 9A DA 05 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0x28e]            ; A1 8E 02
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp - 0x10]        ; 03 46 F0
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.LSTRLEN              ; 9A 07 06 00 00 [FIXUP]
        push    ax                              ; 50
        call    far GDI.TEXTOUT                 ; 9A 0D 06 00 00 [FIXUP]
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        shl     ax, 1                           ; D1 E0
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        mov     ax, word ptr [0x440]            ; A1 40 04
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        sub     word ptr [bp - 0x14], 0x34      ; 83 6E EC 34
        dec     word ptr [bp - 6]               ; FF 4E FA
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jge     L_08F4                          ; 7D 19
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [bp - 0x1c]        ; 03 46 E4
        mov     dx, word ptr [bp - 0x1a]        ; 8B 56 E6
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
L_08F4:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
L_08F7:
        mov     ax, word ptr [0x282]            ; A1 82 02
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_0902                          ; 7D 03
        jmp     L_084A                          ; E9 48 FF
L_0902:
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far USER.RELEASEDC              ; 9A F8 02 00 00 [FIXUP]
L_090E:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A C6 06 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_091C -- offset 0x091C -- 44 instr
; Funcion mediana (44 instr, 1 calls).
; tags: calls_user, medium
; callers: sub_01AA
; calls (inter): USER.MOVEWINDOW
;----------------------------------------------------------------------
L_091C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x198], ax            ; A3 98 01
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x53e], ax            ; A3 3E 05
        sub     ax, word ptr [0x164]            ; 2B 06 64 01
        sub     ax, 8                           ; 2D 08 00
        mov     word ptr [0x486], ax            ; A3 86 04
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [0x486], si            ; 39 36 86 04
        jl      L_094C                          ; 7C 03
        mov     ax, word ptr [0x486]            ; A1 86 04
L_094C:
        mov     word ptr [0x486], ax            ; A3 86 04
        mov     word ptr [0x484], 8             ; C7 06 84 04 08 00
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x29a], 0             ; 83 3E 9A 02 00
        je      L_098A                          ; 74 24
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
L_098A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_098F -- offset 0x098F -- 15 instr
; Wrapper que delega en KERNEL.CATCH.
; tags: calls_kernel, wrapper
; callers: sub_01AA, sub_161C
; calls (inter): KERNEL.CATCH
;----------------------------------------------------------------------
L_098F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x162                       ; 81 EC 62 01
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.CATCH                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        or      ax, ax                          ; 0B C0
        je      L_09CA                          ; 74 20
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_09B2                          ; 74 03
        jmp     L_130F                          ; E9 5D 09
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_09B2 -- offset 0x09B2 -- 844 instr
; Dispatcher: tabla de decisiones cmp+jcc (844 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; calls (intra): sub_1315, sub_1955, sub_19B2, sub_1A4E, sub_1A70, sub_1E41 (+7 mas)
; calls (inter): GDI.DELETEOBJECT, KERNEL.ANSIUPPER, KERNEL.GLOBALLOCK, KERNEL.GLOBALREALLOC, KERNEL.GLOBALUNLOCK, KERNEL.LOCALFREE (+13 mas)
;----------------------------------------------------------------------
L_09B2:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 26 0C 00 00 [FIXUP]
        jmp     L_130F                          ; E9 45 09
L_09CA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x73                        ; 3D 73 00
        jne     L_09D5                          ; 75 03
        jmp     L_0EB5                          ; E9 E0 04
L_09D5:
        jle     L_09DA                          ; 7E 03
        jmp     L_12B1                          ; E9 D7 08
L_09DA:
        sub     ax, 0x65                        ; 2D 65 00
        cmp     ax, 0xd                         ; 3D 0D 00
        jbe     L_09E5                          ; 76 03
        jmp     L_130F                          ; E9 2A 09
L_09E5:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1295]       ; 2E FF A7 95 12
L_09ED:
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    L_1315                          ; E8 21 09
        jmp     L_0B2E                          ; E9 37 01
        cmp     word ptr [0x1e], 0              ; 83 3E 1E 00 00
        je      L_0A01                          ; 74 03
        jmp     L_130F                          ; E9 0E 09
L_0A01:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_29B7                          ; E8 B0 1F
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0A11                          ; 75 03
        jmp     L_130F                          ; E9 FE 08
L_0A11:
        push    word ptr [0x3e0]                ; FF 36 E0 03
        call    far USER.SETCURSOR              ; 9A B9 0A 00 00 [FIXUP]
        mov     byte ptr [0x35a], 0             ; C6 06 5A 03 00
        mov     byte ptr [0x332], 0             ; C6 06 32 03 00
        call    L_1A70                          ; E8 49 10
        mov     ax, 0x488                       ; B8 88 04
        push    ax                              ; 50
        call    far _entry_10                   ; 9A 9D 0C 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x16e]                ; FF 36 6E 01
        call    far _entry_15                   ; 9A A9 0C 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, 0x34                        ; B8 34 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x166], 1             ; C7 06 66 01 01 00
        mov     word ptr [0x18], 0              ; C7 06 18 00 00 00
        mov     word ptr [0x28a], 0             ; C7 06 8A 02 00 00
        call    L_1E41                          ; E8 DA 13
        call    L_1A4E                          ; E8 E4 0F
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A E1 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        mov     word ptr [bp - 0x160], dx       ; 89 96 A0 FE
        les     bx, ptr [bp - 0x162]            ; C4 9E 9E FE
        mov     di, bx                          ; 8B FB
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 13 09 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_0AA4                          ; 75 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 78 17
        add     sp, 2                           ; 83 C4 02
L_0AA4:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x1b8]                ; FF 36 B8 01
        call    far USER.SETCURSOR              ; 9A 49 0C 00 00 [FIXUP]
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        je      L_0ACE                          ; 74 03
        jmp     L_130F                          ; E9 41 08
L_0ACE:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A DB 0A 00 00 [FIXUP]
L_0AD6:
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.SETFOCUS               ; 9A 8F 02 00 00 [FIXUP]
        jmp     L_130F                          ; E9 2D 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_29B7                          ; E8 CF 1E
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0AF2                          ; 75 03
        jmp     L_130F                          ; E9 1D 08
L_0AF2:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1315                          ; E8 1C 08
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        je      L_0B27                          ; 74 23
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_28F9                          ; E8 EF 1D
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0B1B                          ; 75 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 28 18
L_0B18:
        add     sp, 2                           ; 83 C4 02
L_0B1B:
        push    word ptr [bp - 0x12a]           ; FF B6 D6 FE
        call    far KERNEL.LOCALFREE            ; 9A B3 0B 00 00 [FIXUP]
        jmp     L_130F                          ; E9 E8 07
L_0B27:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 12 18
L_0B2E:
        add     sp, 2                           ; 83 C4 02
        jmp     L_130F                          ; E9 DB 07
        call    L_2835                          ; E8 FE 1C
        jmp     L_130F                          ; E9 D5 07
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        jmp     L_0B4C                          ; EB 0C
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_0B53                          ; 75 0B
        push    word ptr [0x166]                ; FF 36 66 01
L_0B4C:
        call    far _entry_18                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B2E                          ; EB DB
L_0B53:
        call    far _entry_17                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_130F                          ; E9 B4 07
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0B6B                          ; 74 09
        mov     word ptr [bp - 0x128], 0x35a    ; C7 86 D8 FE 5A 03
        jmp     L_0C44                          ; E9 D9 00
L_0B6B:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_1315                          ; E8 A3 07
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_0B80                          ; 75 03
        jmp     L_130F                          ; E9 8F 07
L_0B80:
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        mov     word ptr [bp - 0x128], ax       ; 89 86 D8 FE
        cmp     word ptr [bp - 0x126], 0        ; 83 BE DA FE 00
        je      L_0BB9                          ; 74 17
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 AA 0D
        add     sp, 2                           ; 83 C4 02
L_0BAE:
        push    word ptr [bp - 0x12a]           ; FF B6 D6 FE
        call    far KERNEL.LOCALFREE            ; 9A 40 0C 00 00 [FIXUP]
        jmp     L_0B6B                          ; EB B2
L_0BB9:
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12c], ax       ; 89 86 D4 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_0C3B                          ; 7E 6B
        push    ax                              ; 50
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 6E 00 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B2                          ; E8 A3 0D
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50a                       ; B8 0A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x124                       ; B8 24 01
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0C32                          ; 75 03
        jmp     L_0BAE                          ; E9 7C FF
L_0C32:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
L_0C3B:
        push    word ptr [bp - 0x12a]           ; FF B6 D6 FE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
L_0C44:
        push    word ptr [0x3e0]                ; FF 36 E0 03
        call    far USER.SETCURSOR              ; 9A DF 0C 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_0C6F                          ; 75 1A
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D6 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x124], ax       ; 89 86 DC FE
        mov     word ptr [bp - 0x122], dx       ; 89 96 DE FE
L_0C6F:
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_0C85                          ; 74 0E
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 9B 15
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0CDA                          ; 74 55
L_0C85:
        push    word ptr [bp - 0x128]           ; FF B6 D8 FE
        call    far _entry_16                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_0CB0                          ; 74 1B
        call    L_1A70                          ; E8 D8 0D
        mov     ax, 0x488                       ; B8 88 04
        push    ax                              ; 50
        call    far _entry_10                   ; 9A D8 00 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x16e]                ; FF 36 6E 01
        call    far _entry_15                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
L_0CB0:
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_0CDA                          ; 75 22
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 81 16
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x122]           ; FF B6 DE FE
        push    word ptr [bp - 0x124]           ; FF B6 DC FE
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_0CDA:
        push    word ptr [0x1b8]                ; FF 36 B8 01
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_130F                          ; E9 29 06
L_0CE6:
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0CF1                          ; 75 03
        jmp     L_130F                          ; E9 1E 06
L_0CF1:
        cmp     word ptr [bp + 6], 0x8e         ; 81 7E 06 8E 00
        jne     L_0D09                          ; 75 11
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 1A 15
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0D13                          ; 75 0D
        jmp     L_130F                          ; E9 06 06
L_0D09:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 30 16
        add     sp, 2                           ; 83 C4 02
L_0D13:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x10], ax             ; A3 10 00
        push    word ptr [bp + 4]               ; FF 76 04
        cmp     ax, 0x8e                        ; 3D 8E 00
        jne     L_0D25                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0D28                          ; EB 03
L_0D25:
        mov     ax, 1                           ; B8 01 00
L_0D28:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 9D 00 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        cmp     word ptr [bp + 6], 0x8e         ; 81 7E 06 8E 00
        jne     L_0D42                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0D45                          ; EB 03
L_0D42:
        mov     ax, 1                           ; B8 01 00
L_0D45:
        push    ax                              ; 50
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        cmp     word ptr [bp + 6], 0x8d         ; 81 7E 06 8D 00
        jne     L_0D5F                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D61                          ; EB 02
L_0D5F:
        sub     ax, ax                          ; 2B C0
L_0D61:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 0D 0E 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x8e         ; 81 7E 06 8E 00
        jne     L_0DC9                          ; 75 57
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 86 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        or      ax, ax                          ; 0B C0
        jne     L_0D9A                          ; 75 06
        mov     word ptr [bp - 0x126], 1        ; C7 86 DA FE 01 00
L_0D9A:
        mov     si, word ptr [0x166]            ; 8B 36 66 01
        sub     si, word ptr [bp - 0x126]       ; 2B B6 DA FE
        mov     di, word ptr [0x18]             ; 8B 3E 18 00
        mov     ax, word ptr [bp - 0x126]       ; 8B 86 DA FE
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     di, ax                          ; 2B F8
        cmp     di, si                          ; 3B FE
        jge     L_0DBA                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_0DBC                          ; EB 02
L_0DBA:
        mov     ax, si                          ; 8B C6
L_0DBC:
        mov     word ptr [0x28a], ax            ; A3 8A 02
        or      ax, ax                          ; 0B C0
        jge     L_0DC9                          ; 7D 06
        mov     word ptr [0x28a], 0             ; C7 06 8A 02 00 00
L_0DC9:
        call    L_1E41                          ; E8 75 10
        cmp     word ptr [bp + 6], 0x8e         ; 81 7E 06 8E 00
        jne     L_0DD8                          ; 75 05
        mov     ax, word ptr [0x286]            ; A1 86 02
        jmp     L_0DDB                          ; EB 03
L_0DD8:
        mov     ax, word ptr [0x29a]            ; A1 9A 02
L_0DDB:
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A E9 0E 00 00 [FIXUP]
L_0DE1:
        push    word ptr [bp + 4]               ; FF 76 04
L_0DE4:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 7C 0E 00 00 [FIXUP]
        jmp     L_130F                          ; E9 1B 05
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        je      L_0DFF                          ; 74 03
        jmp     L_130F                          ; E9 10 05
L_0DFF:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x417                       ; B8 17 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 63 0C 00 00 [FIXUP]
        jmp     L_130F                          ; E9 FB 04
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_0E30                          ; 75 14
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 1D 15
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 EC 13
        add     sp, 2                           ; 83 C4 02
L_0E30:
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    L_1315                          ; E8 DE 04
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_0E45                          ; 75 03
        jmp     L_130F                          ; E9 CA 04
L_0E45:
        mov     ax, 0x411                       ; B8 11 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 62 0F 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_20C3                          ; E8 67 12
        add     sp, 2                           ; 83 C4 02
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2115                          ; E8 B1 12
        mov     word ptr [0x18], ax             ; A3 18 00
        call    L_1E41                          ; E8 D7 0F
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
L_0E70:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A B0 0A 00 00 [FIXUP]
        jmp     L_0B1B                          ; E9 98 FC
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0E99                          ; 74 0F
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A 75 10 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
L_0E99:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 A0 14
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x29a]                ; FF 36 9A 02
        jmp     L_0DE4                          ; E9 3A FF
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_20                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B2E                          ; E9 79 FC
L_0EB5:
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_130F                          ; E9 52 04
        mov     ax, word ptr [0x14]             ; A1 14 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_0EC8                          ; 75 03
        jmp     L_130F                          ; E9 47 04
L_0EC8:
        cmp     word ptr [bp + 6], 0x75         ; 83 7E 06 75
        jne     L_0EDC                          ; 75 0E
        push    word ptr [0x1b8]                ; FF 36 B8 01
        call    far USER.SETCURSOR              ; 9A E1 0E 00 00 [FIXUP]
        mov     word ptr [0x162], ax            ; A3 62 01
        jmp     L_0EE5                          ; EB 09
L_0EDC:
        push    word ptr [0x162]                ; FF 36 62 01
        call    far USER.SETCURSOR              ; 9A 16 0A 00 00 [FIXUP]
L_0EE5:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A EE 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x14], ax             ; A3 14 00
        jmp     L_0AD6                          ; E9 E0 FB
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    L_1315                          ; E8 18 04
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_0F0B                          ; 75 03
        jmp     L_130F                          ; E9 04 04
L_0F0B:
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [0x166]                ; F7 2E 66 01
        add     ax, 0x34                        ; 05 34 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 4E 0A 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F3A                          ; 75 11
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B1B                          ; E9 E1 FB
L_0F3A:
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_0F53                          ; 74 11
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 D0 12
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_0F53                          ; 75 03
        jmp     L_0B1B                          ; E9 C8 FB
L_0F53:
        call    L_1A4E                          ; E8 F8 0A
        mov     ax, 0x411                       ; B8 11 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [0x410], 3             ; 80 0E 10 04 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2115                          ; E8 A5 11
        mov     word ptr [0x18], ax             ; A3 18 00
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_0FD2                          ; 75 57
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A C9 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        or      ax, ax                          ; 0B C0
        jne     L_0FA3                          ; 75 06
        mov     word ptr [bp - 0x126], 1        ; C7 86 DA FE 01 00
L_0FA3:
        mov     si, word ptr [0x166]            ; 8B 36 66 01
        sub     si, word ptr [bp - 0x126]       ; 2B B6 DA FE
        mov     di, word ptr [0x18]             ; 8B 3E 18 00
        mov     ax, word ptr [bp - 0x126]       ; 8B 86 DA FE
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     di, ax                          ; 2B F8
        cmp     di, si                          ; 3B FE
        jge     L_0FC3                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_0FC5                          ; EB 02
L_0FC3:
        mov     ax, si                          ; 8B C6
L_0FC5:
        mov     word ptr [0x28a], ax            ; A3 8A 02
        or      ax, ax                          ; 0B C0
        jge     L_0FD2                          ; 7D 06
        mov     word ptr [0x28a], 0             ; C7 06 8A 02 00 00
L_0FD2:
        call    L_1E41                          ; E8 6C 0E
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_0FEA                          ; 75 0D
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 35 12
        add     sp, 2                           ; 83 C4 02
        jmp     L_0E70                          ; E9 86 FE
L_0FEA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A F7 0F 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.SETFOCUS               ; 9A D2 0A 00 00 [FIXUP]
        jmp     L_0E70                          ; E9 72 FE
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_101A                          ; 75 14
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 33 13
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 02 12
        add     sp, 2                           ; 83 C4 02
L_101A:
        push    word ptr [0x16e]                ; FF 36 6E 01
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A E9 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x411                       ; B8 11 04
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x15e]                ; 8D 86 A2 FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B2                          ; E8 6C 09
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50a                       ; B8 0A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x121                       ; B8 21 01
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A C3 09 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        je      L_1069                          ; 74 03
        jmp     L_130F                          ; E9 A6 02
L_1069:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_107F                          ; 74 0F
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A 51 04 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
L_107F:
        cmp     word ptr [0x166], 1             ; 83 3E 66 01 01
        jle     L_10DA                          ; 7E 54
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_20C3                          ; E8 36 10
        add     sp, 2                           ; 83 C4 02
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x18], ax             ; 39 06 18 00
        jne     L_10AC                          ; 75 13
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_10A5                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_10A9                          ; EB 04
L_10A5:
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
L_10A9:
        mov     word ptr [0x18], ax             ; A3 18 00
L_10AC:
        call    L_1E41                          ; E8 92 0D
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_10C1                          ; 75 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 82 12
        add     sp, 2                           ; 83 C4 02
L_10C1:
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [0x166]                ; F7 2E 66 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 36 11 00 00 [FIXUP]
        jmp     L_1117                          ; EB 3D
L_10DA:
        call    L_1A4E                          ; E8 71 09
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 6F 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        mov     word ptr [bp - 0x160], dx       ; 89 96 A0 FE
        les     bx, ptr [bp - 0x162]            ; C4 9E 9E FE
        mov     di, bx                          ; 8B FB
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 8E 0A 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1117                          ; 75 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 05 11
        add     sp, 2                           ; 83 C4 02
L_1117:
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        jmp     L_0DE1                          ; E9 C1 FC
L_1120:
        push    word ptr [0x1be]                ; FF 36 BE 01
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [0x166]                ; F7 2E 66 01
        add     ax, 0x34                        ; 05 34 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GLOBALREALLOC        ; 9A 21 0F 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_114F                          ; 75 11
        mov     ax, 0x442                       ; B8 42 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far KERNEL.THROW                ; 9A 33 0F 00 00 [FIXUP]
        jmp     L_130F                          ; E9 C0 01
L_114F:
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_1168                          ; 74 11
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 BB 10
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_1168                          ; 75 03
        jmp     L_130F                          ; E9 A7 01
L_1168:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 D1 11
        add     sp, 2                           ; 83 C4 02
        or      byte ptr [0x410], 3             ; 80 0E 10 04 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2115                          ; E8 99 0F
        mov     word ptr [0x18], ax             ; A3 18 00
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_11E5                          ; 75 5E
        push    ax                              ; 50
        call    L_2219                          ; E8 8E 10
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x88]                 ; 8D 86 78 FF
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 7D 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x82]        ; 8B 86 7E FF
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x126], ax       ; 89 86 DA FE
        or      ax, ax                          ; 0B C0
        jne     L_11B6                          ; 75 06
        mov     word ptr [bp - 0x126], 1        ; C7 86 DA FE 01 00
L_11B6:
        mov     si, word ptr [0x166]            ; 8B 36 66 01
        sub     si, word ptr [bp - 0x126]       ; 2B B6 DA FE
        mov     di, word ptr [0x18]             ; 8B 3E 18 00
        mov     ax, word ptr [bp - 0x126]       ; 8B 86 DA FE
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        sub     di, ax                          ; 2B F8
        cmp     di, si                          ; 3B FE
        jge     L_11D6                          ; 7D 04
        mov     ax, di                          ; 8B C7
        jmp     L_11D8                          ; EB 02
L_11D6:
        mov     ax, si                          ; 8B C6
L_11D8:
        mov     word ptr [0x28a], ax            ; A3 8A 02
        or      ax, ax                          ; 0B C0
        jge     L_11E5                          ; 7D 06
        mov     word ptr [0x28a], 0             ; C7 06 8A 02 00 00
L_11E5:
        call    L_1E41                          ; E8 59 0C
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A ED 0D 00 00 [FIXUP]
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
        jmp     L_130F                          ; E9 0E 01
L_1201:
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_121D                          ; 75 14
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 30 11
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 FF 0F
        add     sp, 2                           ; 83 C4 02
L_121D:
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        call    L_1315                          ; E8 F1 00
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_1232                          ; 75 03
        jmp     L_130F                          ; E9 DD 00
L_1232:
        push    ax                              ; 50
        call    far _entry_23                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B18                          ; E9 DD F8
L_123B:
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    L_1315                          ; E8 D3 00
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_1250                          ; 75 03
        jmp     L_130F                          ; E9 BF 00
L_1250:
        push    ax                              ; 50
        call    far _entry_22                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B18                          ; E9 BF F8
L_1259:
        cmp     byte ptr [0x332], 0             ; 80 3E 32 03 00
        je      L_1268                          ; 74 08
        call    far _entry_21                   ; 9A 8E 12 00 00 [FIXUP]
        jmp     L_130F                          ; E9 A7 00
L_1268:
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    L_1315                          ; E8 A6 00
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x12a], ax       ; 89 86 D6 FE
        or      ax, ax                          ; 0B C0
        jne     L_127D                          ; 75 03
        jmp     L_130F                          ; E9 92 00
L_127D:
        mov     ax, 0x332                       ; B8 32 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12a]       ; 8B 86 D6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 51 0E 00 00 [FIXUP]
        call    far _entry_21                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0B1B                          ; E9 86 F8
        test    word ptr [bx + di], 0xae2       ; F7 09 E2 0A
        pop     bx                              ; 5B
        or      bp, word ptr [bp + di + 0xb]    ; 0B 6B 0B
        cmp     cl, byte ptr [bp + di]          ; 3A 0B
        inc     ax                              ; 40
        or      si, word ptr [si]               ; 0B 34
        or      cx, word ptr [bx]               ; 0B 0F
        adc     cx, word ptr [bx]               ; 13 0F
        adc     cx, word ptr [bx]               ; 13 0F
        adc     dx, word ptr [si]               ; 13 14
        push    cs                              ; 0E
        or      word ptr [0xeaa], 0xffaa        ; 83 0E AA 0E AA
        push    cs                              ; 0E
L_12B1:
        cmp     ax, 0x7b                        ; 3D 7B 00
        jne     L_12B9                          ; 75 03
        jmp     L_1120                          ; E9 67 FE
L_12B9:
        jg      L_12D9                          ; 7F 1E
        sub     ax, 0x74                        ; 2D 74 00
        cmp     ax, 6                           ; 3D 06 00
        ja      L_130F                          ; 77 4C
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x12cb]       ; 2E FF A7 CB 12
        mov     bp, 0xbd0e                      ; BD 0E BD
        push    cs                              ; 0E
        hlt                                     ; F4
        or      ax, 0x130f                      ; 0D 0F 13
        db      00fh                            ; 0F
        adc     si, si                          ; 13 F6
        push    cs                              ; 0E
        dec     byte ptr [bx]                   ; FE 0F
L_12D9:
        cmp     ax, 0x84                        ; 3D 84 00
        je      L_1268                          ; 74 8A
        jg      L_12F2                          ; 7F 12
        cmp     ax, 0x7c                        ; 3D 7C 00
        jne     L_12E8                          ; 75 03
        jmp     L_1201                          ; E9 19 FF
L_12E8:
        cmp     ax, 0x83                        ; 3D 83 00
        jne     L_12F0                          ; 75 03
        jmp     L_123B                          ; E9 4B FF
L_12F0:
        jmp     L_130F                          ; EB 1D
L_12F2:
        cmp     ax, 0x85                        ; 3D 85 00
        jne     L_12FA                          ; 75 03
        jmp     L_1259                          ; E9 5F FF
L_12FA:
        cmp     ax, 0x8d                        ; 3D 8D 00
        jl      L_130F                          ; 7C 10
        cmp     ax, 0x8e                        ; 3D 8E 00
        jg      L_1307                          ; 7F 03
        jmp     L_0CE6                          ; E9 DF F9
L_1307:
        cmp     ax, 0x22b7                      ; 3D B7 22
        jne     L_130F                          ; 75 03
        jmp     L_09ED                          ; E9 DE F6
L_130F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1315 -- offset 0x1315 -- 44 instr
; Dispatcher: tabla de decisiones cmp+jcc (44 instr).
; tags: calls_user, dispatcher
; callers: sub_09B2, sub_2835, sub_29B7
; calls (inter): USER.DIALOGBOX
;----------------------------------------------------------------------
L_1315:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x294], ax            ; A3 94 02
        cmp     ax, 1                           ; 3D 01 00
        je      L_1343                          ; 74 1D
        cmp     ax, 2                           ; 3D 02 00
        je      L_136B                          ; 74 40
        cmp     ax, 6                           ; 3D 06 00
        je      L_1343                          ; 74 13
        cmp     ax, 9                           ; 3D 09 00
        je      L_1374                          ; 74 3F
        cmp     ax, 0xb                         ; 3D 0B 00
        je      L_137D                          ; 74 43
        mov     ax, word ptr [0x290]            ; A1 90 02
        mov     dx, word ptr [0x292]            ; 8B 16 92 02
        jmp     L_134A                          ; EB 07
L_1343:
        mov     ax, word ptr [0x540]            ; A1 40 05
        mov     dx, word ptr [0x542]            ; 8B 16 42 05
L_134A:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1386                          ; EB 1B
L_136B:
        mov     ax, word ptr [0x2a0]            ; A1 A0 02
        mov     dx, word ptr [0x2a2]            ; 8B 16 A2 02
        jmp     L_134A                          ; EB D6
L_1374:
        mov     ax, word ptr [0x1f2]            ; A1 F2 01
        mov     dx, word ptr [0x1f4]            ; 8B 16 F4 01
        jmp     L_134A                          ; EB CD
L_137D:
        mov     ax, word ptr [0x29c]            ; A1 9C 02
        mov     dx, word ptr [0x29e]            ; 8B 16 9E 02
        jmp     L_134A                          ; EB C4
L_1386:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_138A -- offset 0x138A -- 66 instr
; Dispatcher: tabla de decisiones cmp+jcc (66 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CHECKMENUITEM, USER.GETMENU, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_138A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0x8d                        ; B8 8D 00
        push    ax                              ; 50
        cmp     word ptr [0x10], ax             ; 39 06 10 00
        jne     L_13AC                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13AE                          ; EB 02
L_13AC:
        sub     ax, ax                          ; 2B C0
L_13AE:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A CA 13 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x8e                        ; B8 8E 00
        push    ax                              ; 50
        cmp     word ptr [0x10], ax             ; 39 06 10 00
        jne     L_13C6                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13C8                          ; EB 02
L_13C6:
        sub     ax, ax                          ; 2B C0
L_13C8:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A E4 13 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x74                        ; B8 74 00
        push    ax                              ; 50
        cmp     word ptr [0x14], ax             ; 39 06 14 00
        jne     L_13E0                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13E2                          ; EB 02
L_13E0:
        sub     ax, ax                          ; 2B C0
L_13E2:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A FE 13 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x75                        ; B8 75 00
        push    ax                              ; 50
        cmp     word ptr [0x14], ax             ; 39 06 14 00
        jne     L_13FA                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_13FC                          ; EB 02
L_13FA:
        sub     ax, ax                          ; 2B C0
L_13FC:
        push    ax                              ; 50
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        je      L_140D                          ; 74 03
        jmp     L_155C                          ; E9 4F 01
L_140D:
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_1435                          ; 75 21
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x416                       ; B8 16 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 13 15 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_1435                          ; 74 0B
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x76                        ; B8 76 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_143F                          ; EB 0A
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1435 -- offset 0x1435 -- 107 instr
; Dispatcher: tabla de decisiones cmp+jcc (107 instr).
; tags: calls_user, dispatcher
; calls (inter): USER.CLOSECLIPBOARD, USER.ENABLEMENUITEM, USER.ENUMCLIPBOARDFORMATS, USER.OPENCLIPBOARD, USER.SENDMESSAGE
;----------------------------------------------------------------------
L_1435:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x76                        ; B8 76 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_143F:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 94 14 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1489                          ; 74 32
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
L_145C:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far USER.ENUMCLIPBOARDFORMATS   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_1484                          ; 74 19
        cmp     word ptr [0x14], 0x75           ; 83 3E 14 00 75
        jne     L_1477                          ; 75 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_147A                          ; EB 03
L_1477:
        mov     ax, 1                           ; B8 01 00
L_147A:
        cmp     ax, word ptr [bp - 6]           ; 3B 46 FA
        jne     L_145C                          ; 75 DD
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
L_1484:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
L_1489:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x73                        ; B8 73 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.ENABLEMENUITEM         ; 9A A3 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x74                        ; B8 74 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A B2 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x75                        ; B8 75 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A C1 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A D0 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x84                        ; B8 84 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A DF 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x85                        ; B8 85 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FA 14 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x69                        ; B8 69 00
        push    ax                              ; 50
        cmp     word ptr [0x70], 0              ; 83 3E 70 00 00
        je      L_14F5                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_14F8                          ; EB 03
L_14F5:
        mov     ax, 1                           ; B8 01 00
L_14F8:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 2D 15 00 00 [FIXUP]
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_153A                          ; 75 35
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 67 0D 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        cmp     dx, ax                          ; 3B D0
        jne     L_1541                          ; 75 20
L_1521:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x71                        ; B8 71 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 4C 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x72                        ; B8 72 00
        jmp     L_15F2                          ; E9 B8 00
L_153A:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_1521                          ; 74 E0
L_1541:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x71                        ; B8 71 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 68 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x72                        ; B8 72 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        jmp     L_15F6                          ; E9 9A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_155C -- offset 0x155C -- 63 instr
; Funcion mediana (63 instr, 1 calls).
; tags: calls_user, medium
; calls (inter): USER.ENABLEMENUITEM
;----------------------------------------------------------------------
L_155C:
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x76                        ; B8 76 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 78 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x74                        ; B8 74 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 88 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x75                        ; B8 75 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 98 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x70                        ; B8 70 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A A8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x71                        ; B8 71 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A B8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x72                        ; B8 72 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A C8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x73                        ; B8 73 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A D8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x84                        ; B8 84 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A E8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x85                        ; B8 85 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A F8 15 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x69                        ; B8 69 00
L_15F2:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_15F6:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1600 -- offset 0x1600 -- 10 instr
; Wrapper que delega en USER.SETWINDOWTEXT.
; tags: calls_user, wrapper
; callers: sub_1A4E, sub_2340
; calls (inter): USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_1600:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x16], 1              ; C7 06 16 00 01 00
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_161C -- offset 0x161C -- 205 instr
; Dispatcher: tabla de decisiones cmp+jcc (205 instr).
; tags: calls_user, dispatcher
; calls (intra): sub_098F, sub_1864, sub_1BA8, sub_2625
; calls (inter): USER.GETDC, USER.GETKEYSTATE, USER.INVERTRECT, USER.PEEKMESSAGE, USER.RELEASECAPTURE, USER.RELEASEDC (+2 mas)
;----------------------------------------------------------------------
L_161C:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        je      L_162D                          ; 74 03
        jmp     L_16CD                          ; E9 A0 00
L_162D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1864                          ; E8 2E 02
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_1644                          ; 7F 03
        jmp     L_17BB                          ; E9 77 01
L_1644:
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        je      L_1671                          ; 74 25
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 4E 05
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp - 0x20]            ; FF 76 E0
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 3D 05
        add     sp, 6                           ; 83 C4 06
        jmp     L_17BB                          ; E9 4A 01
L_1671:
        cmp     word ptr [bp + 6], 0x203        ; 81 7E 06 03 02
        je      L_167B                          ; 74 03
        jmp     L_17BB                          ; E9 40 01
L_167B:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_16B8                          ; EB 32
L_1686:
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ax                              ; 50
        mov     ax, 0x209                       ; B8 09 02
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A B4 16 00 00 [FIXUP]
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        mov     ax, 0x107                       ; B8 07 01
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
L_16B8:
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_1686                          ; 7C C1
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_17AE                          ; E9 E1 00
L_16CD:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        add     ax, word ptr [0x28a]            ; 03 06 8A 02
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     word ptr [bp + 6], 0x201        ; 81 7E 06 01 02
        je      L_16F0                          ; 74 0B
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jne     L_16F0                          ; 75 03
        jmp     L_178C                          ; E9 9C 00
L_16F0:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jl      L_16FB                          ; 7C 03
        jmp     L_17BB                          ; E9 C0 00
L_16FB:
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A 34 08 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A C0 07 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A CD 07 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        mov     word ptr [0x18], ax             ; A3 18 00
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 0A 18 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A 17 18 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far USER.RELEASEDC              ; 9A 23 18 00 00 [FIXUP]
        jmp     L_17BB                          ; EB 2F
L_178C:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jge     L_17BB                          ; 7D 27
L_1794:
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x202                       ; B8 02 02
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.PEEKMESSAGE            ; 9A 9B 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1794                          ; 74 E6
L_17AE:
        mov     ax, 0x6f                        ; B8 6F 00
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_098F                          ; E8 D7 F1
        add     sp, 4                           ; 83 C4 04
L_17BB:
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
        sub     sp, 0xe                         ; 83 EC 0E
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1839                          ; 75 65
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A 0D 17 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A C8 18 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A 3D 17 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.RELEASEDC              ; 9A 0A 09 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x18], ax             ; A3 18 00
        push    ax                              ; 50
        call    L_2625                          ; E8 F4 0D
        add     sp, 2                           ; 83 C4 02
        mov     ax, 1                           ; B8 01 00
        jmp     L_185B                          ; EB 22
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1839 -- offset 0x1839 -- 18 instr
; Funcion sin clasificar definitiva (18 instr).
; tags: far, small
; calls (intra): sub_1BA8
;----------------------------------------------------------------------
L_1839:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 61 03
        add     sp, 6                           ; 83 C4 06
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 50 03
        add     sp, 6                           ; 83 C4 06
L_185B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1864 -- offset 0x1864 -- 100 instr
; Funcion compleja: 100 instrucciones, 2 llamadas, 4 branches.
; tags: calls_user, complex
; callers: sub_161C
; calls (inter): USER.PTINRECT, USER.SETRECT
;----------------------------------------------------------------------
L_1864:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     si, word ptr [0x43c]            ; 8B 36 3C 04
        dec     si                              ; 4E
        mov     ax, word ptr [0x440]            ; A1 40 04
        imul    si                              ; F7 EE
        mov     cx, word ptr [0x486]            ; 8B 0E 86 04
        sub     cx, ax                          ; 2B C8
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        imul    si                              ; F7 EE
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x484]            ; 03 06 84 04
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x18]             ; A1 18 00
        add     ax, word ptr [0x43c]            ; 03 06 3C 04
        dec     ax                              ; 48
        cdq                                     ; 99
        mov     cx, word ptr [0x166]            ; 8B 0E 66 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        jmp     L_1942                          ; E9 9C 00
L_18A6:
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x508]            ; 03 06 08 05
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 04 19 00 00 [FIXUP]
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.PTINRECT               ; 9A 14 19 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_191C                          ; 75 3C
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x164]            ; 03 06 64 01
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 30 17 00 00 [FIXUP]
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1921                          ; 74 05
L_191C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_1950                          ; EB 2F
L_1921:
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        shl     ax, 1                           ; D1 E0
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        mov     ax, word ptr [0x440]            ; A1 40 04
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        dec     word ptr [bp - 4]               ; FF 4E FC
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_193F                          ; 7D 07
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
L_193F:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
L_1942:
        mov     ax, word ptr [0x43c]            ; A1 3C 04
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_194D                          ; 7D 03
        jmp     L_18A6                          ; E9 59 FF
L_194D:
        mov     ax, 0xffff                      ; B8 FF FF
L_1950:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1955 -- offset 0x1955 -- 43 instr
; Funcion mediana (43 instr, 3 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_09B2, sub_2219, sub_2340, sub_2835, sub_28F9, sub_29B7
; calls (inter): KERNEL.LSTRCPY, USER.LOADSTRING, USER.MESSAGEBOX
;----------------------------------------------------------------------
L_1955:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        cmp     word ptr [bp + 6], 0x12         ; 83 7E 06 12
        jne     L_197B                          ; 75 12
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x1c0                       ; B8 C0 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A AC 1A 00 00 [FIXUP]
        jmp     L_1991                          ; EB 16
L_197B:
        push    word ptr [0x16e]                ; FF 36 6E 01
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 2C 10 00 00 [FIXUP]
L_1991:
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50a                       ; B8 0A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 5D 10 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_19B2 -- offset 0x19B2 -- 62 instr
; Funcion mediana (62 instr, 0 calls).
; tags: far, medium
; callers: sub_09B2, sub_29B7
;----------------------------------------------------------------------
L_19B2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
L_19D7:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     ax, word ptr [0x280]            ; A1 80 02
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jne     L_19EC                          ; 75 0A
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        je      L_1A26                          ; 74 3C
        jmp     L_1A1D                          ; EB 31
L_19EC:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_19D7                          ; 75 D0
        sub     ax, ax                          ; 2B C0
        jmp     L_1A45                          ; EB 3A
L_1A0B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        inc     word ptr [bp + 0xa]             ; FF 46 0A
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
L_1A1D:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_1A0B                          ; 75 E5
L_1A26:
        inc     word ptr [bp - 6]               ; FF 46 FA
        inc     word ptr [bp - 6]               ; FF 46 FA
L_1A2C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], al            ; 26 88 07
        or      al, al                          ; 0A C0
        jne     L_1A2C                          ; 75 EA
        mov     ax, 1                           ; B8 01 00
L_1A45:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A4E -- offset 0x1A4E -- 13 instr
; Wrapper que delega en sub_1600.
; tags: wrapper
; callers: sub_09B2
; calls (intra): sub_1600
;----------------------------------------------------------------------
L_1A4E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     byte ptr [0x411], 0             ; C6 06 11 04 00
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
        mov     ax, 0x72                        ; B8 72 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    L_1600                          ; E8 9C FB
        add     sp, 4                           ; 83 C4 04
        mov     byte ptr [0x410], 1             ; C6 06 10 04 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A70 -- offset 0x1A70 -- 17 instr
; Funcion sin clasificar definitiva (17 instr).
; tags: calls_user, small
; callers: sub_09B2, sub_28F9
; calls (intra): sub_1A94
; calls (inter): USER.SETWINDOWTEXT
;----------------------------------------------------------------------
L_1A70:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x28                        ; 83 EC 28
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A94                          ; E8 15 00
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x28]                 ; 8D 46 D8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SETWINDOWTEXT          ; 9A 14 16 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1A94 -- offset 0x1A94 -- 62 instr
; Dispatcher: tabla de decisiones cmp+jcc (62 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_1A70
; calls (inter): KERNEL.LSTRCAT, KERNEL.LSTRCPY
;----------------------------------------------------------------------
L_1A94:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x170                       ; B8 70 01
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCPY              ; 9A 89 12 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x73                        ; B8 73 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A 12 1B 00 00 [FIXUP]
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_1B07                          ; 74 41
        mov     word ptr [bp - 8], 0x35a        ; C7 46 F8 5A 03
        mov     word ptr [bp - 6], 0x35a        ; C7 46 FA 5A 03
        jmp     L_1AD5                          ; EB 03
L_1AD2:
        inc     word ptr [bp - 8]               ; FF 46 F8
L_1AD5:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_1AD2                          ; 75 F5
        jmp     L_1AEA                          ; EB 0B
L_1ADF:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        je      L_1AF2                          ; 74 0B
        dec     word ptr [bp - 8]               ; FF 4E F8
L_1AEA:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        ja      L_1ADF                          ; 77 ED
L_1AF2:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_1AFD                          ; 75 03
        inc     word ptr [bp - 8]               ; FF 46 F8
L_1AFD:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_1B0F                          ; EB 08
L_1B07:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
L_1B0F:
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1B1F -- offset 0x1B1F -- 60 instr
; Funcion mediana (60 instr, 3 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_01AA
; calls (inter): KERNEL.GETPROFILESTRING, USER.ENABLEMENUITEM, USER.GETMENU
;----------------------------------------------------------------------
L_1B1F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETMENU                ; 9A 95 13 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa0                        ; B8 A0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x77                        ; B8 77 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_1B7B                          ; 75 22
        mov     word ptr [0x70], 0              ; C7 06 70 00 00 00
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x69                        ; B8 69 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 8C 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x6a                        ; B8 6A 00
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        jmp     L_1B99                          ; EB 1E
L_1B7B:
        mov     word ptr [0x70], 1              ; C7 06 70 00 01 00
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x69                        ; B8 69 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 9B 1B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x6a                        ; B8 6A 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
L_1B99:
        push    ax                              ; 50
        call    far USER.ENABLEMENUITEM         ; 9A 41 14 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1BA8 -- offset 0x1BA8 -- 140 instr
; Dispatcher: tabla de decisiones cmp+jcc (140 instr).
; tags: calls_user, dispatcher
; callers: sub_01AA, sub_161C, sub_1839, sub_2438
; calls (intra): sub_07D5, sub_2219, sub_2340
; calls (inter): USER.FILLRECT, USER.GETCLIENTRECT, USER.GETDC, USER.INVALIDATERECT, USER.RELEASEDC, USER.SETSCROLLPOS
;----------------------------------------------------------------------
L_1BA8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        cmp     word ptr [0x166], 2             ; 83 3E 66 01 02
        jge     L_1BC6                          ; 7D 06
        mov     ax, 1                           ; B8 01 00
        jmp     L_1D47                          ; E9 81 01
L_1BC6:
        cmp     word ptr [0x7a], 0              ; 83 3E 7A 00 00
        jne     L_1BD3                          ; 75 06
        mov     ax, word ptr [0x18]             ; A1 18 00
        mov     word ptr [0x330], ax            ; A3 30 03
L_1BD3:
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 8                           ; 3D 08 00
        ja      L_1C23                          ; 77 42
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x1cc7]       ; 2E FF A7 C7 1C
        dec     word ptr [0x18]                 ; FF 0E 18 00
        cmp     word ptr [0x18], 0              ; 83 3E 18 00 00
        jl      L_1BF7                          ; 7C 03
        jmp     L_1CD9                          ; E9 E2 00
L_1BF7:
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
L_1BFB:
        mov     word ptr [0x18], ax             ; A3 18 00
        jmp     L_1CD9                          ; E9 D8 00
        inc     word ptr [0x18]                 ; FF 06 18 00
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x18], ax             ; 39 06 18 00
        je      L_1C11                          ; 74 03
        jmp     L_1CD9                          ; E9 C8 00
L_1C11:
        mov     word ptr [0x18], 0              ; C7 06 18 00 00 00
        jmp     L_1CD9                          ; E9 BF 00
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x536], ax            ; 39 06 36 05
        jne     L_1C29                          ; 75 06
L_1C23:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_1D47                          ; E9 1E 01
L_1C29:
        mov     ax, word ptr [0x536]            ; A1 36 05
        sub     word ptr [0x18], ax             ; 29 06 18 00
        cmp     word ptr [0x18], 0              ; 83 3E 18 00 00
        jl      L_1C3A                          ; 7C 03
        jmp     L_1CD9                          ; E9 9F 00
L_1C3A:
        mov     ax, word ptr [0x166]            ; A1 66 01
        add     word ptr [0x18], ax             ; 01 06 18 00
        jmp     L_1CD9                          ; E9 95 00
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x536], ax            ; 39 06 36 05
        je      L_1C23                          ; 74 D6
        mov     ax, word ptr [0x536]            ; A1 36 05
        add     word ptr [0x18], ax             ; 01 06 18 00
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [0x18], ax             ; 39 06 18 00
        jl      L_1CD9                          ; 7C 7C
        sub     word ptr [0x18], ax             ; 29 06 18 00
        jmp     L_1CD9                          ; EB 76
        mov     ax, word ptr [0x330]            ; A1 30 03
        cmp     word ptr [0x18], ax             ; 39 06 18 00
        je      L_1C8E                          ; 74 22
        push    ax                              ; 50
        call    L_2219                          ; E8 A9 05
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_1C83                          ; 74 0C
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 C2 06
        add     sp, 2                           ; 83 C4 02
        jmp     L_1C8E                          ; EB 0B
L_1C83:
        mov     ax, word ptr [0x330]            ; A1 30 03
        mov     word ptr [0x18], ax             ; A3 18 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
L_1C8E:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 3D 1D 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A F4 11 00 00 [FIXUP]
        mov     word ptr [0x78], 0              ; C7 06 78 00 00 00
        mov     word ptr [0x7a], 0              ; C7 06 7A 00 00 00
        jmp     L_1C23                          ; E9 62 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_1BFB                          ; E9 34 FF
        jmp     L_1DE5                          ; E9 1B 01
        sbb     al, 0x1a                        ; 1C 1A
        sbb     al, 0x44                        ; 1C 44
        sbb     al, 0x63                        ; 1C 63
        sbb     al, 0xc1                        ; 1C C1
        sbb     al, 0x23                        ; 1C 23
        sbb     al, 0x23                        ; 1C 23
        sbb     al, 0x63                        ; 1C 63
        sbb     al, 0xa1                        ; 1C A1
        sbb     byte ptr [bx + si], al          ; 18 00
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_1CE4                          ; 75 03
        jmp     L_1C23                          ; E9 3F FF
L_1CE4:
        cmp     word ptr [0x78], 0              ; 83 3E 78 00 00
        jne     L_1D28                          ; 75 3D
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.GETDC                  ; 9A E7 17 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [0x29a]                ; FF 36 9A 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 61 1D 00 00 [FIXUP]
        push    word ptr [bp - 0x10]            ; FF 76 F0
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x1f8]                ; FF 36 F8 01
        call    far USER.FILLRECT               ; 9A 7D 08 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.RELEASEDC              ; 9A 86 17 00 00 [FIXUP]
        mov     word ptr [0x78], 1              ; C7 06 78 00 01 00
L_1D28:
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        je      L_1D41                          ; 74 13
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A E3 1D 00 00 [FIXUP]
L_1D41:
        call    L_07D5                          ; E8 91 EA
        jmp     L_1C23                          ; E9 DC FE
L_1D47:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1D4B -- offset 0x1D4B -- 51 instr
; Dispatcher: tabla de decisiones cmp+jcc (51 instr).
; tags: calls_user, dispatcher
; callers: sub_01AA
; calls (inter): USER.GETCLIENTRECT
;----------------------------------------------------------------------
L_1D4B:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        mov     ax, word ptr [0x28a]            ; A1 8A 02
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 59 1E 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_1D99                          ; 74 1B
        cmp     ax, 1                           ; 3D 01 00
        je      L_1DB8                          ; 74 35
        cmp     ax, 2                           ; 3D 02 00
        je      L_1DBF                          ; 74 37
        cmp     ax, 3                           ; 3D 03 00
        je      L_1DC9                          ; 74 3C
        cmp     ax, 4                           ; 3D 04 00
        je      L_1DD7                          ; 74 45
        cmp     ax, 5                           ; 3D 05 00
        je      L_1DCE                          ; 74 37
        jmp     L_1D9E                          ; EB 05
L_1D99:
        mov     word ptr [bp - 0x10], 0xffff    ; C7 46 F0 FF FF
L_1D9E:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [0x28a], ax            ; 01 06 8A 02
        mov     si, word ptr [0x166]            ; 8B 36 66 01
        sub     si, word ptr [bp - 4]           ; 2B 76 FC
        cmp     word ptr [0x28a], si            ; 39 36 8A 02
        jle     L_1DE9                          ; 7E 37
        mov     word ptr [0x28a], si            ; 89 36 8A 02
        jmp     L_1DF6                          ; EB 3E
L_1DB8:
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        jmp     L_1D9E                          ; EB DF
L_1DBF:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        neg     ax                              ; F7 D8
L_1DC4:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_1D9E                          ; EB D5
L_1DC9:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_1DC4                          ; EB F6
L_1DCE:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        jmp     L_1DC4                          ; EB ED
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1DD7 -- offset 0x1DD7 -- 41 instr
; Funcion mediana (41 instr, 3 calls).
; tags: calls_user, medium
; calls (inter): USER.SCROLLWINDOW, USER.SETSCROLLPOS, USER.UPDATEWINDOW
;----------------------------------------------------------------------
L_1DD7:
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 17 1E 00 00 [FIXUP]
        jmp     L_1E3C                          ; EB 53
L_1DE9:
        cmp     word ptr [0x28a], 0             ; 83 3E 8A 02 00
        jge     L_1DF6                          ; 7D 06
        mov     word ptr [0x28a], 0             ; C7 06 8A 02 00 00
L_1DF6:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_1E3C                          ; 74 38
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        je      L_1E1B                          ; 74 11
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x28a]                ; FF 36 8A 02
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A DB 1E 00 00 [FIXUP]
L_1E1B:
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.UPDATEWINDOW           ; 9A 37 0C 00 00 [FIXUP]
L_1E3C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1E41 -- offset 0x1E41 -- 164 instr
; Dispatcher: tabla de decisiones cmp+jcc (164 instr).
; tags: calls_user, dispatcher, far
; callers: sub_09B2, sub_2835, sub_28F9
; calls (intra): sub_2001, sub_2438, sub_24B4
; calls (inter): USER.BEGINPAINT, USER.CALLWINDOWPROC, USER.ENDPAINT, USER.GETCLIENTRECT, USER.SETSCROLLPOS, USER.SETSCROLLRANGE
;----------------------------------------------------------------------
L_1E41:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1E8A                          ; 75 3B
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 99 11 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     ax, word ptr [0x166]            ; 3B 06 66 01
        jl      L_1E77                          ; 7C 07
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_1E91                          ; EB 1A
L_1E77:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_1E82                          ; 75 05
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
L_1E82:
        mov     ax, word ptr [0x166]            ; A1 66 01
        sub     ax, word ptr [bp - 2]           ; 2B 46 FE
        jmp     L_1E8E                          ; EB 04
L_1E8A:
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
L_1E8E:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
L_1E91:
        push    word ptr [0x286]                ; FF 36 86 02
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1EA2                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1EA4                          ; EB 02
L_1EA2:
        sub     ax, ax                          ; 2B C0
L_1EA4:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    ax                              ; 50
        call    far USER.SETSCROLLRANGE         ; 9A 2F 0D 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1EC2                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_1EC4                          ; EB 02
L_1EC2:
        sub     ax, ax                          ; 2B C0
L_1EC4:
        push    ax                              ; 50
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_1ED2                          ; 75 05
        mov     ax, word ptr [0x28a]            ; A1 8A 02
        jmp     L_1ED5                          ; EB 03
L_1ED2:
        mov     ax, word ptr [0x18]             ; A1 18 00
L_1ED5:
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x22                        ; 83 EC 22
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_1F56                          ; 74 5E
        jbe     L_1EFD                          ; 76 03
        jmp     L_1FBC                          ; E9 BF 00
L_1EFD:
        cmp     ax, 7                           ; 3D 07 00
        jne     L_1F05                          ; 75 03
        jmp     L_1F9F                          ; E9 9A 00
L_1F05:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_1F0D                          ; 75 03
        jmp     L_1FAD                          ; E9 A0 00
L_1F0D:
        jmp     L_1FD9                          ; E9 C9 00
L_1F10:
        cmp     word ptr [0x14], 0x75           ; 83 3E 14 00 75
        je      L_1F1A                          ; 74 03
        jmp     L_1FD9                          ; E9 BF 00
L_1F1A:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 0xa                         ; 83 C4 0A
L_1F31:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_1FF6                          ; E9 BF 00
L_1F37:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_24B4                          ; E8 77 05
        jmp     L_1F45                          ; EB 06
L_1F3F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2438                          ; E8 F3 04
L_1F45:
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_1F31                          ; 75 E5
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_1F31                          ; 75 DE
        jmp     L_1FD9                          ; E9 83 00
L_1F56:
        cmp     word ptr [0x16], 0              ; 83 3E 16 00 00
        jne     L_1F31                          ; 75 D4
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.BEGINPAINT             ; 9A E1 01 00 00 [FIXUP]
        push    word ptr [0x53a]                ; FF 36 3A 05
        push    word ptr [0x538]                ; FF 36 38 05
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0x22]            ; FF 76 DE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.CALLWINDOWPROC         ; 9A F2 1F 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2001                          ; E8 74 00
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x22]                 ; 8D 46 DE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ENDPAINT               ; 9A 17 02 00 00 [FIXUP]
        jmp     L_1F31                          ; EB 92
L_1F9F:
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        je      L_1FD9                          ; 74 33
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1F31                          ; EB 84
L_1FAD:
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        je      L_1FD9                          ; 74 25
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1F31                          ; E9 75 FF
L_1FBC:
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_1FC4                          ; 75 03
        jmp     L_1F3F                          ; E9 7B FF
L_1FC4:
        cmp     ax, 0x102                       ; 3D 02 01
        jne     L_1FCC                          ; 75 03
        jmp     L_1F37                          ; E9 6B FF
L_1FCC:
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_1FD9                          ; 72 08
        cmp     ax, 0x202                       ; 3D 02 02
        ja      L_1FD9                          ; 77 03
        jmp     L_1F10                          ; E9 37 FF
L_1FD9:
        push    word ptr [0x53a]                ; FF 36 3A 05
        push    word ptr [0x538]                ; FF 36 38 05
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.CALLWINDOWPROC         ; 9A FF FF 00 00 [FIXUP]
L_1FF6:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2001 -- offset 0x2001 -- 71 instr
; Dispatcher: tabla de decisiones cmp+jcc (71 instr).
; tags: calls_gdi, calls_user, dispatcher, far
; callers: sub_1E41
; calls (inter): GDI.BITBLT, GDI.CREATECOMPATIBLEDC, GDI.DELETEDC, GDI.SELECTOBJECT, USER.GETFOCUS, USER.SETFOCUS
;----------------------------------------------------------------------
L_2001:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        jne     L_2019                          ; 75 03
        jmp     L_20BA                          ; E9 A1 00
L_2019:
        call    far USER.GETFOCUS               ; 9A 8C 07 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_209C                          ; 74 74
        mov     ax, word ptr [0x29a]            ; A1 9A 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_2038                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A 98 20 00 00 [FIXUP]
L_2038:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_208E                          ; 74 47
        push    ax                              ; 50
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.SELECTOBJECT            ; 9A 82 20 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        push    word ptr [0x528]                ; FF 36 28 05
        push    word ptr [0x52a]                ; FF 36 2A 05
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far GDI.SELECTOBJECT            ; 9A 23 04 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
L_208E:
        mov     ax, word ptr [0x29a]            ; A1 9A 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_209C                          ; 75 06
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A DD 0D 00 00 [FIXUP]
L_209C:
        cmp     word ptr [0x14], 0x75           ; 83 3E 14 00 75
        jne     L_20BA                          ; 75 17
        mov     ax, word ptr [0x29a]            ; A1 9A 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jne     L_20BA                          ; 75 0F
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_25                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 4                           ; 83 C4 04
L_20BA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_20C3 -- offset 0x20C3 -- 34 instr
; Funcion mediana (34 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_09B2
; calls (intra): sub_27FC
; calls (inter): KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_20C3:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        dec     word ptr [0x166]                ; FF 0E 66 01
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 29 21 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x166]            ; A1 66 01
        sub     ax, word ptr [bp + 4]           ; 2B 46 04
        mov     cx, 0x34                        ; B9 34 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        lea     ax, [bx + si + 0x34]            ; 8D 40 34
        push    es                              ; 06
        push    ax                              ; 50
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, si                          ; 03 C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_27FC                          ; E8 F8 06
        add     sp, 0xa                         ; 83 C4 0A
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 03 22 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2115 -- offset 0x2115 -- 105 instr
; Dispatcher: tabla de decisiones cmp+jcc (105 instr).
; tags: calls_kernel, dispatcher, far
; callers: sub_09B2
; calls (intra): sub_2815
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK
;----------------------------------------------------------------------
L_2115:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 6C 22 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_21BF                          ; EB 7F
L_2140:
        mov     word ptr [bp - 8], 0x411        ; C7 46 F8 11 04
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     ax, 0xb                         ; 05 0B 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_2154:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_2185                          ; 74 29
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 7C 21 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     cl, byte ptr [bx]               ; 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    cx                              ; 51
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        call    far KERNEL.ANSIUPPER            ; 9A 92 21 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x14]        ; 3A 46 EC
        je      L_21B0                          ; 74 2B
L_2185:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A A5 21 00 00 [FIXUP]
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     cl, byte ptr [bx]               ; 8A 0F
        sub     ch, ch                          ; 2A ED
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    cx                              ; 51
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        call    far KERNEL.ANSIUPPER            ; 9A F4 0B 00 00 [FIXUP]
        cmp     al, byte ptr [bp - 0x14]        ; 3A 46 EC
        ja      L_21B8                          ; 77 0A
        jmp     L_21CA                          ; EB 1A
L_21B0:
        inc     word ptr [bp - 8]               ; FF 46 F8
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_2154                          ; EB 9C
L_21B8:
        add     word ptr [bp - 0xc], 0x34       ; 83 46 F4 34
        inc     word ptr [bp - 0xe]             ; FF 46 F2
L_21BF:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_21CA                          ; 7D 03
        jmp     L_2140                          ; E9 76 FF
L_21CA:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_21F1                          ; 74 1F
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     cx, 0x34                        ; B9 34 00
        imul    cx                              ; F7 E9
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        add     ax, cx                          ; 03 C1
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_2815                          ; E8 27 06
        add     sp, 0xa                         ; 83 C4 0A
L_21F1:
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        mov     di, bx                          ; 8B FB
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 01 11 00 00 [FIXUP]
        inc     word ptr [0x166]                ; FF 06 66 01
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
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
; sub_2219 -- offset 0x2219 -- 109 instr
; Funcion compleja: 109 instrucciones, 8 llamadas, 7 branches.
; tags: calls_gdi, calls_kernel, calls_user, complex
; callers: sub_09B2, sub_1BA8, sub_24B4, sub_2835, sub_29B7
; calls (intra): sub_1955
; calls (inter): GDI.DELETEOBJECT, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.GETWINDOWTEXT (+1 mas)
;----------------------------------------------------------------------
L_2219:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        test    byte ptr [0x410], 3             ; F6 06 10 04 03
        jne     L_2241                          ; 75 19
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x408                       ; B8 08 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A B4 22 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_2241                          ; 75 03
        jmp     L_2321                          ; E9 E0 00
L_2241:
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_2268                          ; 75 11
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 F5 F6
        add     sp, 2                           ; 83 C4 02
L_2263:
        sub     ax, ax                          ; 2B C0
        jmp     L_233A                          ; E9 D2 00
L_2268:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALLOCK           ; 9A E2 10 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [0x29a]                ; FF 36 9A 02
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        call    far _entry_24                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        or      ax, ax                          ; 0B C0
        je      L_2263                          ; 74 C4
        test    byte ptr [0x410], 2             ; F6 06 10 04 02
        jne     L_22BC                          ; 75 16
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x408                       ; B8 08 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 22 14 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_22C2                          ; 74 06
L_22BC:
        mov     word ptr [0x12], 1              ; C7 06 12 00 01 00
L_22C2:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A 36 22 00 00 [FIXUP]
        mov     byte ptr [0x410], 0             ; C6 06 10 04 00
        mov     byte ptr [0x410], 0             ; C6 06 10 04 00
        or      byte ptr [0x410], 4             ; 80 0E 10 04 04
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A 72 23 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     di, bx                          ; 8B FB
        mov     si, 0x406                       ; BE 06 04
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 15 23 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A A0 23 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A EC 23 00 00 [FIXUP]
L_2321:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_2337                          ; 74 0F
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A 8F 0E 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
L_2337:
        mov     ax, 1                           ; B8 01 00
L_233A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2340 -- offset 0x2340 -- 101 instr
; Funcion compleja: 101 instrucciones, 7 llamadas, 3 branches.
; tags: calls_kernel, calls_user, complex
; callers: sub_09B2, sub_1BA8, sub_24B4, sub_2835, sub_28F9, sub_29B7
; calls (intra): sub_1600, sub_1955
; calls (inter): KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.SETRECT
;----------------------------------------------------------------------
L_2340:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GLOBALALLOC          ; 9A 4C 22 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_236D                          ; 75 0F
        mov     ax, 0x20                        ; B8 20 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 EE F5
        add     sp, 2                           ; 83 C4 02
        jmp     L_2432                          ; E9 C5 00
L_236D:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A A8 23 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp + 4]               ; F7 6E 04
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     di, 0x406                       ; BF 06 04
        mov     si, ax                          ; 8B F0
        push    ds                              ; 1E
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A E4 23 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALLOCK           ; 9A D3 20 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        or      ax, ax                          ; 0B C0
        jne     L_23D4                          ; 75 0C
        mov     ax, 0x1c                        ; B8 1C 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 84 F5
        add     sp, 2                           ; 83 C4 02
L_23D4:
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_1600                          ; E8 23 F2
        add     sp, 4                           ; 83 C4 04
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALUNLOCK         ; 9A 0C 21 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_2415                          ; 74 1E
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        add     ax, word ptr [0x528]            ; 03 06 28 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        jmp     L_242C                          ; EB 17
L_2415:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        add     ax, 5                           ; 05 05 00
        push    ax                              ; 50
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     ax, 5                           ; 05 05 00
L_242C:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 6E 17 00 00 [FIXUP]
L_2432:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2438 -- offset 0x2438 -- 54 instr
; Funcion mediana (54 instr, 1 calls).
; tags: medium
; callers: sub_1E41
; calls (intra): sub_1BA8
;----------------------------------------------------------------------
L_2438:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, 0x21                        ; 2D 21 00
        cmp     ax, 7                           ; 3D 07 00
        ja      L_248F                          ; 77 49
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x24a0]       ; 2E FF A7 A0 24
        sub     ax, ax                          ; 2B C0
L_2450:
        push    ax                              ; 50
        mov     ax, 5                           ; B8 05 00
        jmp     L_2467                          ; EB 11
        mov     ax, word ptr [0x166]            ; A1 66 01
        dec     ax                              ; 48
        jmp     L_2450                          ; EB F4
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        jmp     L_2467                          ; EB 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
L_2467:
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 39 F7
        add     sp, 6                           ; 83 C4 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        call    L_1BA8                          ; E8 28 F7
        add     sp, 6                           ; 83 C4 06
L_2483:
        mov     ax, 1                           ; B8 01 00
        jmp     L_24B0                          ; EB 28
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_2493                          ; 75 04
L_248F:
        sub     ax, ax                          ; 2B C0
        jmp     L_24B0                          ; EB 1D
L_2493:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_30                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_2483                          ; EB E3
        pop     sp                              ; 5C
        and     al, 0x61                        ; 24 61
        and     al, 0x56                        ; 24 56
        and     al, 0x4e                        ; 24 4E
        and     al, 0x88                        ; 24 88
        and     al, 0x88                        ; 24 88
        and     al, 0x88                        ; 24 88
        and     al, 0x88                        ; 24 88
        and     al, 0x8b                        ; 24 8B
        in      ax, 0x5d                        ; E5 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_24B4 -- offset 0x24B4 -- 129 instr
; Dispatcher: tabla de decisiones cmp+jcc (129 instr).
; tags: calls_kernel, calls_user, dispatcher
; callers: sub_01AA, sub_1E41
; calls (intra): sub_07D5, sub_2219, sub_2340, sub_2625
; calls (inter): KERNEL.ANSIUPPER, KERNEL.GLOBALLOCK, KERNEL.GLOBALUNLOCK, USER.GETDC, USER.GETKEYSTATE, USER.INVALIDATERECT (+4 mas)
;----------------------------------------------------------------------
L_24B4:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A BD 16 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_24CC                          ; 7D 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_24CE                          ; EB 02
L_24CC:
        sub     ax, ax                          ; 2B C0
L_24CE:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_24DB                          ; 74 06
        cmp     word ptr [bp + 4], 0x20         ; 83 7E 04 20
        jl      L_24E0                          ; 7C 05
L_24DB:
        sub     ax, ax                          ; 2B C0
        jmp     L_2621                          ; E9 41 01
L_24E0:
        add     word ptr [bp + 4], 0x40         ; 83 46 04 40
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALLOCK           ; 9A E8 22 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        mov     ax, word ptr [0x18]             ; A1 18 00
        inc     ax                              ; 40
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 0x18]            ; F7 6E E8
        add     ax, word ptr [bp - 0x1e]        ; 03 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
L_2511:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_2548                          ; 7D 2F
        cmp     word ptr [bp - 0x18], ax        ; 39 46 E8
        jne     L_252F                          ; 75 11
        mov     word ptr [bp - 0x18], 0         ; C7 46 E8 00 00
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
L_252F:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        sub     ah, ah                          ; 2A E4
        sub     cx, cx                          ; 2B C9
        push    cx                              ; 51
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 69 21 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jne     L_2579                          ; 75 31
L_2548:
        push    word ptr [0x1be]                ; FF 36 BE 01
        call    far KERNEL.GLOBALUNLOCK         ; 9A 0D 23 00 00 [FIXUP]
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_255C                          ; 7C 03
        jmp     L_261E                          ; E9 C2 00
L_255C:
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_258B                          ; 74 27
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 AE FC
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_2340                          ; E8 CC FD
        add     sp, 2                           ; 83 C4 02
        jmp     L_25DC                          ; EB 63
L_2579:
        inc     word ptr [bp - 0x16]            ; FF 46 EA
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     word ptr [bp - 6], 0x34         ; 83 46 FA 34
        inc     word ptr [bp - 0x18]            ; FF 46 E8
        jmp     L_2511                          ; EB 86
L_258B:
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 6C 26 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A 75 26 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A 83 26 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far USER.RELEASEDC              ; 9A 8F 26 00 00 [FIXUP]
L_25DC:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x18], ax             ; A3 18 00
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_2614                          ; 75 2A
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x18]                 ; FF 36 18 00
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A D9 26 00 00 [FIXUP]
        call    L_07D5                          ; E8 D4 E1
        push    word ptr [0x29a]                ; FF 36 9A 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A AE 1C 00 00 [FIXUP]
        jmp     L_261E                          ; EB 0A
L_2614:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2625                          ; E8 0A 00
        add     sp, 2                           ; 83 C4 02
L_261E:
        mov     ax, 1                           ; B8 01 00
L_2621:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2625 -- offset 0x2625 -- 85 instr
; Funcion compleja: 85 instrucciones, 8 llamadas, 3 branches.
; tags: calls_user, complex
; callers: sub_161C, sub_24B4, sub_2706
; calls (inter): USER.GETCLIENTRECT, USER.GETDC, USER.INVERTRECT, USER.RELEASEDC, USER.SCROLLWINDOW, USER.SETRECT (+2 mas)
;----------------------------------------------------------------------
L_2625:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 15 27 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    cx                              ; F7 E9
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A C3 27 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.GETDC                  ; 9A CB 27 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A D9 27 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.RELEASEDC              ; 9A E4 27 00 00 [FIXUP]
        mov     ax, word ptr [0x28a]            ; A1 8A 02
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jl      L_26A8                          ; 7C 0D
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x28a]            ; 03 06 8A 02
        dec     ax                              ; 48
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jge     L_2702                          ; 7D 5A
L_26A8:
        mov     ax, word ptr [0x28a]            ; A1 8A 02
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_26B9                          ; 7D 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        jmp     L_26C4                          ; EB 0B
L_26B9:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        inc     ax                              ; 40
L_26C4:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        add     word ptr [0x28a], ax            ; 01 06 8A 02
        push    word ptr [0x286]                ; FF 36 86 02
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x28a]                ; FF 36 8A 02
        push    ax                              ; 50
        call    far USER.SETSCROLLPOS           ; 9A 9D 1C 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        neg     ax                              ; F7 D8
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SCROLLWINDOW           ; 9A 30 1E 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.UPDATEWINDOW           ; 9A 38 1E 00 00 [FIXUP]
L_2702:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2706 -- offset 0x2706 -- 94 instr
; Dispatcher: tabla de decisiones cmp+jcc (94 instr).
; tags: calls_user, dispatcher
; callers: sub_01AA
; calls (intra): sub_2625
; calls (inter): USER.GETCLIENTRECT, USER.GETDC, USER.INVERTRECT, USER.RELEASEDC, USER.SETRECT
;----------------------------------------------------------------------
L_2706:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCLIENTRECT          ; 9A 01 1D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x21                        ; 3D 21 00
        je      L_2761                          ; 74 33
        cmp     ax, 0x22                        ; 3D 22 00
        je      L_274C                          ; 74 19
        cmp     ax, 0x23                        ; 3D 23 00
        je      L_2775                          ; 74 3D
        cmp     ax, 0x24                        ; 3D 24 00
        je      L_276E                          ; 74 31
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_277A                          ; 74 38
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_277F                          ; 74 38
        sub     ax, ax                          ; 2B C0
        jmp     L_27F8                          ; E9 AC 00
L_274C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x18]             ; 03 06 18 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_2786                          ; 7C 28
L_275E:
        dec     ax                              ; 48
        jmp     L_2783                          ; EB 22
L_2761:
        mov     ax, word ptr [0x18]             ; A1 18 00
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_2786                          ; 7D 18
L_276E:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_2786                          ; EB 11
L_2775:
        mov     ax, word ptr [0x166]            ; A1 66 01
        jmp     L_275E                          ; EB E4
L_277A:
        mov     ax, word ptr [0x18]             ; A1 18 00
        jmp     L_275E                          ; EB DF
L_277F:
        mov     ax, word ptr [0x18]             ; A1 18 00
        inc     ax                              ; 40
L_2783:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
L_2786:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_27F5                          ; 7C 69
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jge     L_27F5                          ; 7D 61
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_27F5                          ; 74 59
        sub     ax, word ptr [0x28a]            ; 2B 06 8A 02
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        mov     ax, 0x2a                        ; B8 2A 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 2E 24 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.GETDC                  ; 9A F0 1C 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A 7B 17 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.RELEASEDC              ; 9A 1E 1D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x18], ax             ; A3 18 00
        push    ax                              ; 50
        call    L_2625                          ; E8 33 FE
        add     sp, 2                           ; 83 C4 02
L_27F5:
        mov     ax, 1                           ; B8 01 00
L_27F8:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_27FC -- offset 0x27FC -- 16 instr
; Funcion hoja (no llama a otras, 16 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_20C3
;----------------------------------------------------------------------
L_27FC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        cld                                     ; FC
        les     di, ptr [bp + 4]                ; C4 7E 04
        lds     si, ptr [bp + 8]                ; C5 76 08
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        repne movsb byte ptr es:[di], byte ptr [si] ; F2 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2815 -- offset 0x2815 -- 21 instr
; Funcion sin clasificar definitiva (21 instr).
; tags: small
; callers: sub_2115
;----------------------------------------------------------------------
L_2815:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        std                                     ; FD
        les     di, ptr [bp + 4]                ; C4 7E 04
        lds     si, ptr [bp + 8]                ; C5 76 08
        mov     cx, word ptr [bp + 0xc]         ; 8B 4E 0C
        add     si, cx                          ; 03 F1
        add     di, cx                          ; 03 F9
        dec     si                              ; 4E
        dec     di                              ; 4F
        repne movsb byte ptr es:[di], byte ptr [si] ; F2 A4
        cld                                     ; FC
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_2835 -- offset 0x2835 -- 71 instr
; Funcion mediana (71 instr, 9 calls).
; tags: calls_kernel, calls_user, medium
; callers: sub_09B2
; calls (intra): sub_1315, sub_1955, sub_1E41, sub_2219, sub_2340
; calls (inter): KERNEL.LOCALFREE, KERNEL.OPENFILE, USER.INVALIDATERECT, USER.SETCURSOR
;----------------------------------------------------------------------
L_2835:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x84                        ; 81 EC 84 00
        cmp     word ptr [0x1e], 0              ; 83 3E 1E 00 00
        je      L_2846                          ; 74 03
        jmp     L_28F5                          ; E9 AF 00
L_2846:
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    L_1315                          ; E8 C8 EA
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_285A                          ; 75 03
        jmp     L_28F5                          ; E9 9B 00
L_285A:
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 1C 29 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_2888                          ; 74 16
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 DA F0
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A E8 28 00 00 [FIXUP]
        jmp     L_28F5                          ; EB 6D
L_2888:
        push    word ptr [0x3e0]                ; FF 36 E0 03
        call    far USER.SETCURSOR              ; 9A F1 28 00 00 [FIXUP]
        cmp     word ptr [0x10], 0x8e           ; 81 3E 10 00 8E 00
        je      L_28A7                          ; 74 0E
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 79 F9
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_28E4                          ; 74 3D
L_28A7:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_28E4                          ; 74 2E
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x18], ax             ; A3 18 00
        mov     word ptr [0x28a], ax            ; A3 8A 02
        call    L_1E41                          ; E8 80 F5
        cmp     word ptr [0x10], 0x8d           ; 81 3E 10 00 8D 00
        jne     L_28D3                          ; 75 0A
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 70 FA
        add     sp, 2                           ; 83 C4 02
L_28D3:
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 99 29 00 00 [FIXUP]
L_28E4:
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far KERNEL.LOCALFREE            ; 9A 37 29 00 00 [FIXUP]
        push    word ptr [0x1b8]                ; FF 36 B8 01
        call    far USER.SETCURSOR              ; 9A 44 29 00 00 [FIXUP]
L_28F5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_28F9 -- offset 0x28F9 -- 72 instr
; Funcion mediana (72 instr, 8 calls).
; tags: calls_kernel, calls_user, far, medium
; callers: sub_09B2
; calls (intra): sub_1955, sub_1A70, sub_1E41, sub_2340
; calls (inter): KERNEL.LOCALFREE, KERNEL.OPENFILE, USER.INVALIDATERECT, USER.SETCURSOR
;----------------------------------------------------------------------
L_28F9:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x86                        ; 81 EC 86 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A C9 2A 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_293F                          ; 74 18
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 25 F0
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.LOCALFREE            ; 9A F0 2A 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        jmp     L_29AE                          ; EB 6F
L_293F:
        push    word ptr [0x3e0]                ; FF 36 E0 03
        call    far USER.SETCURSOR              ; 9A A7 29 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_38                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_29A2                          ; 74 4B
        call    L_1A70                          ; E8 16 F1
        mov     ax, 0x488                       ; B8 88 04
        push    ax                              ; 50
        call    far _entry_10                   ; 9A 2C 0A 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [0x16e]                ; FF 36 6E 01
        call    far _entry_15                   ; 9A 38 0A 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x18], ax             ; A3 18 00
        mov     word ptr [0x28a], ax            ; A3 8A 02
        call    L_1E41                          ; E8 C4 F4
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 BC F9
        add     sp, 2                           ; 83 C4 02
        mov     byte ptr [0x410], 0             ; C6 06 10 04 00
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.INVALIDATERECT         ; 9A 0E 26 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
L_29A2:
        push    word ptr [0x1b8]                ; FF 36 B8 01
        call    far USER.SETCURSOR              ; 9A D3 0E 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
L_29AE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_29B7 -- offset 0x29B7 -- 223 instr
; Dispatcher: tabla de decisiones cmp+jcc (223 instr).
; tags: calls_gdi, calls_kernel, calls_user, dispatcher
; callers: sub_09B2
; calls (intra): sub_1315, sub_1955, sub_19B2, sub_2219, sub_2340
; calls (inter): GDI.DELETEOBJECT, KERNEL.ANSIUPPER, KERNEL.LOCALFREE, KERNEL.OPENFILE, USER.LOADSTRING, USER.MESSAGEBOX (+1 mas)
;----------------------------------------------------------------------
L_29B7:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14a                       ; 81 EC 4A 01
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_29E5                          ; 75 20
        test    byte ptr [0x410], 2             ; F6 06 10 04 02
        jne     L_29E5                          ; 75 19
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x408                       ; B8 08 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SENDMESSAGE            ; 9A D0 22 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        jne     L_29E5                          ; 75 03
        jmp     L_2BA7                          ; E9 C2 01
L_29E5:
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x14a]                ; 8D 86 B6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 26 2B 00 00 [FIXUP]
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_2A49                          ; 74 46
        mov     word ptr [bp - 0x10c], 0x35a    ; C7 86 F4 FE 5A 03
        jmp     L_2A0F                          ; EB 04
L_2A0B:
        inc     word ptr [bp - 0x10c]           ; FF 86 F4 FE
L_2A0F:
        mov     bx, word ptr [bp - 0x10c]       ; 8B 9E F4 FE
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_2A0B                          ; 75 F3
        jmp     L_2A27                          ; EB 0D
L_2A1A:
        mov     bx, word ptr [bp - 0x10c]       ; 8B 9E F4 FE
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        je      L_2A2F                          ; 74 0C
        dec     word ptr [bp - 0x10c]           ; FF 8E F4 FE
L_2A27:
        cmp     word ptr [bp - 0x10c], 0x35a    ; 81 BE F4 FE 5A 03
        ja      L_2A1A                          ; 77 EB
L_2A2F:
        mov     bx, word ptr [bp - 0x10c]       ; 8B 9E F4 FE
        cmp     byte ptr [bx], 0x5c             ; 80 3F 5C
        jne     L_2A3C                          ; 75 04
        inc     word ptr [bp - 0x10c]           ; FF 86 F4 FE
L_2A3C:
        mov     ax, word ptr [bp - 0x10c]       ; 8B 86 F4 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 31 2B 00 00 [FIXUP]
        jmp     L_2A4F                          ; EB 06
L_2A49:
        mov     word ptr [bp - 0x10c], 0x19a    ; C7 86 F4 FE 9A 01
L_2A4F:
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10c]       ; 8B 86 F4 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14a]                ; 8D 86 B6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B2                          ; E8 4C EF
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3e2                       ; B8 E2 03
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x23                        ; B8 23 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A 63 2B 00 00 [FIXUP]
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        cmp     ax, 6                           ; 3D 06 00
        je      L_2A8D                          ; 74 03
        jmp     L_2BA0                          ; E9 13 01
L_2A8D:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2219                          ; E8 85 F7
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_2A9E                          ; 75 03
        jmp     L_2B84                          ; E9 E6 00
L_2A9E:
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_2AA8                          ; 74 03
        jmp     L_2B88                          ; E9 E0 00
L_2AA8:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_1315                          ; E8 66 E8
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0x10a], ax       ; 89 86 F6 FE
        or      ax, ax                          ; 0B C0
        jne     L_2ABD                          ; 75 03
        jmp     L_2B7A                          ; E9 BD 00
L_2ABD:
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far KERNEL.OPENFILE             ; 9A 8C 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x106], ax       ; 89 86 FA FE
        lea     ax, [bp - 0x78]                 ; 8D 46 88
        mov     word ptr [bp - 0x108], ax       ; 89 86 F8 FE
        cmp     word ptr [bp - 0x106], 0        ; 83 BE FA FE 00
        je      L_2AF6                          ; 74 17
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1955                          ; E8 6D EE
        add     sp, 2                           ; 83 C4 02
L_2AEB:
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        call    far KERNEL.LOCALFREE            ; 9A 74 2B 00 00 [FIXUP]
        jmp     L_2AA8                          ; EB B2
L_2AF6:
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL._LOPEN               ; 9A C3 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x10e], ax       ; 89 86 F2 FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_2B6F                          ; 7E 62
        push    ax                              ; 50
        call    far KERNEL._LCLOSE              ; 9A D2 0B 00 00 [FIXUP]
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        lea     ax, [bp - 0x14a]                ; 8D 86 B6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x3c                        ; B8 3C 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A DC 2B 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIUPPER            ; 9A 3D 25 00 00 [FIXUP]
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10a]       ; 8B 86 F6 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14a]                ; 8D 86 B6 FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_19B2                          ; E8 66 EE
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x104]                ; 8D 86 FC FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50a                       ; B8 0A 05
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x124                       ; B8 24 01
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A F3 2B 00 00 [FIXUP]
        cmp     ax, 7                           ; 3D 07 00
        jne     L_2B6F                          ; 75 03
        jmp     L_2AEB                          ; E9 7C FF
L_2B6F:
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        call    far KERNEL.LOCALFREE            ; 9A 20 0B 00 00 [FIXUP]
        jmp     L_2B8E                          ; EB 14
L_2B7A:
        push    word ptr [0x18]                 ; FF 36 18 00
        call    L_2340                          ; E8 BF F7
        add     sp, 2                           ; 83 C4 02
L_2B84:
        sub     ax, ax                          ; 2B C0
        jmp     L_2BC0                          ; EB 38
L_2B88:
        mov     word ptr [bp - 0x108], 0x35a    ; C7 86 F8 FE 5A 03
L_2B8E:
        push    word ptr [bp - 0x108]           ; FF B6 F8 FE
        call    far _entry_16                   ; 9A 8A 0C 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        jne     L_2BBD                          ; 75 1F
        jmp     L_2B84                          ; EB E4
L_2BA0:
        cmp     word ptr [bp - 0x82], 2         ; 83 BE 7E FF 02
        je      L_2B84                          ; 74 DD
L_2BA7:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_2BBD                          ; 74 0F
        push    word ptr [0x532]                ; FF 36 32 05
        call    far GDI.DELETEOBJECT            ; 9A 2D 23 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
L_2BBD:
        mov     ax, 1                           ; B8 01 00
L_2BC0:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x80                        ; 81 EC 80 00
        push    word ptr [0x16e]                ; FF 36 6E 01
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far USER.LOADSTRING             ; 9A 8D 19 00 00 [FIXUP]
        push    word ptr [0x286]                ; FF 36 86 02
        lea     ax, [bp - 0x80]                 ; 8D 46 80
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far USER.MESSAGEBOX             ; 9A A5 19 00 00 [FIXUP]
        cmp     ax, 1                           ; 3D 01 00
        jne     L_2C01                          ; 75 05
        mov     ax, 1                           ; B8 01 00
        jmp     L_2C03                          ; EB 02
L_2C01:
        sub     ax, ax                          ; 2B C0
L_2C03:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

CARDFILE_TEXT ENDS

        END
