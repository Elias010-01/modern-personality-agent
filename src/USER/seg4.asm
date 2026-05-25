; AUTO-GENERATED from original USER segment 4
; segment_size=4514 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        jcxz    L_0024                          ; E3 14
        push    ax                              ; 50
        push    ax                              ; 50
        push    cx                              ; 51
        call    far KERNEL.LOCALINIT            ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_0024                          ; E3 0A
        push    ds                              ; 1E
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        push    di                              ; 57
        call    L_002F                          ; E8 0B 00
L_0024:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_002F -- offset 0x002F -- 66 instr
; Funcion mediana (66 instr, 14 calls).
; tags: calls_kernel, medium
; calls (intra): sub_00D9, sub_017D, sub_0233, sub_04D6, sub_0539, sub_05EE (+7 mas)
; calls (inter): KERNEL.LOCALALLOC
;----------------------------------------------------------------------
L_002F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x3a0], ax            ; A3 A0 03
        call    L_0A95                          ; E8 57 0A
        call    L_0539                          ; E8 F8 04
        call    L_05F9                          ; E8 B5 05
        call    L_0233                          ; E8 EC 01
        call    L_06DD                          ; E8 93 06
        call    L_017D                          ; E8 30 01
        call    L_00D9                          ; E8 89 00
        call    L_05EE                          ; E8 9B 05
        call    L_094E                          ; E8 F8 08
        call    L_0C55                          ; E8 FC 0B
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far _SEG1_5DD3                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, word ptr [0x5f6]            ; A1 F6 05
        add     ax, 0x10                        ; 05 10 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 09 01 00 00 [FIXUP]
        mov     word ptr [0x416], ax            ; A3 16 04
        call    L_04D6                          ; E8 5E 04
        call    far _entry_438                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x54a]            ; A1 4A 05
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        mov     ax, word ptr [0x54c]            ; A1 4C 05
        sar     ax, 1                           ; D1 F8
        push    ax                              ; 50
        call    far _SEG1_3470                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x608]                ; FF 36 08 06
        call    far _SEG1_375A                  ; 9A FF FF 00 00 [FIXUP]
        call    L_0ED2                          ; E8 38 0E
        mov     ax, 0x8001                      ; B8 01 80
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0xd000                      ; BA 00 D0
        push    dx                              ; 52
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        sub     ax, word ptr [0x468]            ; 2B 06 68 04
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x468]                ; FF 36 68 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x3a0]                ; FF 36 A0 03
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_0232                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x634], ax            ; A3 34 06
        call    L_0B1D                          ; E8 4D 0A
        mov     ax, 1                           ; B8 01 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_00D9 -- offset 0x00D9 -- 65 instr
; Funcion mediana (65 instr, 1 calls).
; tags: calls_kernel, medium
; callers: sub_002F
; calls (inter): KERNEL.LOCALALLOC
;----------------------------------------------------------------------
L_00D9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x510]            ; A1 10 05
        cdq                                     ; 99
        mov     cx, word ptr [0x462]            ; 8B 0E 62 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x5e2], ax            ; A3 E2 05
        cmp     ax, 0xa                         ; 3D 0A 00
        jle     L_00F9                          ; 7E 06
        mov     word ptr [0x5e2], 0xa           ; C7 06 E2 05 0A 00
L_00F9:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0xe                         ; B8 0E 00
        imul    word ptr [0x5e2]                ; F7 2E E2 05
        add     ax, 0x46                        ; 05 46 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        add     si, 0xe                         ; 83 C6 0E
        mov     word ptr [0x5d2], ax            ; A3 D2 05
        mov     ax, si                          ; 8B C6
        add     si, 0xe                         ; 83 C6 0E
        mov     word ptr [0x3a2], ax            ; A3 A2 03
        mov     ax, si                          ; 8B C6
        add     si, 0xe                         ; 83 C6 0E
        mov     word ptr [0x5ba], ax            ; A3 BA 05
        mov     ax, si                          ; 8B C6
        add     si, 0xe                         ; 83 C6 0E
        mov     word ptr [0x5da], ax            ; A3 DA 05
        mov     word ptr [0x4dc], si            ; 89 36 DC 04
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        sub     ax, word ptr [0x468]            ; 2B 06 68 04
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A FF FF 00 00 [FIXUP]
        sub     di, di                          ; 2B FF
        jmp     L_0161                          ; EB 12
L_014F:
        mov     ax, word ptr [0x514]            ; A1 14 05
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     bx, si                          ; 8B DE
        add     si, 0xe                         ; 83 C6 0E
        mov     ax, word ptr [0x518]            ; A1 18 05
        mov     word ptr [bx + 6], ax           ; 89 47 06
        inc     di                              ; 47
L_0161:
        cmp     word ptr [0x5e2], di            ; 39 3E E2 05
        jg      L_014F                          ; 7F E8
        mov     word ptr [si + 2], 0            ; C7 44 02 00 00
        mov     bx, si                          ; 8B DE
        add     si, 0xe                         ; 83 C6 0E
        mov     ax, word ptr [0x50e]            ; A1 0E 05
        mov     word ptr [bx + 6], ax           ; 89 47 06
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_017D -- offset 0x017D -- 47 instr
; Funcion mediana (47 instr, 4 calls).
; tags: calls_gdi, medium
; callers: sub_002F
; calls (inter): GDI.CREATEBITMAP, GDI.CREATEPATTERNBRUSH, GDI.DELETEOBJECT, GDI.GETSTOCKOBJECT
;----------------------------------------------------------------------
L_017D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
L_0189:
        mov     si, word ptr [bp - 0x12]        ; 8B 76 EE
        shl     si, 1                           ; D1 E6
        mov     ax, 0x55                        ; B8 55 00
        mov     cl, byte ptr [bp - 0x12]        ; 8A 4E EE
        and     cl, 1                           ; 80 E1 01
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp + si - 0x10], ax   ; 89 42 F0
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        cmp     word ptr [bp - 0x12], 8         ; 83 7E EE 08
        jl      L_0189                          ; 7C E4
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    ax                              ; 50
        call    far GDI.CREATEPATTERNBRUSH      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x550], ax            ; A3 50 05
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A DD 01 00 00 [FIXUP]
        mov     word ptr [0x636], ax            ; A3 36 06
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A E9 01 00 00 [FIXUP]
        mov     word ptr [0x604], ax            ; A3 04 06
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x41c], ax            ; A3 1C 04
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_01F5 -- offset 0x01F5 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_gdi, small
; callers: sub_0233
; calls (inter): GDI.GETOBJECT
;----------------------------------------------------------------------
L_01F5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_175                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si], ax               ; 89 04
        mov     di, ax                          ; 8B F8
        push    di                              ; 57
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [si + 2], ax           ; 89 44 02
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0233 -- offset 0x0233 -- 255 instr
; Funcion compleja: 255 instrucciones, 11 llamadas, 1 branches.
; tags: calls_gdi, calls_kernel, complex
; callers: sub_002F
; calls (intra): sub_01F5, sub_08B8
; calls (inter): GDI.GETSTOCKOBJECT, GDI.GETTEXTMETRICS, KERNEL.FINDRESOURCE, KERNEL.FREERESOURCE, KERNEL.GETMODULEHANDLE, KERNEL.GLOBALUNLOCK (+3 mas)
;----------------------------------------------------------------------
L_0233:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x32                        ; 83 EC 32
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, 0xc15                       ; B8 15 0C
        mov     dx, OFFSET _SEG1_0C15           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x614], ax            ; A3 14 06
        push    ax                              ; 50
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, OFFSET _entry_416           ; B8 6A 02 [FIXUP]
        mov     dx, OFFSET _entry_416           ; BA 6D 02 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.SETRESOURCEHANDLER   ; 9A 72 02 00 00 [FIXUP]
        push    word ptr [0x614]                ; FF 36 14 06
        mov     ax, 3                           ; B8 03 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, OFFSET _entry_416           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_416           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.SETRESOURCEHANDLER   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x614]                ; FF 36 14 06
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xc1d                       ; B8 1D 0C
        mov     dx, OFFSET _SEG1_0C1D           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        push    word ptr [0x614]                ; FF 36 14 06
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x460], ax            ; A3 60 04
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x45e], ax            ; A3 5E 04
        mov     ax, 0x40                        ; B8 40 00
        cdq                                     ; 99
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     cx, word ptr es:[bx]            ; 26 8B 0F
        mov     word ptr [0x46e], cx            ; 89 0E 6E 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x46a], ax            ; A3 6A 04
        mov     ax, 0x40                        ; B8 40 00
        cdq                                     ; 99
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     cx, word ptr es:[bx]            ; 26 8B 0F
        mov     word ptr [0x470], cx            ; 89 0E 70 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x46c], ax            ; A3 6C 04
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [0x468], ax            ; A3 68 04
        mov     ax, word ptr [0x46a]            ; A1 6A 04
        add     ax, 8                           ; 05 08 00
        mov     word ptr [0x466], ax            ; A3 66 04
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     cx, word ptr es:[bx]            ; 26 8B 0F
        mov     word ptr [0x476], cx            ; 89 0E 76 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x472], ax            ; A3 72 04
        mov     ax, 0x20                        ; B8 20 00
        cdq                                     ; 99
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     cx, word ptr es:[bx]            ; 26 8B 0F
        mov     word ptr [0x478], cx            ; 89 0E 78 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x474], ax            ; A3 74 04
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x47a], ax            ; A3 7A 04
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x47e], ax            ; A3 7E 04
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        add     word ptr [bp - 4], 2            ; 83 46 FC 02
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x480], ax            ; A3 80 04
        mov     word ptr [bp - 0x28], 0x3de     ; C7 46 D8 DE 03
        mov     word ptr [bp - 0x2e], 0xa       ; C7 46 D2 0A 00
        jmp     L_037A                          ; EB 1A
L_0360:
        mov     bx, word ptr [bp - 0x28]        ; 8B 5E D8
        add     word ptr [bp - 0x28], 4         ; 83 46 D8 04
        les     di, ptr [bp - 4]                ; C4 7E FC
        mov     ax, word ptr es:[di]            ; 26 8B 05
        mov     dx, word ptr es:[di + 2]        ; 26 8B 55 02
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        add     word ptr [bp - 4], 4            ; 83 46 FC 04
L_037A:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        dec     word ptr [bp - 0x2e]            ; FF 4E D2
        or      ax, ax                          ; 0B C0
        jne     L_0360                          ; 75 DC
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x30]            ; FF 76 D0
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
        call    L_08B8                          ; E8 21 05
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        mov     ax, 0x546                       ; B8 46 05
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x3be]                ; FF 36 BE 03
        call    far _entry_375                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.GETSTOCKOBJECT          ; 9A D1 01 00 00 [FIXUP]
        mov     word ptr [0x484], ax            ; A3 84 04
        push    word ptr [0x3b2]                ; FF 36 B2 03
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [0x5ec], ax            ; A3 EC 05
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [0x422], ax            ; A3 22 04
        mov     si, 0x424                       ; BE 24 04
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 15 FE
        mov     ax, 0x7ffe                      ; B8 FE 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 0A FE
        mov     ax, 0x7ffd                      ; B8 FD 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 FF FD
        mov     ax, 0x7ffc                      ; B8 FC 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 F4 FD
        mov     ax, 0x7ffb                      ; B8 FB 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 E9 FD
        mov     ax, 0x7ffa                      ; B8 FA 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 DE FD
        mov     ax, 0x7ff9                      ; B8 F9 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 D3 FD
        mov     ax, 0x7ff8                      ; B8 F8 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 C8 FD
        mov     ax, 0x7ff7                      ; B8 F7 7F
        push    ax                              ; 50
        push    si                              ; 56
        add     si, 6                           ; 83 C6 06
        call    L_01F5                          ; E8 BD FD
        mov     ax, 0x7ff6                      ; B8 F6 7F
        push    ax                              ; 50
        mov     ax, 0x538                       ; B8 38 05
        push    ax                              ; 50
        call    L_01F5                          ; E8 B2 FD
        mov     ax, word ptr [0x480]            ; A1 80 04
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x428]            ; 03 06 28 04
        push    ax                              ; 50
        push    word ptr [0x5ec]                ; FF 36 EC 05
        call    far _SEG1_524C                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x506], ax            ; A3 06 05
        mov     ax, word ptr [0x456]            ; A1 56 04
        sar     ax, 1                           ; D1 F8
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x45a], ax            ; A3 5A 04
        mov     ax, word ptr [0x458]            ; A1 58 04
        cdq                                     ; 99
        mov     cx, 3                           ; B9 03 00
        idiv    cx                              ; F7 F9
        mov     word ptr [0x45c], ax            ; A3 5C 04
        sar     word ptr [0x426], 1             ; D1 3E 26 04
        mov     ax, 0x4f0                       ; B8 F0 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x47e]                ; FF 36 7E 04
        mov     ax, word ptr [0x506]            ; A1 06 05
        sub     ax, word ptr [0x428]            ; 2B 06 28 04
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        push    ax                              ; 50
        mov     ax, word ptr [0x426]            ; A1 26 04
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
        push    ax                              ; 50
        mov     ax, word ptr [0x506]            ; A1 06 05
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A B3 04 00 00 [FIXUP]
        mov     ax, 0x398                       ; B8 98 03
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x426]            ; A1 26 04
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
        push    ax                              ; 50
        push    word ptr [0x506]                ; FF 36 06 05
        call    far _SEG1_643D                  ; 9A 47 01 00 00 [FIXUP]
        mov     ax, word ptr [0x506]            ; A1 06 05
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [0x464], ax            ; A3 64 04
        mov     ax, word ptr [0x426]            ; A1 26 04
        add     ax, word ptr [0x42c]            ; 03 06 2C 04
        mov     cx, 3                           ; B9 03 00
        imul    cx                              ; F7 E9
        mov     word ptr [0x462], ax            ; A3 62 04
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04D6 -- offset 0x04D6 -- 16 instr
; Funcion sin clasificar definitiva (16 instr).
; tags: small
; callers: sub_002F
;----------------------------------------------------------------------
L_04D6:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     es, word ptr [0x328]            ; 8E 06 28 03
        mov     ax, word ptr [0x61a]            ; A1 1A 06
        mov     word ptr es:[0x5a9b], ax        ; 26 A3 9B 5A
        mov     es, word ptr [0x32a]            ; 8E 06 2A 03
        mov     ax, word ptr [0x61c]            ; A1 1C 06
        mov     word ptr es:[0x5a9d], ax        ; 26 A3 9D 5A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_5D22                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_04FF -- offset 0x04FF -- 23 instr
; Funcion sin clasificar definitiva (23 instr).
; tags: calls_system, small
; callers: sub_0539
; calls (inter): SYSTEM.CREATESYSTEMTIMER
;----------------------------------------------------------------------
L_04FF:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET _SEG1_54A8           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_54A8           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A 21 05 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, OFFSET DISPLAY.104          ; B8 FF FF [FIXUP]
        mov     dx, OFFSET DISPLAY.104          ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A FF FF 00 00 [FIXUP]
        mov     es, word ptr [0x32c]            ; 8E 06 2C 03
        mov     word ptr es:[0x54a0], 0x5380    ; 26 C7 06 A0 54 80 53
        call    far _SEG1_5DB1                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0539 -- offset 0x0539 -- 62 instr
; Funcion mediana (62 instr, 6 calls).
; tags: calls_kernel, calls_mouse, calls_system, medium
; callers: sub_002F
; calls (intra): sub_04FF
; calls (inter): KERNEL.FATALEXIT, KERNEL.GETMODULEHANDLE, KERNEL.GETPROCADDRESS, MOUSE.INQUIRE, SYSTEM.INQUIRESYSTEM
;----------------------------------------------------------------------
L_0539:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_04FF                          ; E8 C0 FF
        mov     ax, 0xc33                       ; B8 33 0C
        mov     dx, OFFSET _SEG1_0C33           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETMODULEHANDLE      ; 9A 44 02 00 00 [FIXUP]
        push    ax                              ; 50
        mov     ax, 0xd                         ; B8 0D 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        mov     es, word ptr [0x32e]            ; 8E 06 2E 03
        mov     word ptr es:[0x5a97], ax        ; 26 A3 97 5A
        mov     word ptr es:[0x5a99], dx        ; 26 89 16 99 5A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far SYSTEM.INQUIRESYSTEM        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5d4], ax            ; A3 D4 05
        mov     word ptr [0x5d6], dx            ; 89 16 D6 05
        mov     ax, 0x5f2                       ; B8 F2 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KEYBOARD.1                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xc                         ; 3D 0C 00
        je      L_058D                          ; 74 09
        mov     ax, 0xc                         ; B8 0C 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A E6 05 00 00 [FIXUP]
L_058D:
        mov     word ptr [0x1c0], 0             ; C7 06 C0 01 00 00
        mov     word ptr [0x47c], 1             ; C7 06 7C 04 01 00
        mov     ax, 0x63e                       ; B8 3E 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far MOUSE.INQUIRE               ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [0x63e], 0             ; 80 3E 3E 06 00
        jne     L_05B6                          ; 75 0C
        mov     word ptr [0x1c0], 0xffff        ; C7 06 C0 01 FF FF
        mov     word ptr [0x47c], 0             ; C7 06 7C 04 00 00
L_05B6:
        mov     ax, word ptr [0x47c]            ; A1 7C 04
        mov     word ptr [0x1b4], ax            ; A3 B4 01
        mov     es, word ptr [0x330]            ; 8E 06 30 03
        mov     ax, word ptr [0x644]            ; A1 44 06
        mov     word ptr es:[0x5ab9], ax        ; 26 A3 B9 5A
        mov     es, word ptr [0x332]            ; 8E 06 32 03
        mov     ax, word ptr [0x646]            ; A1 46 06
        mov     word ptr es:[0x5abb], ax        ; 26 A3 BB 5A
        mov     ax, 0x61a                       ; B8 1A 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far DISPLAY.101                 ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 4                           ; 3D 04 00
        je      L_05EA                          ; 74 09
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
L_05EA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05EE -- offset 0x05EE -- 5 instr
; Funcion hoja (no llama a otras, 5 instr): probable helper aritmetico/conversion.
; tags: leaf
; callers: sub_002F
;----------------------------------------------------------------------
L_05EE:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x62], 0              ; C7 06 62 00 00 00
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_05F9 -- offset 0x05F9 -- 93 instr
; Funcion compleja: 93 instrucciones, 4 llamadas, 1 branches.
; tags: calls_gdi, complex
; callers: sub_002F
; calls (inter): GDI.CREATECOMPATIBLEDC, GDI.CREATEDC, GDI.CREATERECTRGN, GDI.GETDEVICECAPS
;----------------------------------------------------------------------
L_05F9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATERECTRGN           ; 9A 16 06 00 00 [FIXUP]
        mov     word ptr [0x5bc], ax            ; A3 BC 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATERECTRGN           ; 9A 24 06 00 00 [FIXUP]
        mov     word ptr [0x602], ax            ; A3 02 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATERECTRGN           ; 9A D0 06 00 00 [FIXUP]
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     word ptr [0x650], 0             ; C7 06 50 06 00 00
        mov     di, 0x4ae                       ; BF AE 04
        sub     si, si                          ; 2B F6
L_0636:
        mov     ax, word ptr [0x650]            ; A1 50 06
        mov     word ptr [di], ax               ; 89 05
        mov     ax, 0xc15                       ; B8 15 0C
        mov     dx, OFFSET _SEG1_0C15           ; BA 3F 02 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     byte ptr [di + 7], 0            ; C6 45 07 00
        mov     word ptr [di + 2], 1            ; C7 45 02 01 00
        mov     ax, di                          ; 8B C7
        add     di, 8                           ; 83 C7 08
        mov     word ptr [0x650], ax            ; A3 50 06
        inc     si                              ; 46
        cmp     si, 5                           ; 83 FE 05
        jl      L_0636                          ; 7C CC
        mov     bx, ax                          ; 8B D8
        push    word ptr [bx + 4]               ; FF 77 04
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3b2], ax            ; A3 B2 03
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A 9E 06 00 00 [FIXUP]
        mov     word ptr [0x510], ax            ; A3 10 05
        mov     es, word ptr [0x334]            ; 8E 06 34 03
        mov     word ptr es:[0x5ab5], ax        ; 26 A3 B5 5A
        mov     bx, word ptr [0x650]            ; 8B 1E 50 06
        push    word ptr [bx + 4]               ; FF 77 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x50e], ax            ; A3 0E 05
        mov     es, word ptr [0x336]            ; 8E 06 36 03
        mov     word ptr es:[0x5ab7], ax        ; 26 A3 B7 5A
        mov     ax, 0x546                       ; B8 46 05
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x50e]                ; FF 36 0E 05
        call    far _SEG1_643D                  ; 9A 99 04 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x50e]                ; FF 36 0E 05
        call    far GDI.CREATERECTRGN           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x41a], ax            ; A3 1A 04
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_06DD -- offset 0x06DD -- 162 instr
; Funcion compleja: 162 instrucciones, 3 llamadas, 2 branches.
; tags: calls_kernel, complex
; callers: sub_002F
; calls (inter): KERNEL.ANSILOWER, KERNEL.GETPROFILEINT, KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_06DD:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0xc3a                       ; B8 3A 0C
        mov     dx, OFFSET _SEG1_0C3A           ; BA 06 07 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xc51                       ; B8 51 0C
        mov     dx, OFFSET _SEG1_0C51           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 16 07 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_86D0                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xc3a                       ; B8 3A 0C
        mov     dx, OFFSET _SEG1_0C3A           ; BA 24 07 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xc72                       ; B8 72 0C
        mov     dx, OFFSET _SEG1_0C72           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_2E51                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xc3a                       ; B8 3A 0C
        mov     dx, OFFSET _SEG1_0C3A           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xc61                       ; B8 61 0C
        mov     dx, OFFSET _SEG1_0C61           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xc4f                       ; B8 4F 0C
        mov     dx, OFFSET _SEG1_0C4F           ; BA FF FF [FIXUP]
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 2]                    ; 8D 46 FE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        mov     es, word ptr [0x338]            ; 8E 06 38 03
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        cmp     byte ptr es:[0xc4f], al         ; 26 38 06 4F 0C
        je      L_0767                          ; 74 12
        mov     al, byte ptr es:[0xc4f]         ; 26 A0 4F 0C
        cwde                                    ; 98
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.ANSILOWER            ; 9A FF FF 00 00 [FIXUP]
        cmp     byte ptr [bp - 2], al           ; 38 46 FE
        jne     L_076C                          ; 75 05
L_0767:
        mov     ax, 1                           ; B8 01 00
        jmp     L_076E                          ; EB 02
L_076C:
        sub     ax, ax                          ; 2B C0
L_076E:
        mov     es, word ptr [0x33a]            ; 8E 06 3A 03
        mov     word ptr es:[0x5aa3], ax        ; 26 A3 A3 5A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A 91 07 00 00 [FIXUP]
        mov     word ptr [0x608], ax            ; A3 08 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A A2 07 00 00 [FIXUP]
        mov     word ptr [0x656], ax            ; A3 56 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f04                      ; B8 04 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A B3 07 00 00 [FIXUP]
        mov     word ptr [0x5ee], ax            ; A3 EE 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f80                      ; B8 80 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A C4 07 00 00 [FIXUP]
        mov     word ptr [0x5f0], ax            ; A3 F0 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f81                      ; B8 81 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x4f8], ax            ; A3 F8 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f00                      ; B8 00 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_174                  ; 9A E6 07 00 00 [FIXUP]
        mov     word ptr [0x62c], ax            ; A3 2C 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_174                  ; 9A F7 07 00 00 [FIXUP]
        mov     word ptr [0x3da], ax            ; A3 DA 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_174                  ; 9A 08 08 00 00 [FIXUP]
        mov     word ptr [0x48c], ax            ; A3 8C 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f03                      ; B8 03 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_174                  ; 9A 19 08 00 00 [FIXUP]
        mov     word ptr [0x3b6], ax            ; A3 B6 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f04                      ; B8 04 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_174                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x5d8], ax            ; A3 D8 05
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_150                  ; 9A 3D 08 00 00 [FIXUP]
        mov     word ptr [0x420], ax            ; A3 20 04
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_150                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3dc], ax            ; A3 DC 03
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0848 -- offset 0x0848 -- 43 instr
; Dispatcher: tabla de decisiones cmp+jcc (43 instr).
; tags: dispatcher
; callers: sub_08B8
;----------------------------------------------------------------------
L_0848:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], ss           ; 8C 56 FE
        sub     si, si                          ; 2B F6
L_085A:
        mov     byte ptr [bp - 6], 0            ; C6 46 FA 00
L_085E:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0885                          ; 75 1E
        inc     word ptr [bp + 4]               ; FF 46 04
        jmp     L_085E                          ; EB F2
L_086C:
        cmp     byte ptr [bp - 0xe], 0x39       ; 80 7E F2 39
        jg      L_0892                          ; 7F 20
        mov     al, 0xa                         ; B0 0A
        imul    byte ptr [bp - 6]               ; F6 6E FA
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        add     al, byte ptr es:[bx]            ; 26 02 07
        sub     al, 0x30                        ; 2C 30
        mov     byte ptr [bp - 6], al           ; 88 46 FA
L_0885:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0xe], al         ; 88 46 F2
        cmp     al, 0x30                        ; 3C 30
        jge     L_086C                          ; 7D DA
L_0892:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     si                              ; 46
        cmp     si, 3                           ; 83 FE 03
        jl      L_085A                          ; 7C B6
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_08B8 -- offset 0x08B8 -- 62 instr
; Funcion mediana (62 instr, 3 calls).
; tags: calls_gdi, calls_kernel, medium
; callers: sub_0233
; calls (intra): sub_0848
; calls (inter): GDI.CREATESOLIDBRUSH, KERNEL.GETPROFILESTRING
;----------------------------------------------------------------------
L_08B8:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        mov     di, 0x3bc                       ; BF BC 03
        mov     word ptr [bp - 0x20], 0x3de     ; C7 46 E0 DE 03
        sub     si, si                          ; 2B F6
L_08CA:
        mov     ax, 0xc42                       ; B8 42 0C
        mov     dx, OFFSET _SEG1_0C42           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     es, word ptr [0x33c]            ; 8E 06 3C 03
        mov     bl, byte ptr es:[si + 0xbe4]    ; 26 8A 9C E4 0B
        sub     bh, bh                          ; 2A FF
        lea     ax, [bx + 0xc83]                ; 8D 87 83 0C
        mov     dx, OFFSET _SEG1_0C83           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x62e4                      ; B8 E4 62
        mov     dx, OFFSET _SEG1_62E4           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 43 07 00 00 [FIXUP]
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
        cmp     byte ptr [bp - 0x1c], 0         ; 80 7E E4 00
        je      L_091E                          ; 74 0E
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0848                          ; E8 30 FF
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     word ptr [bp - 0x22], dx        ; 89 56 DE
L_091E:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        call    far GDI.CREATESOLIDBRUSH        ; 9A FF FF 00 00 [FIXUP]
        mov     dx, ds                          ; 8C DA
        mov     word ptr [di], ax               ; 89 05
        add     di, 2                           ; 83 C7 02
        mov     bx, word ptr [bp - 0x20]        ; 8B 5E E0
        add     word ptr [bp - 0x20], 4         ; 83 46 E0 04
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     dx, word ptr [bp - 0x22]        ; 8B 56 DE
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [bx + 2], dx           ; 89 57 02
        inc     si                              ; 46
        cmp     si, 0xa                         ; 83 FE 0A
        jl      L_08CA                          ; 7C 82
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_094E -- offset 0x094E -- 120 instr
; Funcion compleja: 120 instrucciones, 1 llamadas, 0 branches.
; tags: calls_gdi, complex, far
; callers: sub_002F
; calls (inter): GDI.GETTEXTMETRICS
;----------------------------------------------------------------------
L_094E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x22                        ; 83 EC 22
        call    far _SEG1_38D1                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A C2 03 00 00 [FIXUP]
        push    word ptr [bp - 0x22]            ; FF 76 DE
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x54a]            ; A1 4A 05
        mov     word ptr [0x18e], ax            ; A3 8E 01
        mov     ax, word ptr [0x54c]            ; A1 4C 05
        mov     word ptr [0x190], ax            ; A3 90 01
        mov     ax, word ptr [0x432]            ; A1 32 04
        mov     word ptr [0x192], ax            ; A3 92 01
        mov     ax, word ptr [0x446]            ; A1 46 04
        mov     word ptr [0x194], ax            ; A3 94 01
        mov     ax, word ptr [0x506]            ; A1 06 05
        mov     word ptr [0x196], ax            ; A3 96 01
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        mov     word ptr [0x198], ax            ; A3 98 01
        mov     ax, word ptr [0x480]            ; A1 80 04
        mov     word ptr [0x19a], ax            ; A3 9A 01
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0x47e]                ; F7 2E 7E 04
        mov     word ptr [0x19c], ax            ; A3 9C 01
        mov     ax, 5                           ; B8 05 00
        imul    word ptr [0x480]                ; F7 2E 80 04
        mov     word ptr [0x19e], ax            ; A3 9E 01
        mov     ax, word ptr [0x460]            ; A1 60 04
        mov     word ptr [0x1a0], ax            ; A3 A0 01
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        mov     word ptr [0x1a2], ax            ; A3 A2 01
        mov     ax, word ptr [0x46a]            ; A1 6A 04
        mov     word ptr [0x1a4], ax            ; A3 A4 01
        mov     ax, word ptr [0x46c]            ; A1 6C 04
        mov     word ptr [0x1a6], ax            ; A3 A6 01
        mov     ax, word ptr [0x472]            ; A1 72 04
        mov     word ptr [0x1a8], ax            ; A3 A8 01
        mov     ax, word ptr [0x474]            ; A1 74 04
        mov     word ptr [0x1aa], ax            ; A3 AA 01
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [0x1ac], ax            ; A3 AC 01
        mov     ax, word ptr [0x54a]            ; A1 4A 05
        mov     word ptr [0x1ae], ax            ; A3 AE 01
        mov     ax, word ptr [0x54c]            ; A1 4C 05
        sub     ax, word ptr [0x506]            ; 2B 06 06 05
        mov     word ptr [0x1b0], ax            ; A3 B0 01
        mov     ax, word ptr [0x47a]            ; A1 7A 04
        mov     word ptr [0x1b2], ax            ; A3 B2 01
        mov     ax, word ptr [0x434]            ; A1 34 04
        mov     word ptr [0x1b6], ax            ; A3 B6 01
        mov     ax, word ptr [0x444]            ; A1 44 04
        mov     word ptr [0x1b8], ax            ; A3 B8 01
        mov     word ptr [0x1ba], 1             ; C7 06 BA 01 01 00
        mov     es, word ptr [0x33e]            ; 8E 06 3E 03
        mov     ax, word ptr es:[0x5aa3]        ; 26 A1 A3 5A
        mov     word ptr [0x1bc], ax            ; A3 BC 01
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        call    far _SEG1_1396                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x18], 0              ; C7 06 18 00 00 00
        inc     word ptr [0x51c]                ; FF 06 1C 05
        mov     ax, word ptr [0x4dc]            ; A1 DC 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 60 0A 00 00 [FIXUP]
        mov     byte ptr [si + 0x38], 0         ; C6 44 38 00
        push    si                              ; 56
        push    word ptr [0x4dc]                ; FF 36 DC 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_1164                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x512                       ; B8 12 05
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        add     word ptr [bp - 6], ax           ; 01 46 FA
        push    si                              ; 56
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1344                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_385B                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_1810                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_3A74                  ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0A95 -- offset 0x0A95 -- 51 instr
; Funcion mediana (51 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_002F
; calls (inter): KERNEL.FINDRESOURCE, KERNEL.LOADRESOURCE, KERNEL.LOCKRESOURCE
;----------------------------------------------------------------------
L_0A95:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [0x3a0]                ; FF 36 A0 03
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A 89 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        je      L_0B19                          ; 74 62
        push    word ptr [0x3a0]                ; FF 36 A0 03
        push    ax                              ; 50
        call    far KERNEL.LOADRESOURCE         ; 9A 96 02 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.LOCKRESOURCE         ; 9A 9F 02 00 00 [FIXUP]
        mov     word ptr [0x4aa], ax            ; A3 AA 04
        mov     word ptr [0x4ac], dx            ; 89 16 AC 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        or      ax, dx                          ; 0B C2
        je      L_0B19                          ; 74 41
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
L_0AE8:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        sub     al, byte ptr [0x4aa]            ; 2A 06 AA 04
        mov     byte ptr [bx + 0x60a], al       ; 88 87 0A 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 4], ax           ; 01 46 FC
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     byte ptr es:[bx], ah            ; 26 88 27
        inc     word ptr [bp - 8]               ; FF 46 F8
        cmp     word ptr [bp - 8], 9            ; 83 7E F8 09
        jl      L_0AE8                          ; 7C CF
L_0B19:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0B1D -- offset 0x0B1D -- 125 instr
; Dispatcher: tabla de decisiones cmp+jcc (125 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_002F
; calls (inter): GDI.ADDFONTRESOURCE, KERNEL.GETPROFILESTRING, KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0B1D:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 0xa], 0x12c      ; C7 46 F6 2C 01
        jmp     L_0BAA                          ; EB 79
L_0B31:
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.LOCALALLOC           ; 9A 6E 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, 0xc49                       ; B8 49 0C
        mov     dx, OFFSET _SEG1_0C49           ; BA BF 0B [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x62e4                      ; B8 E4 62
        mov     dx, OFFSET _SEG1_62E4           ; BA CB 0B [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far KERNEL.GETPROFILESTRING     ; 9A D9 0B 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        je      L_0BA5                          ; 74 3F
        mov     di, si                          ; 8B FE
        jmp     L_0B8D                          ; EB 23
L_0B6A:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, si                          ; 03 C6
        cmp     ax, di                          ; 3B C7
        jbe     L_0B93                          ; 76 20
        cmp     byte ptr [di], 0                ; 80 3D 00
        jne     L_0B8C                          ; 75 14
        cmp     byte ptr [di + 1], 0            ; 80 7D 01 00
        jne     L_0B8C                          ; 75 0E
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, si                          ; 03 C6
        cmp     ax, di                          ; 3B C7
        jbe     L_0B8C                          ; 76 05
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
L_0B8C:
        inc     di                              ; 47
L_0B8D:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0B6A                          ; 74 D7
L_0B93:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0BAA                          ; 75 11
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A 4B 0C 00 00 [FIXUP]
        add     word ptr [bp - 0xa], 0x64       ; 83 46 F6 64
        jmp     L_0BAA                          ; EB 05
L_0BA5:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
L_0BAA:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0B31                          ; 74 81
        cmp     word ptr [bp - 0x1e], 0         ; 83 7E E2 00
        jne     L_0BB9                          ; 75 03
        jmp     L_0C49                          ; E9 90 00
L_0BB9:
        mov     di, si                          ; 8B FE
L_0BBB:
        mov     ax, 0xc49                       ; B8 49 0C
        mov     dx, OFFSET _SEG1_0C49           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x62e4                      ; B8 E4 62
        mov     dx, OFFSET _SEG1_62E4           ; BA EA 08 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A F8 08 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0C36                          ; 74 55
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ss           ; 8C 56 FC
        jmp     L_0C23                          ; EB 37
L_0BEC:
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_0C20                          ; 75 2E
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x46          ; 26 C6 07 46
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x4f          ; 26 C6 07 4F
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     byte ptr es:[bx], 0x4e          ; 26 C6 07 4E
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        jmp     L_0C2C                          ; EB 0C
L_0C20:
        inc     word ptr [bp - 6]               ; FF 46 FA
L_0C23:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_0BEC                          ; 75 C0
L_0C2C:
        lea     ax, [bp - 0x1c]                 ; 8D 46 E4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.ADDFONTRESOURCE         ; 9A FF FF 00 00 [FIXUP]
L_0C36:
        inc     di                              ; 47
        cmp     byte ptr [di - 1], 0            ; 80 7D FF 00
        jne     L_0C36                          ; 75 F9
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, si                          ; 03 C6
        cmp     ax, di                          ; 3B C7
        jbe     L_0C49                          ; 76 03
        jmp     L_0BBB                          ; E9 72 FF
L_0C49:
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C55 -- offset 0x0C55 -- 15 instr
; Funcion sin clasificar definitiva (15 instr).
; tags: small
; callers: sub_002F
; calls (intra): sub_0C7A, sub_0CE9, sub_0D34, sub_0D86, sub_0DDC, sub_0E2E (+4 mas)
;----------------------------------------------------------------------
L_0C55:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        call    L_0C7A                          ; E8 1F 00
        call    L_0CE9                          ; E8 8B 00
        call    L_0D34                          ; E8 D3 00
        call    L_0DDC                          ; E8 78 01
        call    L_0D86                          ; E8 1F 01
        call    L_0E80                          ; E8 16 02
        call    L_105F                          ; E8 F2 03
        call    L_1112                          ; E8 A2 04
        call    L_10B5                          ; E8 42 04
        call    L_0E2E                          ; E8 B8 01
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0C7A -- offset 0x0C7A -- 38 instr
; Funcion mediana (38 instr, 2 calls).
; tags: calls_kernel, medium
; callers: sub_0C55, sub_16A4
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0C7A:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     ax, word ptr [0x510]            ; A1 10 05
        cdq                                     ; 99
        mov     cx, word ptr [0x466]            ; 8B 0E 66 04
        idiv    cx                              ; F7 F9
        mov     word ptr [0x52a], ax            ; A3 2A 05
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     word ptr [0x528], 1             ; C7 06 28 05 01 00
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A F8 0C 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     word ptr [si + 0x16], 0x8001    ; C7 44 16 01 80
        mov     word ptr [si + 0x18], 0         ; C7 44 18 00 00
        mov     ax, word ptr [0x4f8]            ; A1 F8 04
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        mov     word ptr [si + 2], OFFSET _SEG1_6308 ; C7 44 02 FF FF [FIXUP]
        mov     word ptr [si + 4], OFFSET _SEG1_6308 ; C7 44 04 FF FF [FIXUP]
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     word ptr [si], 0xb              ; C7 04 0B 00
        mov     word ptr [si + 0x10], 2         ; C7 44 10 02 00
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 24 0D 00 00 [FIXUP]
        push    si                              ; 56
        call    far KERNEL.LOCALFREE            ; 9A 2C 0D 00 00 [FIXUP]
        mov     word ptr [0x634], 0             ; C7 06 34 06 00 00
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0CE9 -- offset 0x0CE9 -- 26 instr
; Funcion sin clasificar definitiva (26 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0CE9:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 43 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 0x16], 0x8000    ; C7 47 16 00 80
        mov     word ptr [bx + 0x18], 0         ; C7 47 18 00 00
        mov     word ptr [bx], 0x80             ; C7 07 80 00
        mov     word ptr [bx + 2], OFFSET _entry_306 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_306 ; C7 47 04 FF FF [FIXUP]
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 76 0D 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 7E 0D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D34 -- offset 0x0D34 -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0D34:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 95 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0xbee     ; C7 47 16 EE 0B
        mov     word ptr [bx + OFFSET _SEG1_0BEE], 0xffff ; C7 47 18 FF FF [FIXUP]
        mov     word ptr [bx + 2], OFFSET _SEG1_6311 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_6311 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 8], 5            ; C7 47 08 05 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A CC 0D 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A D4 0D 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0D86 -- offset 0x0D86 -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0D86:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A EB 0D 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0x8002    ; C7 47 16 02 80
        mov     word ptr [bx + 0x18], 0         ; C7 47 18 00 00
        mov     word ptr [bx + 2], OFFSET _SEG1_6302 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_6302 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 8], 0x18         ; C7 47 08 18 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx], 8                ; C7 07 08 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 1E 0E 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 26 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0DDC -- offset 0x0DDC -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0DDC:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 3D 0E 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0xbfa     ; C7 47 16 FA 0B
        mov     word ptr [bx + OFFSET _SEG1_0BFA], 0xffff ; C7 47 18 FF FF [FIXUP]
        mov     word ptr [bx + 2], OFFSET _SEG1_6305 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_6305 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 8], 6            ; C7 47 08 06 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 70 0E 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 78 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E2E -- offset 0x0E2E -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0E2E:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 8F 0E 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0x8003    ; C7 47 16 03 80
        mov     word ptr [bx + 0x18], 0         ; C7 47 18 00 00
        mov     word ptr [bx + 2], OFFSET _SEG1_7206 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_7206 ; C7 47 04 FF FF [FIXUP]
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 8], 0x2c         ; C7 47 08 2C 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A C2 0E 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A CA 0E 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0E80 -- offset 0x0E80 -- 28 instr
; Funcion sin clasificar definitiva (28 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_0E80:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 39 0B 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x656]            ; A1 56 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0xbf5     ; C7 47 16 F5 0B
        mov     word ptr [bx + OFFSET _SEG1_0BF5], 0xffff ; C7 47 18 FF FF [FIXUP]
        mov     word ptr [bx + 2], OFFSET _SEG1_630E ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_630E ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 8], 6            ; C7 47 08 06 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 9B 0B 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_0ED2 -- offset 0x0ED2 -- 134 instr
; Dispatcher: tabla de decisiones cmp+jcc (134 instr).
; tags: calls_gdi, calls_kernel, dispatcher
; callers: sub_002F
; calls (inter): GDI.CREATEBITMAP, GDI.SETBITMAPDIMENSION, KERNEL.DELETEPATHNAME, KERNEL.GLOBALALLOC, KERNEL.GLOBALFREE, KERNEL.GLOBALLOCK (+3 mas)
;----------------------------------------------------------------------
L_0ED2:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1e                        ; 83 EC 1E
        call    far KERNEL.ISSCREENGRAB         ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        je      L_0EE5                          ; 74 03
        jmp     L_105B                          ; E9 76 01
L_0EE5:
        mov     ax, 0xc29                       ; B8 29 0C
        mov     dx, OFFSET _SEG1_0C29           ; BA 5A 0F [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.OPENPATHNAME         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        inc     ax                              ; 40
        jne     L_0EFE                          ; 75 03
        jmp     L_105B                          ; E9 5D 01
L_0EFE:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A 39 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        push    ax                              ; 50
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        push    word ptr [bp - 0x12]            ; FF 76 EE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far KERNEL._LREAD               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xc29                       ; B8 29 0C
        mov     dx, OFFSET _SEG1_0C29           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.DELETEPATHNAME       ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cmp     ax, 1                           ; 3D 01 00
        je      L_0F8B                          ; 74 10
        cmp     ax, 2                           ; 3D 02 00
        jge     L_0F83                          ; 7D 03
        jmp     L_105B                          ; E9 D8 00
L_0F83:
        cmp     ax, 3                           ; 3D 03 00
        jle     L_0FCC                          ; 7E 44
        jmp     L_105B                          ; E9 D0 00
L_0F8B:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     dx, word ptr [bp - 0x16]        ; 8B 56 EA
        add     ax, 4                           ; 05 04 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A 88 03 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0x20], 0              ; C7 06 20 00 00 00
        mov     word ptr [0x24], 1              ; C7 06 24 00 01 00
        push    word ptr [bp - 0x1a]            ; FF 76 E6
L_0FBC:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_141                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_138                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_105B                          ; E9 8F 00
L_0FCC:
        les     bx, ptr [bp - 0x18]             ; C4 5E E8
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr es:[bx + 0xa]      ; 26 8B 47 0A
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     word ptr [bp - 0x1a], 3         ; 83 7E E6 03
        jne     L_1004                          ; 75 05
        mov     ax, 8                           ; B8 08 00
        jmp     L_1007                          ; EB 03
L_1004:
        mov     ax, 6                           ; B8 06 00
L_1007:
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 0x18], ax        ; 01 46 E8
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.CREATEBITMAP            ; 9A B5 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 0x1a], 3         ; 83 7E E6 03
        jne     L_1038                          ; 75 0C
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far GDI.SETBITMAPDIMENSION      ; 9A FF FF 00 00 [FIXUP]
L_1038:
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALUNLOCK         ; 9A A3 0F 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x20], 0              ; C7 06 20 00 00 00
        mov     word ptr [0x24], 1              ; C7 06 24 00 01 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        jmp     L_0FBC                          ; E9 61 FF
L_105B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_105F -- offset 0x105F -- 29 instr
; Funcion sin clasificar definitiva (29 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_105F:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A C4 10 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0xc01     ; C7 47 16 01 0C
        mov     word ptr [bx + OFFSET _SEG1_0C01], 0xffff ; C7 47 18 FF FF [FIXUP]
        mov     word ptr [bx + 2], OFFSET _SEG1_6314 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_6314 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx], 8                ; C7 07 08 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     word ptr [bx + 8], 2            ; C7 47 08 02 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A F6 10 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A FE 10 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_10B5 -- offset 0x10B5 -- 30 instr
; Funcion sin clasificar definitiva (30 instr).
; tags: calls_kernel, small
; callers: sub_0C55
; calls (inter): KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_10B5:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A 4B 11 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     word ptr [bx + 0x16], 0x8004    ; C7 47 16 04 80
        mov     word ptr [bx + 0x18], 0         ; C7 47 18 00 00
        mov     ax, word ptr [0x636]            ; A1 36 06
        mov     word ptr [bx + 0x10], ax        ; 89 47 10
        mov     word ptr [bx], 3                ; C7 07 03 00
        mov     word ptr [bx + 2], OFFSET _entry_320 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_320 ; C7 47 04 FF FF [FIXUP]
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A 82 11 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A 8A 11 00 00 [FIXUP]
        mov     word ptr [0x5b2], 0             ; C7 06 B2 05 00 00
        mov     word ptr [0x658], 0             ; C7 06 58 06 00 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; @ANALYSIS_v1
;----------------------------------------------------------------------
; sub_1112 -- offset 0x1112 -- 49 instr
; Funcion mediana (49 instr, 3 calls).
; tags: calls_kernel, medium
; callers: sub_0C55
; calls (inter): KERNEL.FINDATOM, KERNEL.LOCALALLOC, KERNEL.LOCALFREE
;----------------------------------------------------------------------
L_1112:
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [0x460]            ; A1 60 04
        mov     word ptr [0x4e4], ax            ; A3 E4 04
        mov     ax, word ptr [0x45e]            ; A1 5E 04
        mov     word ptr [0x5c6], ax            ; A3 C6 05
        mov     ax, word ptr [0x434]            ; A1 34 04
        mov     word ptr [0x4e6], ax            ; A3 E6 04
        mov     ax, word ptr [0x43e]            ; A1 3E 04
        mov     word ptr [0x5c8], ax            ; A3 C8 05
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        mov     word ptr [0x5d0], ax            ; A3 D0 05
        mov     word ptr [0x4ec], ax            ; A3 EC 04
        mov     ax, word ptr [0x480]            ; A1 80 04
        mov     word ptr [0x5ce], ax            ; A3 CE 05
        mov     word ptr [0x4ee], ax            ; A3 EE 04
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        call    far KERNEL.LOCALALLOC           ; 9A A0 0C 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [0x608]            ; A1 08 06
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     word ptr [bx + 0x16], 0xc09     ; C7 47 16 09 0C
        mov     word ptr [bx + OFFSET _SEG1_0C09], 0x1192 ; C7 47 18 92 11 [FIXUP]
        mov     word ptr [bx + 2], OFFSET _SEG1_630B ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _SEG1_630B ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 8], 8            ; C7 47 08 08 00
        mov     word ptr [bx], 0xb              ; C7 07 0B 00
        mov     ax, word ptr [0x3a0]            ; A1 A0 03
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _entry_57                   ; 9A D4 0C 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far KERNEL.LOCALFREE            ; 9A DA 0C 00 00 [FIXUP]
        mov     ax, 0xc09                       ; B8 09 0C
        mov     dx, OFFSET _SEG1_0C09           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x624], ax            ; A3 24 06
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3

USER_TEXT ENDS

        END
