; ======================================================================
; GDI / seg1.asm   (segment 1 of GDI)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):       139
; Total instructions:                 7249
; 
; Classification (pass8):
;   C-origin (high+medium):             34
;   ASM-origin (high+medium):           24
;   Unclear:                            72
;   Tiny / unclassified:                 9
; 
; Far API calls in this segment:     59 (24 unique)
;   Top:
;       10  LOCALFREE
;        9  GLOBALUNLOCK
;        8  GLOBALLOCK
;        4  GLOBALFREE
;        3  GLOBALALLOC
;        2  FREELIBRARY
;        2  LOCALALLOC
;        2  LOCKRESOURCE
; ======================================================================
; AUTO-GENERATED from original GDI segment 1
; segment_size=16476 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

GDI_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; CREATECOMPATIBLEDC  (offset 0x0000, size 82 bytes)
;-----------------------------------------------------------------------
CREATECOMPATIBLEDC PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        jne     L_0016                          ; 75 04
        mov     si, word ptr [0x108]            ; 8B 36 08 01
;   [conditional branch target (if/else)] L_0016
L_0016:
        mov     si, word ptr [si]               ; 8B 34
        xor     ax, ax                          ; 33 C0
        mov     dx, word ptr [si + 0xc]         ; 8B 54 0C
        mov     cx, word ptr [si + 0x1a]        ; 8B 4C 1A
        cmp     word ptr [si + 2], 6            ; 83 7C 02 06
        jl      L_0046                          ; 7C 20
        cmp     word ptr [si + 2], 8            ; 83 7C 02 08
        jg      L_0046                          ; 7F 1A
        mov     bx, dx                          ; 8B DA
        mov     bx, word ptr [bx]               ; 8B 1F
        test    word ptr [bx + 0x26], 1         ; F7 47 26 01 00
        je      L_0046                          ; 74 0F
        ; constant WM_CREATE
        mov     bl, 1                           ; B3 01
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0058                          ; E8 12 00
;   [conditional branch target (if/else)] L_0046
L_0046:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CREATECOMPATIBLEDC ENDP


;-----------------------------------------------------------------------
; CREATEDC  (offset 0x0052, size 4 bytes)
;-----------------------------------------------------------------------
CREATEDC PROC FAR
        xor     bl, bl                          ; 32 DB
        jmp     L_0058                          ; EB 02
CREATEDC ENDP


;-----------------------------------------------------------------------
; CREATEIC  (offset 0x0056, size 2 bytes)
;-----------------------------------------------------------------------
CREATEIC PROC FAR
        ; constant GMEM_ZEROINIT
        mov     bl, 0x80                        ; B3 80
CREATEIC ENDP


;-----------------------------------------------------------------------
; INTERNALCREATEDC  (offset 0x0058, size 1141 bytes)
;-----------------------------------------------------------------------
INTERNALCREATEDC PROC FAR
;   [sub-routine] L_0058
L_0058:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    dx                              ; 52
        push    cx                              ; 51
        sub     sp, 0xa8                        ; 81 EC A8 00
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_04C5                          ; E8 51 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_04C5                          ; E8 45 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2ED5                          ; E8 43 2E
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_00A5                          ; 74 0C
        cmp     ax, word ptr [0x12]             ; 3B 06 12 00
        jne     L_00A8                          ; 75 09
        cmp     byte ptr [bp - 4], 0            ; 80 7E FC 00
        je      L_00C4                          ; 74 1F
;   [conditional branch target (if/else)] L_00A5
L_00A5:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
;   [conditional branch target (if/else)] L_00A8
L_00A8:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        lea     di, [bp - 0x26]                 ; 8D 7E DA
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     cx, 9                           ; B9 09 00
        xor     ax, ax                          ; 33 C0
        rep stosw word ptr es:[di], ax          ; F3 AB
        mov     ax, 0xa0                        ; B8 A0 00
        call    L_0511                          ; E8 52 04
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        jne     L_00C7                          ; 75 03
;   [conditional branch target (if/else)] L_00C4
L_00C4:
        jmp     L_04E9                          ; E9 22 04
;   [conditional branch target (if/else)] L_00C7
L_00C7:
        cmp     byte ptr [bp - 4], 1            ; 80 7E FC 01
        jne     L_00DB                          ; 75 0E
        call    L_0477                          ; E8 A7 03
        je      L_00E8                          ; 74 16
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     di, word ptr [bp - 6]           ; 8B 7E FA
        jmp     L_00EB                          ; EB 11
        nop                                     ; 90
;   [conditional branch target (if/else)] L_00DB
L_00DB:
        call    L_0227                          ; E8 49 01
        jcxz    L_00E8                          ; E3 08
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        call    L_02CC                          ; E8 E6 01
        jne     L_00EB                          ; 75 03
;   [conditional branch target (if/else)] L_00E8
L_00E8:
        jmp     L_04D5                          ; E9 EA 03
;   [branch target] L_00EB
L_00EB:
        mov     dx, di                          ; 8B D7
        mov     si, word ptr [si]               ; 8B 34
        inc     word ptr [si + 0x30]            ; FF 44 30
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     si, word ptr [di]               ; 8B 35
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        mov     di, word ptr [bp - 0x26]        ; 8B 7E DA
        mov     cx, di                          ; 8B CF
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [si + 0x72]        ; 8B 44 72
        mov     word ptr [di + 0x10], ax        ; 89 45 10
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
        mov     word ptr [di + 0x8c], ax        ; 89 85 8C 00
        add     di, 2                           ; 83 C7 02
        mov     ax, 6                           ; B8 06 00
        stosw   word ptr es:[di], ax            ; AB
        mov     bl, byte ptr [bp - 4]           ; 8A 5E FC
        and     bx, 1                           ; 81 E3 01 00
        mov     ax, word ptr [si + 0x74]        ; 8B 44 74
        add     ax, bx                          ; 03 C3
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0x76]        ; 8B 44 76
        adc     ax, 0                           ; 15 00 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
        or      al, 0x80                        ; 0C 80
        stosw   word ptr es:[di], ax            ; AB
        add     bx, bx                          ; 03 DB
        inc     word ptr [bx + si + 0x6a]       ; FF 40 6A
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        add     di, 0xa                         ; 83 C7 0A
        mov     ax, word ptr [0x14]             ; A1 14 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        stosw   word ptr es:[di], ax            ; AB
        add     di, 0x1e                        ; 83 C7 1E
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        stosw   word ptr es:[di], ax            ; AB
        mov     al, 2                           ; B0 02
        stosw   word ptr es:[di], ax            ; AB
        add     di, 0x24                        ; 83 C7 24
        dec     ax                              ; 48
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        add     di, 4                           ; 83 C7 04
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        add     di, 4                           ; 83 C7 04
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     byte ptr [di + 0xa], al         ; 88 45 0A
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        stosw   word ptr es:[di], ax            ; AB
        add     di, 0x16                        ; 83 C7 16
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        stosw   word ptr es:[di], ax            ; AB
        mov     cx, word ptr [bp - 0x18]        ; 8B 4E E8
        jcxz    L_018C                          ; E3 06
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_018C
L_018C:
        mov     si, word ptr [bp - 0x26]        ; 8B 76 DA
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_148F                          ; E8 FA 12
        or      ax, ax                          ; 0B C0
        je      L_01F2                          ; 74 59
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0xff                        ; BA FF 00
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E9C                          ; E8 F5 0C
        or      dx, dx                          ; 0B D2
        js      L_01F2                          ; 78 47
        push    si                              ; 56
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EFF                          ; E8 4C 0D
        or      dx, dx                          ; 0B D2
        js      L_01F2                          ; 78 3B
        push    si                              ; 56
        push    word ptr [0x16]                 ; FF 36 16 00
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12B6                          ; E8 F5 10
        or      ax, ax                          ; 0B C0
        je      L_01F2                          ; 74 2D
        mov     di, word ptr [si]               ; 8B 3C
        mov     ax, word ptr [0x24]             ; A1 24 00
        mov     word ptr [di + 0x12], ax        ; 89 45 12
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A12                          ; E8 3F 18
        or      ax, ax                          ; 0B C0
        je      L_01F2                          ; 74 1B
        mov     ax, word ptr [0x10]             ; A1 10 00
        cmp     ax, word ptr [bp - 0x12]        ; 3B 46 EE
        mov     ax, word ptr [0x30]             ; A1 30 00
        je      L_01E5                          ; 74 03
        mov     ax, word ptr [0x32]             ; A1 32 00
;   [conditional branch target (if/else)] L_01E5
L_01E5:
        mov     word ptr [di + 0x16], ax        ; 89 45 16
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2BC2                          ; E8 D4 29
        or      ax, ax                          ; 0B C0
        jne     L_01FF                          ; 75 0D
;   [loop start (also forward branch)] L_01F2
L_01F2:
        call    L_04B1                          ; E8 BC 02
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E8                          ; E8 ED 04
        xor     ax, ax                          ; 33 C0
        jmp     L_021A                          ; EB 1B
;   [conditional branch target (if/else)] L_01FF
L_01FF:
        and     byte ptr [di + 8], 0x7f         ; 80 65 08 7F
        mov     cx, word ptr [bp - 0x1a]        ; 8B 4E E6
        jcxz    L_0218                          ; E3 10
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_051E                          ; E8 10 03
        or      ax, ax                          ; 0B C0
        je      L_01F2                          ; 74 E0
        mov     bx, word ptr [si]               ; 8B 1C
        mov     byte ptr [bx + 2], 8            ; C6 47 02 08
;   [conditional branch target (if/else)] L_0218
L_0218:
        mov     ax, si                          ; 8B C6
;   [loop start (also forward branch)] L_021A
L_021A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;   [sub-routine] L_0227
L_0227:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     di, word ptr [0x10a]            ; 8B 3E 0A 01
;   [loop start] L_022E
L_022E:
        mov     cx, di                          ; 8B CF
        jcxz    L_023D                          ; E3 0B
        mov     di, word ptr [di]               ; 8B 3D
        cmp     ax, word ptr [di + 0x34]        ; 3B 45 34
        mov     di, word ptr [di + 0x38]        ; 8B 7D 38
        jne     L_022E                          ; 75 F2
        ret                                     ; C3
;   [conditional branch target (if/else)] L_023D
L_023D:
        mov     ax, 0x3a                        ; B8 3A 00
        call    L_0511                          ; E8 CE 02
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        je      L_027F                          ; 74 37
        les     di, ptr [bp + 0x12]             ; C4 7E 12
        call    L_15CD                          ; E8 7F 13
        add     cx, 5                           ; 83 C1 05
        and     cl, 0xfe                        ; 80 E1 FE
        mov     di, sp                          ; 8B FC
        sub     sp, cx                          ; 2B E1
        mov     si, sp                          ; 8B F4
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    si                              ; 56
        ;   ^ arg lpszDest (low/offset)
        push    es                              ; 06
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0x12]            ; FF 76 12
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     cx, 0x10c                       ; B9 0C 01
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    si                              ; 56
        ;   ^ arg lpszDest (low/offset)
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    cx                              ; 51
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCAT              ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        ;   ^ arg lpszLibFile (high/segment)
        push    si                              ; 56
        ;   ^ arg lpszLibFile (low/offset)
        ; --> LOADLIBRARY(LPSTR lpszLibFile) -> HANDLE
        call    far KERNEL.LOADLIBRARY          ; 9A FF FF 00 00 [FIXUP]
        mov     sp, di                          ; 8B E7
        cmp     ax, 0x20                        ; 3D 20 00
        jae     L_0282                          ; 73 03
;   [conditional branch target (if/else)] L_027F
L_027F:
        xor     cx, cx                          ; 33 C9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0282
L_0282:
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     di, word ptr [bp - 0x20]        ; 8B 7E E0
        xor     si, si                          ; 33 F6
        xor     bx, bx                          ; 33 DB
;   [loop start] L_028C
L_028C:
        inc     si                              ; 46
        xor     dx, dx                          ; 33 D2
        push    bx                              ; 53
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hModule
        push    dx                              ; 52
        ;   ^ arg lpszProc (high/segment)
        push    si                              ; 56
        ;   ^ arg lpszProc (low/offset)
        ; --> GETPROCADDRESS(HANDLE hModule, LPSTR lpszProc) -> FARPROC
        call    far KERNEL.GETPROCADDRESS       ; 9A FF FF 00 00 [FIXUP]
        pop     bx                              ; 5B
        mov     cx, ds                          ; 8C D9
        mov     es, cx                          ; 8E C1
        cld                                     ; FC
        mov     cx, word ptr [di]               ; 8B 0D
        add     bx, cx                          ; 03 D9
        xchg    bx, di                          ; 87 FB
        stosw   word ptr es:[di], ax            ; AB
        xchg    dx, ax                          ; 92
        stosw   word ptr es:[di], ax            ; AB
        xchg    bx, di                          ; 87 FB
        sub     bx, cx                          ; 2B D9
        cmp     bx, 0x30                        ; 83 FB 30
        jne     L_028C                          ; 75 DA
        add     bx, cx                          ; 03 D9
        mov     di, bx                          ; 8B FB
        add     di, 4                           ; 83 C7 04
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        stosw   word ptr es:[di], ax            ; AB
        mov     cx, word ptr [bp - 0x20]        ; 8B 4E E0
        mov     ax, cx                          ; 8B C1
        xchg    word ptr [0x10a], ax            ; 87 06 0A 01
        stosw   word ptr es:[di], ax            ; AB
        ret                                     ; C3
;   [sub-routine] L_02CC
L_02CC:
        mov     si, cx                          ; 8B F1
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     cx, word ptr [bp - 0xe]         ; 8B 4E F2
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di + 0x32]        ; 8B 7D 32
        or      di, di                          ; 0B FF
        je      L_0313                          ; 74 36
        mov     bx, word ptr [di]               ; 8B 1D
        mov     dl, byte ptr [bx + 0x5c]        ; 8A 57 5C
        test    dl, 1                           ; F6 C2 01
        jne     L_0313                          ; 75 2C
        test    dl, 4                           ; F6 C2 04
        je      L_02F8                          ; 74 0C
        test    dl, 2                           ; F6 C2 02
        jne     L_02F5                          ; 75 04
;   [loop start] L_02F1
L_02F1:
        call    L_0477                          ; E8 83 01
        ret                                     ; C3
;   [loop start (also forward branch)] L_02F5
L_02F5:
        xor     cx, cx                          ; 33 C9
        ret                                     ; C3
;   [loop start (also forward branch)] L_02F8
L_02F8:
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     ax, word ptr [bx + 0x6e]        ; 3B 47 6E
        jne     L_030C                          ; 75 0D
        cmp     cx, word ptr [bx + 0x70]        ; 3B 4F 70
        jne     L_030C                          ; 75 08
        test    byte ptr [bx + 0x5c], 2         ; F6 47 5C 02
        je      L_02F1                          ; 74 E7
        jmp     L_02F5                          ; EB E9
;   [conditional branch target (if/else)] L_030C
L_030C:
        mov     di, word ptr [bx + 0x68]        ; 8B 7F 68
        or      di, di                          ; 0B FF
        jne     L_02F8                          ; 75 E5
;   [conditional branch target (if/else)] L_0313
L_0313:
        mov     ax, 0x78                        ; B8 78 00
        call    L_0511                          ; E8 F8 01
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        jne     L_0321                          ; 75 03
        jmp     L_03B3                          ; E9 92 00
;   [conditional branch target (if/else)] L_0321
L_0321:
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [0x38]             ; A1 38 00
        mov     word ptr [bx + 0x74], ax        ; 89 47 74
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        mov     word ptr [bx + 0x76], ax        ; 89 47 76
        add     word ptr [0x38], 2              ; 83 06 38 00 02
        adc     word ptr [0x3a], 0              ; 83 16 3A 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, word ptr [bp + 8]           ; 0B 5E 08
        jne     L_0365                          ; 75 22
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        or      ax, ax                          ; 0B C0
        je      L_0365                          ; 74 1B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2EC4                          ; E8 75 2B
        jne     L_0365                          ; 75 14
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp + 8], dx           ; 89 56 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jcxz    L_0365                          ; E3 03
        mov     word ptr [bp - 0x18], di        ; 89 7E E8
;   [conditional branch target (if/else)] L_0365
L_0365:
        call    L_1651                          ; E8 E9 12
        mov     di, word ptr [bp - 0x1e]        ; 8B 7E E2
        inc     byte ptr [di + 3]               ; FE 45 03
        mov     ax, word ptr [di]               ; 8B 05
        mov     dx, ds                          ; 8C DA
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        call    L_0456                          ; E8 DE 00
        dec     byte ptr [di + 3]               ; FE 4D 03
        call    L_1683                          ; E8 05 13
        sub     ax, 0x68                        ; 2D 68 00
        jne     L_03B3                          ; 75 30
        mov     bx, word ptr [di]               ; 8B 1D
        mov     cx, word ptr [0x21e]            ; 8B 0E 1E 02
        mov     dx, word ptr [0x10]             ; 8B 16 10 00
        cmp     dx, word ptr [bp - 0xa]         ; 3B 56 F6
        jne     L_039D                          ; 75 0B
        mov     cx, word ptr [0x222]            ; 8B 0E 22 02
        mov     dx, word ptr [bp - 0x26]        ; 8B 56 DA
        mov     word ptr [0x108], dx            ; 89 16 08 01
;   [conditional branch target (if/else)] L_039D
L_039D:
        push    cx                              ; 51
        ;   ^ arg wFlags
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [bx + 0x1a]            ; FF 77 1A
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bx, word ptr [di]               ; 8B 1D
        mov     word ptr [bx + 0x72], ax        ; 89 47 72
        or      ax, ax                          ; 0B C0
        jne     L_03CD                          ; 75 1A
;   [loop start (also forward branch)] L_03B3
L_03B3:
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        jcxz    L_03CA                          ; E3 12
        mov     bx, word ptr [0x10a]            ; 8B 1E 0A 01
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x38]        ; 8B 47 38
        mov     word ptr [0x10a], ax            ; A3 0A 01
        push    cx                              ; 51
        ;   ^ arg hLibModule
        ; --> FREELIBRARY(HANDLE hLibModule) -> VOID
        call    far KERNEL.FREELIBRARY          ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_03CA
L_03CA:
        xor     ax, ax                          ; 33 C0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_03CD
L_03CD:
        call    L_0477                          ; E8 A7 00
        je      L_03B3                          ; 74 E1
        mov     bx, word ptr [di]               ; 8B 1D
        test    word ptr [bx + 0x26], 2         ; F7 47 26 02 00
        je      L_040D                          ; 74 32
        cmp     byte ptr [bp - 4], 0x80         ; 80 7E FC 80
        je      L_040D                          ; 74 2C
        push    di                              ; 57
        push    si                              ; 56
        call    far _entry_352                  ; 9A FF FF 00 00 [FIXUP]
        xor     cx, cx                          ; 33 C9
        lea     si, [0x111]                     ; 8D 36 11 01
        lea     di, [bp - 0xb0]                 ; 8D BE 50 FF
        push    ax                              ; 50
        push    ds                              ; 1E
        push    si                              ; 56
        push    cx                              ; 51
        push    ss                              ; 16
        push    di                              ; 57
        call    far KERNEL.GETTEMPFILENAME      ; 9A FF FF 00 00 [FIXUP]
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        pop     si                              ; 5E
        pop     di                              ; 5F
        or      ax, ax                          ; 0B C0
        je      L_03B3                          ; 74 A6
;   [conditional branch target (if/else)] L_040D
L_040D:
        mov     bx, word ptr [di]               ; 8B 1D
        push    word ptr [bx + 0x72]            ; FF 77 72
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 56 03 00 00 [FIXUP]
        jcxz    L_042E                          ; E3 15
        xor     cx, cx                          ; 33 C9
        call    L_0456                          ; E8 38 00
        push    ax                              ; 50
        mov     bx, word ptr [di]               ; 8B 1D
        push    word ptr [bx + 0x72]            ; FF 77 72
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 88 01 00 00 [FIXUP]
        pop     ax                              ; 58
        or      ax, ax                          ; 0B C0
        jne     L_0433                          ; 75 05
;   [conditional branch target (if/else)] L_042E
L_042E:
        call    L_04B1                          ; E8 80 00
        jmp     L_03B3                          ; EB 80
;   [conditional branch target (if/else)] L_0433
L_0433:
        mov     dx, di                          ; 8B D7
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        cld                                     ; FC
        mov     bx, word ptr [si]               ; 8B 1C
        mov     ax, di                          ; 8B C7
        mov     di, word ptr [di]               ; 8B 3D
        xchg    word ptr [bx + 0x32], ax        ; 87 47 32
        mov     word ptr [di + 0x68], ax        ; 89 45 68
        add     di, 0x6e                        ; 83 C7 6E
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        stosw   word ptr es:[di], ax            ; AB
        mov     di, dx                          ; 8B FA
        or      si, si                          ; 0B F6
        ret                                     ; C3
;   [sub-routine] L_0456
L_0456:
        mov     ch, byte ptr [bp - 4]           ; 8A 6E FC
        and     ch, 0x80                        ; 80 E5 80
        mov     bx, word ptr [si]               ; 8B 1C
        push    dx                              ; 52
        push    ax                              ; 50
        push    cx                              ; 51
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bx + 0x10]                     ; FF 5F 10
        ret                                     ; C3
;   [sub-routine] L_0477
L_0477:
        mov     ax, 0x101                       ; B8 01 01
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        cmp     byte ptr [bp - 4], al           ; 38 46 FC
        je      L_0495                          ; 74 12
        mov     al, byte ptr [bx + 0xe]         ; 8A 47 0E
        mov     ah, byte ptr [bx + 0xc]         ; 8A 67 0C
        cmp     byte ptr [bp - 4], 0x80         ; 80 7E FC 80
        je      L_0495                          ; 74 06
        mov     cx, word ptr [bx + 8]           ; 8B 4F 08
        mov     dx, word ptr [bx + 0xa]         ; 8B 57 0A
;   [conditional branch target (if/else)] L_0495
L_0495:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        xor     bx, bx                          ; 33 DB
        push    bx                              ; 53
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3C7F                          ; E8 DC 37
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        je      L_04B0                          ; 74 06
        call    L_11C0                          ; E8 13 0D
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
;   [error/early exit] L_04B0
L_04B0:
        ret                                     ; C3
;   [sub-routine] L_04B1
L_04B1:
        mov     cx, word ptr [bp - 0x1a]        ; 8B 4E E6
        jcxz    L_04C4                          ; E3 0E
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        call    far _entry_126                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_353                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_04C4
L_04C4:
        ret                                     ; C3
;   [sub-routine] L_04C5
L_04C5:
        pop     ax                              ; 58
        push    cs                              ; 0E
        push    ax                              ; 50
        jmp     far KERNEL.ADDATOM              ; EA FF FF 00 00 [FIXUP]
INTERNALCREATEDC ENDP

; Description (heuristic):
;   Cleanup / deallocation routine.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_04CD   offset=0x04CD  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_04CD, L_0500
;-------------------------------------------------------------------------
;   [sub-routine] L_04CD
L_04CD:
        pop     ax                              ; 58
        push    cs                              ; 0E
        push    ax                              ; 50
        jmp     far KERNEL.DELETEATOM           ; EA FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_04D5
L_04D5:
        lea     si, [bp - 0x26]                 ; 8D 76 DA
        ; constant WM_SIZE
        mov     di, 5                           ; BF 05 00
        call    L_0500                          ; E8 22 00
        mov     cx, word ptr [bp - 0x1c]        ; 8B 4E E4
        jcxz    L_04E9                          ; E3 06
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_04E9
L_04E9:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    L_04CD                          ; E8 DE FF
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_04CD                          ; E8 D8 FF
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    L_04CD                          ; E8 D2 FF
        xor     ax, ax                          ; 33 C0
        jmp     L_021A                          ; E9 1A FD
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0500   offset=0x0500  size=9 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0500
L_0500:
        cld                                     ; FC
;   [loop start] L_0501
L_0501:
        lodsw   ax, word ptr ss:[si]            ; 36 AD
        or      ax, ax                          ; 0B C0
        je      L_050D                          ; 74 06
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_050D
L_050D:
        dec     di                              ; 4F
        jne     L_0501                          ; 75 F1
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALALLOC(wFlags, wBytes) -> HANDLE.

;-------------------------------------------------------------------------
; sub_0511   offset=0x0511  size=5 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0511
L_0511:
        push    word ptr [0x228]                ; FF 36 28 02
        ;   ^ arg wFlags
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        ret                                     ; C3

;-----------------------------------------------------------------------
; SAVEDC  (offset 0x051E, size 165 bytes)
;-----------------------------------------------------------------------
SAVEDC PROC FAR
;   [sub-routine] L_051E
L_051E:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_053F                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 DB 31
        push    ds                              ; 1E
        add     byte ptr [bp + di], dh          ; 00 33
        ror     byte ptr [bp + di + 0x676], 0xb ; C0 8B 76 06 0B
        div     byte ptr [si + 0x70]            ; F6 74 70
        mov     si, word ptr [si]               ; 8B 34
        push    ss                              ; 16
        pop     es                              ; 07
        cld                                     ; FC
        lea     di, [bp - 8]                    ; 8D 7E F8
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        or      ax, ax                          ; 0B C0
        je      L_0562                          ; 74 08
        call    L_11C0                          ; E8 63 0C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        je      L_05AD                          ; 74 4B
;   [conditional branch target (if/else)] L_0562
L_0562:
        mov     ax, word ptr [si + 0x1c]        ; 8B 44 1C
        call    L_11C0                          ; E8 58 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        je      L_05AD                          ; 74 40
        mov     ax, 0xa0                        ; B8 A0 00
        push    ax                              ; 50
        call    L_15FE                          ; E8 8A 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_05AD                          ; 74 32
        mov     di, ax                          ; 8B F8
        mov     di, word ptr [di]               ; 8B 3D
        push    ds                              ; 1E
        pop     es                              ; 07
        cld                                     ; FC
        mov     bx, si                          ; 8B DE
        mov     cx, 0x50                        ; B9 50 00
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bx + 0x1c], ax        ; 89 47 1C
        mov     word ptr [bx + 0x8a], cx        ; 89 8F 8A 00
        mov     di, word ptr [bx + 0x88]        ; 8B BF 88 00
        inc     word ptr [bx + 0x88]            ; FF 87 88 00
        L_053F:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_148F                          ; E8 E4 0E
        jmp     L_05B6                          ; EB 09
;   [conditional branch target (if/else)] L_05AD
L_05AD:
        lea     si, [bp - 8]                    ; 8D 76 F8
        ; constant WM_MOVE
        mov     di, 3                           ; BF 03 00
        call    L_0500                          ; E8 4A FF
;   [unconditional branch target] L_05B6
L_05B6:
        mov     ax, di                          ; 8B C7
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SAVEDC ENDP


;-----------------------------------------------------------------------
; RESTOREDC  (offset 0x05C5, size 149 bytes)
;-----------------------------------------------------------------------
RESTOREDC PROC FAR
;   [sub-routine] L_05C5
L_05C5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_05E3                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 37 31
        daa                                     ; 27
        add     word ptr [bp + di], si          ; 01 33
        ror     byte ptr [bp + di + 0x87e], 0xb ; C0 8B 7E 08 0B
        push    word ptr [si + 0x63]            ; FF 74 63
        mov     di, word ptr [di]               ; 8B 3D
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        or      cx, cx                          ; 0B C9
        jge     L_05FB                          ; 7D 06
        add     cx, word ptr [di + 0x88]        ; 03 8D 88 00
        jl      L_064F                          ; 7C 54
;   [conditional branch target (if/else)] L_05FB
L_05FB:
        cmp     cx, 1                           ; 83 F9 01
        adc     cx, ax                          ; 13 C8
;   [loop start] L_0600
L_0600:
        cmp     word ptr [di + 0x88], cx        ; 39 8D 88 00
        jle     L_0647                          ; 7E 41
        push    cx                              ; 51
        mov     word ptr [di + 0x8a], 1         ; C7 85 8A 00 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_148C                          ; E8 77 0E
        push    word ptr [di + 0xe]             ; FF 75 0E
        push    word ptr [di + 0x1c]            ; FF 75 1C
        mov     si, word ptr [di]               ; 8B 35
        push    si                              ; 56
        mov     si, word ptr [si]               ; 8B 34
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     cx, 0x46                        ; B9 46 00
        cld                                     ; FC
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     si, sp                          ; 8B F4
        ; constant WM_MOVE
        mov     di, 3                           ; BF 03 00
        call    L_0500                          ; E8 D0 FE
        add     sp, 6                           ; 83 C4 06
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [si]               ; 8B 3C
        test    byte ptr [di + 8], 0x10         ; F6 45 08 10
        je      L_0646                          ; 74 08
        push    si                              ; 56
        call    L_1112                          ; E8 D0 0A
        and     byte ptr [di + 8], 0xef         ; 80 65 08 EF
;   [conditional branch target (if/else)] L_0646
L_0646:
        pop     cx                              ; 59
;   [conditional branch target (if/else)] L_0647
L_0647:
        L_05E3:
        mov     ax, word ptr [di + 0x88]        ; 8B 85 88 00
        cmp     ax, cx                          ; 3B C1
        ja      L_0600                          ; 77 B1
;   [conditional branch target (if/else)] L_064F
L_064F:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
RESTOREDC ENDP


;-----------------------------------------------------------------------
; SAVEVISRGN  (offset 0x065C, size 57 bytes)
;-----------------------------------------------------------------------
SAVEVISRGN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_0688                          ; 74 19
        mov     bx, word ptr [si]               ; 8B 1C
        mov     ax, word ptr [bx + 0x8c]        ; 8B 87 8C 00
        mov     di, ax                          ; 8B F8
        call    L_11C0                          ; E8 46 0B
        je      L_0688                          ; 74 0C
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx], di               ; 89 3F
        mov     word ptr [si + 0x8c], ax        ; 89 84 8C 00
;   [conditional branch target (if/else)] L_0688
L_0688:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SAVEVISRGN ENDP


;-----------------------------------------------------------------------
; RESTOREVISRGN  (offset 0x0695, size 66 bytes)
;-----------------------------------------------------------------------
RESTOREVISRGN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_06CA                          ; 74 22
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0x8c]        ; 8B BC 8C 00
        mov     bx, word ptr [di]               ; 8B 1D
        mov     ax, 0xffff                      ; B8 FF FF
        mov     cx, word ptr [bx]               ; 8B 0F
        jcxz    L_06CA                          ; E3 13
        mov     word ptr [si + 0x8c], cx        ; 89 8C 8C 00
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 09 05 00 00 [FIXUP]
        call    L_06D7                          ; E8 13 00
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1112                          ; E8 48 0A
;   [conditional branch target (if/else)] L_06CA
L_06CA:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
RESTOREVISRGN ENDP

; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_06D7   offset=0x06D7  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_06D7
L_06D7:
        mov     bx, si                          ; 8B DE
;   [loop start] L_06D9
L_06D9:
        mov     bx, word ptr [bx]               ; 8B 1F
        or      bx, bx                          ; 0B DB
        je      L_06E7                          ; 74 08
        mov     bx, word ptr [bx]               ; 8B 1F
        or      byte ptr [bx + 8], 0x10         ; 80 4F 08 10
        jmp     L_06D9                          ; EB F2
;   [error/early exit] L_06E7
L_06E7:
        ret                                     ; C3

;-----------------------------------------------------------------------
; DELETEDC  (offset 0x06E8, size 370 bytes)
;-----------------------------------------------------------------------
DELETEDC PROC FAR
;   [sub-routine] L_06E8
L_06E8:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_0712                          ; 74 12
        mov     di, word ptr [si]               ; 8B 3C
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        cmp     cx, 6                           ; 83 F9 06
        je      L_072E                          ; 74 21
        cmp     cx, 8                           ; 83 F9 08
        je      L_0715                          ; 74 03
;   [loop start (also forward branch)] L_0712
L_0712:
        jmp     L_084E                          ; E9 39 01
;   [conditional branch target (if/else)] L_0715
L_0715:
        push    word ptr [di + 0xa]             ; FF 75 0A
        call    far _entry_126                  ; 9A BA 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0712                          ; 74 F1
        push    ax                              ; 50
        call    far _entry_353                  ; 9A C0 04 00 00 [FIXUP]
        mov     di, word ptr [si]               ; 8B 3C
        mov     word ptr [di + 2], 6            ; C7 45 02 06 00
;   [conditional branch target (if/else)] L_072E
L_072E:
        xor     ax, ax                          ; 33 C0
        mov     byte ptr [bp - 0x19], al        ; 88 46 E7
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05C5                          ; E8 88 FE
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_148F                          ; E8 4C 0D
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [di + 0x74]        ; 8B 45 74
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [di + 0x76]        ; 8B 45 76
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     bl, byte ptr [si + 8]           ; 8A 5C 08
        and     bx, 1                           ; 81 E3 01 00
        add     bx, bx                          ; 03 DB
        mov     dx, word ptr [bx + di + 0x6a]   ; 8B 51 6A
        dec     dx                              ; 4A
        js      L_0768                          ; 78 03
        mov     word ptr [bx + di + 0x6a], dx   ; 89 51 6A
;   [conditional branch target (if/else)] L_0768
L_0768:
        xor     bl, 2                           ; 80 F3 02
        or      dx, word ptr [bx + di + 0x6a]   ; 0B 51 6A
        je      L_0776                          ; 74 06
        call    L_085B                          ; E8 E8 00
        jmp     L_07AA                          ; EB 35
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0776
L_0776:
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        lcall   [bx + 0xc]                      ; FF 5F 0C
        call    L_085B                          ; E8 D6 00
        or      byte ptr [bp - 0x19], 0x80      ; 80 4E E7 80
        mov     dx, word ptr [si + 0xc]         ; 8B 54 0C
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lea     bx, [bx + 0x32]                 ; 8D 5F 32
;   [loop start] L_0792
L_0792:
        cmp     word ptr [bx], dx               ; 39 17
        je      L_079F                          ; 74 09
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     bx, word ptr [bx]               ; 8B 1F
        lea     bx, [bx + 0x68]                 ; 8D 5F 68
        jmp     L_0792                          ; EB F3
;   [conditional branch target (if/else)] L_079F
L_079F:
        mov     dx, word ptr [di + 0x68]        ; 8B 55 68
        mov     word ptr [bx], dx               ; 89 17
        mov     ax, word ptr [di + 0x72]        ; 8B 45 72
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
;   [unconditional branch target] L_07AA
L_07AA:
        mov     di, word ptr [si + 0x1a]        ; 8B 7C 1A
        mov     di, word ptr [di]               ; 8B 3D
        dec     word ptr [di + 0x30]            ; FF 4D 30
        jne     L_07DA                          ; 75 26
        push    word ptr [di + 0x36]            ; FF 75 36
        ;   ^ arg hLibModule
        ; --> FREELIBRARY(HANDLE hLibModule) -> VOID
        call    far KERNEL.FREELIBRARY          ; 9A C6 03 00 00 [FIXUP]
        or      byte ptr [bp - 0x19], 0x40      ; 80 4E E7 40
        mov     bx, 0x10a                       ; BB 0A 01
        mov     di, word ptr [si + 0x1a]        ; 8B 7C 1A
;   [loop start] L_07C6
L_07C6:
        cmp     word ptr [bx], di               ; 39 3F
        je      L_07D3                          ; 74 09
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     bx, word ptr [bx]               ; 8B 1F
        lea     bx, [bx + 0x38]                 ; 8D 5F 38
        jmp     L_07C6                          ; EB F3
;   [conditional branch target (if/else)] L_07D3
L_07D3:
        mov     di, word ptr [di]               ; 8B 3D
        mov     di, word ptr [di + 0x38]        ; 8B 7D 38
        mov     word ptr [bx], di               ; 89 3F
;   [conditional branch target (if/else)] L_07DA
L_07DA:
        push    word ptr [si + 0x96]            ; FF B4 96 00
        push    word ptr [si + 0x98]            ; FF B4 98 00
        push    word ptr [si + 0x9a]            ; FF B4 9A 00
        mov     di, sp                          ; 8B FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        dec     byte ptr [bx + 3]               ; FE 4F 03
        push    bx                              ; 53
        push    word ptr [si + 0xe]             ; FF 74 0E
        push    word ptr [si + 0x1c]            ; FF 74 1C
        push    word ptr [si + 0x8c]            ; FF B4 8C 00
        test    byte ptr [bp - 0x19], 0x80      ; F6 46 E7 80
        je      L_0802                          ; 74 03
        push    word ptr [si + 0xc]             ; FF 74 0C
;   [conditional branch target (if/else)] L_0802
L_0802:
        test    byte ptr [bp - 0x19], 0x40      ; F6 46 E7 40
        je      L_080B                          ; 74 03
        push    word ptr [si + 0x1a]            ; FF 74 1A
;   [conditional branch target (if/else)] L_080B
L_080B:
        mov     si, sp                          ; 8B F4
        push    di                              ; 57
        sub     di, si                          ; 2B FE
        shr     di, 1                           ; D1 EF
        call    L_0500                          ; E8 EB FC
        pop     sp                              ; 5C
        mov     cx, word ptr [bp - 0x18]        ; 8B 4E E8
        jcxz    L_0843                          ; E3 28
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A E5 04 00 00 [FIXUP]
        mov     si, word ptr [bp - 0x1e]        ; 8B 76 E2
        mov     di, word ptr [bp - 0x1c]        ; 8B 7E E4
        push    di                              ; 57
        push    si                              ; 56
        call    L_3D1F                          ; E8 F3 34
        push    di                              ; 57
        push    si                              ; 56
        call    far _entry_354                  ; 9A FF FF 00 00 [FIXUP]
        inc     si                              ; 46
        adc     di, 0                           ; 83 D7 00
        push    di                              ; 57
        push    si                              ; 56
        call    L_3D1F                          ; E8 E3 34
        push    di                              ; 57
        push    si                              ; 56
        call    far _entry_354                  ; 9A 2F 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0843
L_0843:
        call    L_04CD                          ; E8 87 FC
        call    L_04CD                          ; E8 84 FC
        call    L_04CD                          ; E8 81 FC
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
;   [unconditional branch target] L_084E
L_084E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
DELETEDC ENDP

; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_085B   offset=0x085B  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_148C
;-------------------------------------------------------------------------
;   [sub-routine] L_085B
L_085B:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [si]               ; 8B 1C
        mov     word ptr [bx + 0x8a], 1         ; C7 87 8A 00 01 00
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_148C                          ; E8 20 0C
        inc     byte ptr [si + 3]               ; FE 44 03
        mov     si, word ptr [si]               ; 8B 34
        ret                                     ; C3

;-----------------------------------------------------------------------
; CREATEPENINDIRECT  (offset 0x0872, size 34 bytes)
;-----------------------------------------------------------------------
CREATEPENINDIRECT PROC FAR
;   [sub-routine] L_0872
L_0872:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        ; constant WM_CREATE
        mov     si, 1                           ; BE 01 00
        mov     di, 0xa                         ; BF 0A 00
        call    L_0C3F                          ; E8 B8 03
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATEPENINDIRECT ENDP


;-----------------------------------------------------------------------
; CREATEPEN  (offset 0x0894, size 45 bytes)
;-----------------------------------------------------------------------
CREATEPEN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, sp                          ; 8B C4
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0872                          ; E8 BC FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
CREATEPEN ENDP


;-----------------------------------------------------------------------
; CREATEBRUSHINDIRECT  (offset 0x08C1, size 172 bytes)
;-----------------------------------------------------------------------
CREATEBRUSHINDIRECT PROC FAR
;   [sub-routine] L_08C1
L_08C1:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     si, 2                           ; BE 02 00
        ; constant WM_GETTEXTLENGTH
        mov     di, 0xe                         ; BF 0E 00
        call    L_0C3F                          ; E8 66 03
        je      L_08E3                          ; 74 08
        mov     di, word ptr [bx]               ; 8B 3F
        cmp     word ptr [di + 8], 3            ; 83 7D 08 03
        je      L_08F0                          ; 74 0D
;   [loop start (also forward branch)] L_08E3
L_08E3:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [conditional branch target (if/else)] L_08F0
L_08F0:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     di, word ptr [di + 0xe]         ; 8B 7D 0E
        mov     word ptr [bp - 0xc], di         ; 89 7E F4
        xor     ax, ax                          ; 33 C0
        or      di, di                          ; 0B FF
        je      L_08E3                          ; 74 E4
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 13 04 00 00 [FIXUP]
        jcxz    L_093A                          ; E3 2B
        mov     es, dx                          ; 8E C2
        mov     si, ax                          ; 8B F0
        mov     cx, word ptr es:[si]            ; 26 8B 0C
        or      cx, cx                          ; 0B C9
        jne     L_0932                          ; 75 18
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr es:[si + 0xa], ax      ; 26 89 44 0A
        mov     word ptr es:[si + 0xc], es      ; 26 8C 44 0C
        push    es                              ; 06
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A7D                          ; E8 51 01
        or      ax, ax                          ; 0B C0
        je      L_0932                          ; 74 02
        jmp     L_0946                          ; EB 14
;   [conditional branch target (if/else)] L_0932
L_0932:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 25 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_093A
L_093A:
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A BD 06 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
;   [loop start] L_0944
L_0944:
        jmp     L_08E3                          ; EB 9D
;   [unconditional branch target] L_0946
L_0946:
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di + 8]           ; 8B 7D 08
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 3E 09 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 36 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx + 0xe], di         ; 89 7F 0E
        mov     di, word ptr [bp - 0xc]         ; 8B 7E F4
        mov     word ptr [bx + 0x14], di        ; 89 7F 14
        jmp     L_0944                          ; EB D7
CREATEBRUSHINDIRECT ENDP


;-----------------------------------------------------------------------
; CREATESOLIDBRUSH  (offset 0x096D, size 35 bytes)
;-----------------------------------------------------------------------
CREATESOLIDBRUSH PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0                           ; B8 00 00
        xor     bx, bx                          ; 33 DB
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        call    L_09D6                          ; E8 51 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATESOLIDBRUSH ENDP


;-----------------------------------------------------------------------
; CREATEHATCHBRUSH  (offset 0x0990, size 36 bytes)
;-----------------------------------------------------------------------
CREATEHATCHBRUSH PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 2                           ; B8 02 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        call    L_09D6                          ; E8 2D 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
CREATEHATCHBRUSH ENDP


;-----------------------------------------------------------------------
; CREATEPATTERNBRUSH  (offset 0x09B4, size 34 bytes)
;-----------------------------------------------------------------------
CREATEPATTERNBRUSH PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        call    L_09D6                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CREATEPATTERNBRUSH ENDP

; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_09D6   offset=0x09D6  size=12 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_08C1
;-------------------------------------------------------------------------
;   [sub-routine] L_09D6
L_09D6:
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, sp                          ; 8B C4
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_08C1                          ; E8 DE FE
        add     sp, 8                           ; 83 C4 08
        ret                                     ; C3

;-----------------------------------------------------------------------
; CREATEFONTINDIRECT  (offset 0x09E7, size 45 bytes)
;-----------------------------------------------------------------------
CREATEFONTINDIRECT PROC FAR
;   [sub-routine] L_09E7
L_09E7:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        add     di, 0x12                        ; 83 C7 12
        call    L_15CD                          ; E8 D1 0B
        add     cx, 0x12                        ; 83 C1 12
        mov     di, cx                          ; 8B F9
        ; constant WM_MOVE
        mov     si, 3                           ; BE 03 00
        call    L_0C3F                          ; E8 38 02
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATEFONTINDIRECT ENDP


;-----------------------------------------------------------------------
; CREATEFONT  (offset 0x0A14, size 105 bytes)
;-----------------------------------------------------------------------
CREATEFONT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        cld                                     ; FC
        les     di, ptr [bp + 6]                ; C4 7E 06
        call    L_15CD                          ; E8 A6 0B
        inc     cx                              ; 41
        and     cl, 0xfe                        ; 80 E1 FE
        sub     sp, cx                          ; 2B E1
        mov     di, sp                          ; 8B FC
        push    ds                              ; 1E
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        push    ax                              ; 50
        mov     ah, byte ptr [bp + 0xe]         ; 8A 66 0E
        mov     al, byte ptr [bp + 0x10]        ; 8A 46 10
        push    ax                              ; 50
        mov     ah, byte ptr [bp + 0x12]        ; 8A 66 12
        mov     al, byte ptr [bp + 0x14]        ; 8A 46 14
        push    ax                              ; 50
        mov     ah, byte ptr [bp + 0x16]        ; 8A 66 16
        mov     al, byte ptr [bp + 0x18]        ; 8A 46 18
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x22]            ; FF 76 22
        mov     ax, sp                          ; 8B C4
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09E7                          ; E8 79 FF
        mov     sp, di                          ; 8B E7
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
CREATEFONT ENDP


;-----------------------------------------------------------------------
; CREATEBITMAPINDIRECT  (offset 0x0A7D, size 251 bytes)
;-----------------------------------------------------------------------
CREATEBITMAPINDIRECT PROC FAR
;   [sub-routine] L_0A7D
L_0A7D:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     ax, word ptr es:[di + 2]        ; 26 8B 45 02
        or      ax, ax                          ; 0B C0
        je      L_0AE2                          ; 74 4B
        mov     cx, word ptr es:[di + 4]        ; 26 8B 4D 04
        jcxz    L_0AE2                          ; E3 45
        mov     ax, word ptr es:[di]            ; 26 8B 05
        or      ax, ax                          ; 0B C0
        jne     L_0ADF                          ; 75 3B
        mov     ax, word ptr es:[di + 6]        ; 26 8B 45 06
        test    al, 1                           ; A8 01
        jne     L_0ADF                          ; 75 33
        mul     cx                              ; F7 E1
        jo      L_0ADF                          ; 70 2F
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        xor     cx, cx                          ; 33 C9
        mov     cl, byte ptr es:[di + 8]        ; 26 8A 4D 08
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        add     ax, 0x20                        ; 05 20 00
        adc     dx, 0                           ; 83 D2 00
        jne     L_0ADF                          ; 75 1A
        mov     bx, word ptr [0x222]            ; 8B 1E 22 02
        cmp     word ptr [0x14], dx             ; 39 16 14 00
        je      L_0AD3                          ; 74 04
        mov     bx, word ptr [0x21e]            ; 8B 1E 1E 02
;   [conditional branch target (if/else)] L_0AD3
L_0AD3:
        push    bx                              ; 53
        ;   ^ arg wFlags
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A A3 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0AE8                          ; 75 09
;   [conditional branch target (if/else)] L_0ADF
L_0ADF:
        jmp     L_0B75                          ; E9 93 00
;   [conditional branch target (if/else)] L_0AE2
L_0AE2:
        mov     ax, word ptr [0x14]             ; A1 14 00
        jmp     L_0B62                          ; EB 7B
        nop                                     ; 90
;   [conditional branch target (if/else)] L_0AE8
L_0AE8:
        mov     si, ax                          ; 8B F0
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 09 09 00 00 [FIXUP]
        jcxz    L_0B6F                          ; E3 7D
        push    ds                              ; 1E
        mov     es, dx                          ; 8E C2
        mov     dx, si                          ; 8B D6
        mov     cx, di                          ; 8B CF
        mov     di, ax                          ; 8B F8
        lds     si, ptr [bp + 6]                ; C5 76 06
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        lodsw   ax, word ptr [si]               ; AD
        mov     bx, ax                          ; 8B D8
        lodsw   ax, word ptr [si]               ; AD
        mov     si, bx                          ; 8B F3
        or      bx, ax                          ; 0B D8
        je      L_0B24                          ; 74 06
        mov     ds, ax                          ; 8E D8
        shr     cx, 1                           ; D1 E9
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
;   [conditional branch target (if/else)] L_0B24
L_0B24:
        pop     ds                              ; 1F
        mov     si, dx                          ; 8B F2
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 57 09 00 00 [FIXUP]
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    L_15FE                          ; E8 CA 0A
        jcxz    L_0B6F                          ; E3 39
        mov     bx, ds                          ; 8C DB
        mov     es, bx                          ; 8E C3
        mov     bx, ax                          ; 8B D8
        mov     di, word ptr [bx]               ; 8B 3F
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, 4                           ; B8 04 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x38]             ; A1 38 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        stosw   word ptr es:[di], ax            ; AB
        add     word ptr [0x38], 1              ; 83 06 38 00 01
        adc     word ptr [0x3a], 0              ; 83 16 3A 00 00
        mov     ax, si                          ; 8B C6
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, bx                          ; 8B C3
;   [loop start (also forward branch)] L_0B62
L_0B62:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [conditional branch target (if/else)] L_0B6F
L_0B6F:
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 1D 08 00 00 [FIXUP]
;   [unconditional branch target] L_0B75
L_0B75:
        xor     ax, ax                          ; 33 C0
        jmp     L_0B62                          ; EB E9
CREATEBITMAPINDIRECT ENDP


;-----------------------------------------------------------------------
; CREATEBITMAP  (offset 0x0B79, size 107 bytes)
;-----------------------------------------------------------------------
CREATEBITMAP PROC FAR
;   [sub-routine] L_0B79
L_0B79:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        lea     di, [bp - 0x10]                 ; 8D 7E F0
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     bx, ax                          ; 8B D8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        stosw   word ptr es:[di], ax            ; AB
        mov     cl, byte ptr [bp + 0xa]         ; 8A 4E 0A
        xor     ch, ch                          ; 32 ED
        mov     ax, bx                          ; 8B C3
        mul     cx                              ; F7 E1
        add     ax, 0xf                         ; 05 0F 00
        adc     dx, 0                           ; 83 D2 00
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        shr     dx, 1                           ; D1 EA
        jne     L_0BE0                          ; 75 29
        rcr     ax, 1                           ; D1 D8
        and     al, 0xfe                        ; 24 FE
        stosw   word ptr es:[di], ax            ; AB
        mov     al, byte ptr [bp + 0xc]         ; 8A 46 0C
        mov     ah, cl                          ; 8A E1
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        lea     di, [bp - 0x10]                 ; 8D 7E F0
        push    ss                              ; 16
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A7D                          ; E8 A9 FE
;   [loop start] L_0BD4
L_0BD4:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [conditional branch target (if/else)] L_0BE0
L_0BE0:
        xor     ax, ax                          ; 33 C0
        jmp     L_0BD4                          ; EB F0
CREATEBITMAP ENDP


;-----------------------------------------------------------------------
; CREATECOMPATIBLEBITMAP  (offset 0x0BE4, size 5 bytes)
;-----------------------------------------------------------------------
CREATECOMPATIBLEBITMAP PROC FAR
        xor     cx, cx                          ; 33 C9
        mov     bx, 0x1b1                       ; BB B1 01
CREATECOMPATIBLEBITMAP ENDP


;-----------------------------------------------------------------------
; COMPATIBLEBITMAP  (offset 0x0BE9, size 86 bytes)
;-----------------------------------------------------------------------
COMPATIBLEBITMAP PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    cx                              ; 51
        push    si                              ; 56
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        or      bx, bx                          ; 0B DB
        je      L_0C33                          ; 74 34
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx + 0x7f]        ; 8A 47 7F
        mov     dl, byte ptr [bx + 0x7e]        ; 8A 57 7E
        xor     si, si                          ; 33 F6
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    dx                              ; 52
        push    ax                              ; 50
        push    si                              ; 56
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B79                          ; E8 61 FF
        or      si, ax                          ; 0B F0
        je      L_0C33                          ; 74 17
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        jcxz    L_0C33                          ; E3 12
        mov     bx, word ptr [si]               ; 8B 1C
        push    word ptr [bx + 8]               ; FF 77 08
        ;   ^ arg hMem
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    dx                              ; 52
        ;   ^ arg dwBytes (low/offset)
        push    word ptr [0x22a]                ; FF 36 2A 02
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
;   [conditional branch target (if/else)] L_0C33
L_0C33:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
COMPATIBLEBITMAP ENDP

; Description (heuristic):
;   Pure computation / dispatcher (27 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0C3F   offset=0x0C3F  size=27 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_15FE
;-------------------------------------------------------------------------
;   [sub-routine] L_0C3F
L_0C3F:
        mov     bx, di                          ; 8B DF
        add     bx, 8                           ; 83 C3 08
        push    bx                              ; 53
        call    L_15FE                          ; E8 B6 09
        jcxz    L_0C76                          ; E3 2C
        mov     bx, ax                          ; 8B D8
        mov     cx, di                          ; 8B CF
        mov     di, word ptr [bx]               ; 8B 3F
        mov     dx, ds                          ; 8C DA
        mov     es, dx                          ; 8E C2
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, si                          ; 8B C6
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x38]             ; A1 38 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        stosw   word ptr es:[di], ax            ; AB
        add     word ptr [0x38], 1              ; 83 06 38 00 01
        adc     word ptr [0x3a], 0              ; 83 16 3A 00 00
        lds     si, ptr [bp + 6]                ; C5 76 06
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ds, dx                          ; 8E DA
        mov     ax, bx                          ; 8B C3
;   [conditional branch target (if/else)] L_0C76
L_0C76:
        or      ax, ax                          ; 0B C0
        ret                                     ; C3

;-----------------------------------------------------------------------
; SETBITMAPDIMENSION  (offset 0x0C79, size 42 bytes)
;-----------------------------------------------------------------------
SETBITMAPDIMENSION PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        or      bx, bx                          ; 0B DB
        je      L_0C98                          ; 74 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        xchg    word ptr [bx + 0xe], ax         ; 87 47 0E
        xchg    word ptr [bx + 0x10], dx        ; 87 57 10
;   [conditional branch target (if/else)] L_0C98
L_0C98:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETBITMAPDIMENSION ENDP


;-----------------------------------------------------------------------
; GETBITMAPDIMENSION  (offset 0x0CA3, size 36 bytes)
;-----------------------------------------------------------------------
GETBITMAPDIMENSION PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, bx                          ; 0B DB
        je      L_0CBC                          ; 74 08
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     dx, word ptr [bx + 0x10]        ; 8B 57 10
;   [conditional branch target (if/else)] L_0CBC
L_0CBC:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETBITMAPDIMENSION ENDP


;-----------------------------------------------------------------------
; SETDCORG  (offset 0x0CC7, size 143 bytes)
;-----------------------------------------------------------------------
SETDCORG PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        or      di, di                          ; 0B FF
        je      L_0D4A                          ; 74 6E
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, bx                          ; 8B C3
        xchg    word ptr [di + 0x8e], bx        ; 87 9D 8E 00
        mov     word ptr [bp - 4], bx           ; 89 5E FC
        sub     ax, bx                          ; 2B C3
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     dx, bx                          ; 8B D3
        xchg    word ptr [di + 0x90], bx        ; 87 9D 90 00
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        sub     dx, bx                          ; 2B D3
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        jmp     L_0D08                          ; EB 06
;   [loop start] L_0D02
L_0D02:
        mov     di, word ptr [di]               ; 8B 3D
        or      byte ptr [di + 8], 0x10         ; 80 4D 08 10
;   [unconditional branch target] L_0D08
L_0D08:
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        add     cx, word ptr [di + 0x70]        ; 03 4D 70
        mov     word ptr [di + 0x68], cx        ; 89 4D 68
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        add     cx, word ptr [di + 0x72]        ; 03 4D 72
        mov     word ptr [di + 0x6a], cx        ; 89 4D 6A
        call    L_3138                          ; E8 1B 24
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        mov     cx, ax                          ; 8B C8
        or      cx, dx                          ; 0B CA
        je      L_0D38                          ; 74 0F
        mov     cx, word ptr [di + 0xe]         ; 8B 4D 0E
        or      cx, cx                          ; 0B C9
        je      L_0D38                          ; 74 08
        push    word ptr [di + 0xe]             ; FF 75 0E
        push    ax                              ; 50
        push    dx                              ; 52
        call    L_1C1B                          ; E8 E3 0E
;   [conditional branch target (if/else)] L_0D38
L_0D38:
        mov     di, word ptr [di]               ; 8B 3D
        or      di, di                          ; 0B FF
        jne     L_0D02                          ; 75 C4
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1112                          ; E8 CE 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [conditional branch target (if/else)] L_0D4A
L_0D4A:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETDCORG ENDP


;-----------------------------------------------------------------------
; SETWINDOWEXT  (offset 0x0D56, size 8 bytes)
;-----------------------------------------------------------------------
SETWINDOWEXT PROC FAR
        mov     cx, 0x20c                       ; B9 0C 02
        mov     bx, 0x64                        ; BB 64 00
        jmp     L_0D64                          ; EB 06
SETWINDOWEXT ENDP


;-----------------------------------------------------------------------
; SETVIEWPORTEXT  (offset 0x0D5E, size 6 bytes)
;-----------------------------------------------------------------------
SETVIEWPORTEXT PROC FAR
        mov     cx, 0x20e                       ; B9 0E 02
        mov     bx, 0x6c                        ; BB 6C 00
SETVIEWPORTEXT ENDP


;-----------------------------------------------------------------------
; SETWINVIEWEXT  (offset 0x0D64, size 125 bytes)
;-----------------------------------------------------------------------
SETWINVIEWEXT PROC FAR
;   [unconditional branch target] L_0D64
L_0D64:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0D83                          ; 7C 07
        mov     ax, cx                          ; 8B C1
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3721                          ; E8 9E 29
;   [conditional branch target (if/else)] L_0D83
L_0D83:
        xor     dx, dx                          ; 33 D2
        xor     ax, ax                          ; 33 C0
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        or      di, di                          ; 0B FF
        je      L_0DD4                          ; 74 46
        mov     di, word ptr [di]               ; 8B 3D
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        jcxz    L_0DD4                          ; E3 3F
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        or      si, si                          ; 0B F6
        je      L_0DD4                          ; 74 38
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     dx, word ptr [bx + di + 2]      ; 8B 51 02
        cmp     word ptr [di + 0x74], 6         ; 83 7D 74 06
        jle     L_0DD4                          ; 7E 2A
        mov     word ptr [bx + di], cx          ; 89 09
        mov     word ptr [bx + di + 2], si      ; 89 71 02
        mov     bx, word ptr [di + 0x12]        ; 8B 5D 12
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     cx, word ptr [bx + 0xa]         ; 8B 4F 0A
        jcxz    L_0DBB                          ; E3 02
        mov     cl, 0x20                        ; B1 20
;   [conditional branch target (if/else)] L_0DBB
L_0DBB:
        or      cl, 0x40                        ; 80 C9 40
        or      byte ptr [di + 8], cl           ; 08 4D 08
        cmp     word ptr [di + 0x74], 7         ; 83 7D 74 07
        jne     L_0DD1                          ; 75 0A
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_2DE7                          ; E8 18 20
        pop     dx                              ; 5A
        pop     ax                              ; 58
;   [conditional branch target (if/else)] L_0DD1
L_0DD1:
        call    L_314B                          ; E8 77 23
;   [conditional branch target (if/else)] L_0DD4
L_0DD4:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETWINVIEWEXT ENDP


;-----------------------------------------------------------------------
; SCALEVIEWPORTEXT  (offset 0x0DE1, size 11 bytes)
;-----------------------------------------------------------------------
SCALEVIEWPORTEXT PROC FAR
        mov     bx, 0x6c                        ; BB 6C 00
        mov     cx, 0x412                       ; B9 12 04
        mov     dx, 0xd5e                       ; BA 5E 0D
        jmp     L_0DF5                          ; EB 09
SCALEVIEWPORTEXT ENDP


;-----------------------------------------------------------------------
; SCALEWINDOWEXT  (offset 0x0DEC, size 9 bytes)
;-----------------------------------------------------------------------
SCALEWINDOWEXT PROC FAR
        mov     bx, 0x64                        ; BB 64 00
        mov     cx, 0x400                       ; B9 00 04
        mov     dx, 0xd56                       ; BA 56 0D
SCALEWINDOWEXT ENDP


;-----------------------------------------------------------------------
; SCALEEXT  (offset 0x0DF5, size 104 bytes)
;-----------------------------------------------------------------------
SCALEEXT PROC FAR
;   [unconditional branch target] L_0DF5
L_0DF5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    dx                              ; 52
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0E15                          ; 7C 07
        mov     ax, cx                          ; 8B C1
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3721                          ; E8 0C 29
;   [conditional branch target (if/else)] L_0E15
L_0E15:
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        or      si, si                          ; 0B F6
        je      L_0E50                          ; 74 34
        push    si                              ; 56
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     si, word ptr [bx + si + 2]      ; 8B 70 02
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 4F 1F
        mov     di, ax                          ; 8B F8
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 41 1F
        push    di                              ; 57
        push    ax                              ; 50
        mov     di, 6                           ; BF 06 00
        xchg    word ptr [si + 2], di           ; 87 7C 02
        push    cs                              ; 0E
        call    word ptr [bp - 6]               ; FF 56 FA
        mov     word ptr [si + 2], di           ; 89 7C 02
;   [conditional branch target (if/else)] L_0E50
L_0E50:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
SCALEEXT ENDP


;-----------------------------------------------------------------------
; GETNEARESTCOLOR  (offset 0x0E5D, size 63 bytes)
;-----------------------------------------------------------------------
GETNEARESTCOLOR PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        or      si, si                          ; 0B F6
        je      L_0E90                          ; 74 19
        mov     si, word ptr [si]               ; 8B 34
        lea     cx, [bp - 6]                    ; 8D 4E FA
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ss                              ; 16
        push    cx                              ; 51
        lcall   [bx + 4]                        ; FF 5F 04
;   [conditional branch target (if/else)] L_0E90
L_0E90:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
GETNEARESTCOLOR ENDP


;-----------------------------------------------------------------------
; SETBKCOLOR  (offset 0x0E9C, size 97 bytes)
;-----------------------------------------------------------------------
SETBKCOLOR PROC FAR
;   [sub-routine] L_0E9C
L_0E9C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0EBD                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 5D 28
        add     word ptr [bp + si], ax          ; 01 02
;   [conditional branch target (if/else)] L_0EBD
L_0EBD:
        mov     bx, 0x40                        ; BB 40 00
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        or      si, si                          ; 0B F6
        je      L_0EF2                          ; 74 26
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0x14]        ; 8B 7C 14
        or      di, di                          ; 0B FF
        je      L_0EEC                          ; 74 17
        mov     di, word ptr [di]               ; 8B 3D
        mov     cx, word ptr [di + 8]           ; 8B 4D 08
        cmp     cx, 2                           ; 83 F9 02
        jne     L_0EEC                          ; 75 0D
        inc     ax                              ; 40
        mov     cx, word ptr [si + 0x40]        ; 8B 4C 40
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     cx, word ptr [si + 0x42]        ; 8B 4C 42
        mov     word ptr [bp - 6], cx           ; 89 4E FA
;   [conditional branch target (if/else)] L_0EEC
L_0EEC:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    L_0F42                          ; E8 50 00
;   [conditional branch target (if/else)] L_0EF2
L_0EF2:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETBKCOLOR ENDP


;-----------------------------------------------------------------------
; SETTEXTCOLOR  (offset 0x0EFF, size 65 bytes)
;-----------------------------------------------------------------------
SETTEXTCOLOR PROC FAR
;   [sub-routine] L_0EFF
L_0EFF:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0F20                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 FA 27
        or      word ptr [bp + si], ax          ; 09 02
;   [conditional branch target (if/else)] L_0F20
L_0F20:
        xor     ax, ax                          ; 33 C0
        mov     dx, 0x8000                      ; BA 00 80
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        jcxz    L_0F35                          ; E3 0B
        mov     bx, 0x44                        ; BB 44 00
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        call    L_0F42                          ; E8 0D 00
;   [conditional branch target (if/else)] L_0F35
L_0F35:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETTEXTCOLOR ENDP

; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F42   offset=0x0F42  size=35 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_12B6, L_1651, L_1683
;-------------------------------------------------------------------------
;   [sub-routine] L_0F42
L_0F42:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     si, word ptr [si]               ; 8B 34
        call    L_1651                          ; E8 07 07
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ds                              ; 1E
        push    di                              ; 57
        lcall   [bx + 4]                        ; FF 5F 04
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F86                          ; 74 1E
        mov     cx, word ptr [di]               ; 8B 0D
        cmp     word ptr [bp - 8], cx           ; 39 4E F8
        jne     L_0F77                          ; 75 08
        mov     cx, word ptr [di + 2]           ; 8B 4D 02
        cmp     word ptr [bp - 6], cx           ; 39 4E FA
        je      L_0F86                          ; 74 0F
;   [conditional branch target (if/else)] L_0F77
L_0F77:
        push    ax                              ; 50
        push    dx                              ; 52
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [si + 0x14]            ; FF 74 14
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_12B6                          ; E8 32 03
        pop     dx                              ; 5A
        pop     ax                              ; 58
;   [conditional branch target (if/else)] L_0F86
L_0F86:
        mov     bx, di                          ; 8B DF
        xchg    word ptr [bx + 0x14], ax        ; 87 47 14
        xchg    word ptr [bx + 0x16], dx        ; 87 57 16
        call    L_1683                          ; E8 F2 06
        ret                                     ; C3

;-----------------------------------------------------------------------
; SELECTCLIPRGN  (offset 0x0F92, size 107 bytes)
;-----------------------------------------------------------------------
SELECTCLIPRGN PROC FAR
;   [sub-routine] L_0F92
L_0F92:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_0FB0                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 6A 27
        sub     ax, 0x3301                      ; 2D 01 33
        ror     byte ptr [bp + di + 0x876], 0xb ; C0 8B 76 08 0B
        div     byte ptr [si + 0x39]            ; F6 74 39
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        or      ax, ax                          ; 0B C0
        jne     L_0FD3                          ; 75 11
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        je      L_0FF2                          ; 74 29
        call    L_11C0                          ; E8 F4 01
        je      L_0FF2                          ; 74 24
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
        jmp     L_0FDE                          ; EB 0B
;   [conditional branch target (if/else)] L_0FD3
L_0FD3:
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3B9D                          ; E8 C3 2B
        or      ax, ax                          ; 0B C0
        je      L_0FF2                          ; 74 14
;   [unconditional branch target] L_0FDE
L_0FDE:
        push    word ptr [si + 0xe]             ; FF 74 0E
        push    word ptr [si + 0x8e]            ; FF B4 8E 00
        push    word ptr [si + 0x90]            ; FF B4 90 00
        call    L_1C1B                          ; E8 2F 0C
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1112                          ; E8 20 01
;   [conditional branch target (if/else)] L_0FF2
L_0FF2:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SELECTCLIPRGN ENDP


;-----------------------------------------------------------------------
; SELECTVISRGN  (offset 0x0FFF, size 62 bytes)
;-----------------------------------------------------------------------
SELECTVISRGN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [si + 0x8c]        ; 8B 9C 8C 00
        mov     di, word ptr [bx]               ; 8B 3F
        mov     di, word ptr [di]               ; 8B 3D
        push    bx                              ; 53
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_3B9D                          ; E8 7E 2B
        mov     bx, word ptr [si + 0x8c]        ; 8B 9C 8C 00
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     word ptr [bx], di               ; 89 3F
        call    L_06D7                          ; E8 AD F6
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1112                          ; E8 E2 00
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SELECTVISRGN ENDP


;-----------------------------------------------------------------------
; INTERSECTVISRECT  (offset 0x103D, size 3 bytes)
;-----------------------------------------------------------------------
INTERSECTVISRECT PROC FAR
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     bx, 0x4b1                       ; BB B1 04
INTERSECTVISRECT ENDP

        mov     ch, 0x8c                        ; B5 8C
        jmp     L_1054                          ; EB 0E

;-----------------------------------------------------------------------
; INTERSECTCLIPRECT  (offset 0x1046, size 7 bytes)
;-----------------------------------------------------------------------
INTERSECTCLIPRECT PROC FAR
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     dx, 0x416                       ; BA 16 04
        jmp     L_1052                          ; EB 05
INTERSECTCLIPRECT ENDP


;-----------------------------------------------------------------------
; EXCLUDECLIPRECT  (offset 0x104D, size 7 bytes)
;-----------------------------------------------------------------------
EXCLUDECLIPRECT PROC FAR
        mov     cl, 4                           ; B1 04
        mov     dx, 0x415                       ; BA 15 04
;   [unconditional branch target] L_1052
L_1052:
        ; constant WM_GETTEXTLENGTH
        mov     ch, 0xe                         ; B5 0E
EXCLUDECLIPRECT ENDP


;-----------------------------------------------------------------------
; RECTSTUFF  (offset 0x1054, size 190 bytes)
;-----------------------------------------------------------------------
RECTSTUFF PROC FAR
;   [unconditional branch target] L_1054
L_1054:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    cx                              ; 51
        push    cx                              ; 51
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 0xc]             ; FF 76 0C
        cmp     ch, 0x8c                        ; 80 FD 8C
        je      L_10BC                          ; 74 49
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_1085                          ; 7C 07
        mov     ax, dx                          ; 8B C2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3721                          ; E8 9C 26
;   [conditional branch target (if/else)] L_1085
L_1085:
        xor     ax, ax                          ; 33 C0
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        or      si, si                          ; 0B F6
        je      L_1105                          ; 74 77
        mov     si, word ptr [si]               ; 8B 34
        mov     cx, 2                           ; B9 02 00
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        xor     bx, bx                          ; 33 DB
        call    L_3372                          ; E8 D6 22
        xor     ax, ax                          ; 33 C0
        or      ax, word ptr [si + 0xe]         ; 0B 44 0E
        jne     L_10BC                          ; 75 19
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bx + 8]               ; FF 77 08
        push    word ptr [bx + 0xa]             ; FF 77 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3C7F                          ; E8 CA 2B
        or      ax, ax                          ; 0B C0
        je      L_1102                          ; 74 49
        mov     word ptr [si + 0xe], ax         ; 89 44 0E
;   [conditional branch target (if/else)] L_10BC
L_10BC:
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        push    di                              ; 57
        call    L_3BCD                          ; E8 0A 2B
        or      ax, ax                          ; 0B C0
        je      L_1102                          ; 74 3B
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        xor     bl, bl                          ; 32 DB
        xchg    bh, bl                          ; 86 DF
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     cl, byte ptr [bp - 6]           ; 8A 4E FA
        xor     ch, ch                          ; 32 ED
        push    ax                              ; 50
        push    ax                              ; 50
        push    di                              ; 57
        push    cx                              ; 51
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A8C                          ; E8 A7 29
        or      ax, ax                          ; 0B C0
        je      L_10F8                          ; 74 0F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_1112                          ; E8 23 00
        cmp     byte ptr [bp - 4], 0x8c         ; 80 7E FC 8C
        jne     L_10F8                          ; 75 03
        call    L_06D7                          ; E8 DF F5
;   [conditional branch target (if/else)] L_10F8
L_10F8:
        mov     si, ax                          ; 8B F0
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 4F 09 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
;   [conditional branch target (if/else)] L_1102
L_1102:
        add     sp, 8                           ; 83 C4 08
;   [conditional branch target (if/else)] L_1105
L_1105:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
RECTSTUFF ENDP

; Description (heuristic):
;   Pure computation / dispatcher (35 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1112   offset=0x1112  size=35 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11A5, L_3A8C, L_3B9D
;-------------------------------------------------------------------------
;   [sub-routine] L_1112
L_1112:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0x1c]        ; 8B 7C 1C
        dec     byte ptr [di + 3]               ; FE 4D 03
        xor     ax, ax                          ; 33 C0
        or      ax, word ptr [si + 0xe]         ; 0B 44 0E
        je      L_113C                          ; 74 13
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        push    word ptr [si + 0x1c]            ; FF 74 1C
        push    ax                              ; 50
        push    word ptr [si + 0x8c]            ; FF B4 8C 00
        push    cx                              ; 51
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3A8C                          ; E8 52 29
        jmp     L_1146                          ; EB 0A
;   [conditional branch target (if/else)] L_113C
L_113C:
        push    word ptr [si + 0x1c]            ; FF 74 1C
        push    word ptr [si + 0x8c]            ; FF B4 8C 00
        call    L_3B9D                          ; E8 57 2A
;   [unconditional branch target] L_1146
L_1146:
        inc     byte ptr [di + 3]               ; FE 45 03
        mov     bx, word ptr [di]               ; 8B 1D
        mov     word ptr [si + 0x2c], bx        ; 89 5C 2C
        or      ax, ax                          ; 0B C0
        je      L_1158                          ; 74 06
        push    word ptr [si + 0x1c]            ; FF 74 1C
        call    L_11A5                          ; E8 4D 00
;   [error/early exit] L_1158
L_1158:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00

;-----------------------------------------------------------------------
; GETCLIPBOX  (offset 0x1160, size 69 bytes)
;-----------------------------------------------------------------------
GETCLIPBOX PROC FAR
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        or      si, si                          ; 0B F6
        je      L_1198                          ; 74 23
        mov     si, word ptr [si]               ; 8B 34
        push    si                              ; 56
        mov     si, word ptr [si + 0x2c]        ; 8B 74 2C
        add     si, 0xc                         ; 83 C6 0C
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     di, 8                           ; 83 EF 08
        pop     si                              ; 5E
        xor     bx, bx                          ; 33 DB
        mov     cx, 2                           ; B9 02 00
        call    L_347E                          ; E8 EC 22
        push    word ptr [si + 0x1c]            ; FF 74 1C
        call    L_11A5                          ; E8 0D 00
;   [conditional branch target (if/else)] L_1198
L_1198:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
GETCLIPBOX ENDP

; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_11A5   offset=0x11A5  size=12 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_11A5
L_11A5:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr [bx]               ; 8B 1F
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        cmp     word ptr [bx + 8], 0x1e         ; 83 7F 08 1E
        jg      L_11BA                          ; 7F 04
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        inc     ax                              ; 40
;   [error/early exit] L_11BA
L_11BA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11C0   offset=0x11C0  size=29 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_11C0, L_15FE, L_3B9D
;-------------------------------------------------------------------------
;   [sub-routine] L_11C0
L_11C0:
        push    si                              ; 56
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [si]               ; 8B 1C
        push    word ptr [bx + 8]               ; FF 77 08
        call    L_15FE                          ; E8 33 04
        jcxz    L_11D4                          ; E3 07
        push    ax                              ; 50
        push    ax                              ; 50
        push    si                              ; 56
        call    L_3B9D                          ; E8 CA 29
        pop     ax                              ; 58
;   [conditional branch target (if/else)] L_11D4
L_11D4:
        pop     si                              ; 5E
        or      ax, ax                          ; 0B C0
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        call    L_11C0                          ; E8 D8 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: GLOBALFREE, GLOBALLOCK, GLOBALUNLOCK (+1 more).

;-------------------------------------------------------------------------
; sub_11F3   offset=0x11F3  size=90 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_06D7, L_06E8, L_16B5
;-------------------------------------------------------------------------
;   [sub-routine] L_11F3
L_11F3:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     si, word ptr [si]               ; 8B 34
        call    L_06D7                          ; E8 D8 F4
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        xchg    si, ax                          ; 96
        adc     al, byte ptr [bp - 0x64ee]      ; 12 86 12 9B
        adc     cl, byte ptr [bp + 0x12]        ; 12 4E 12
        mov     byte ptr [0xaf12], al           ; A2 12 AF
        adc     cl, byte ptr [si - 0x6f28]      ; 12 8C D8 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        xor     ax, ax                          ; 33 C0
        or      bx, bx                          ; 0B DB
        je      L_123E                          ; 74 17
        mov     di, word ptr [bx]               ; 8B 3F
        mov     si, word ptr [di + 2]           ; 8B 75 02
        or      si, si                          ; 0B F6
        js      L_124B                          ; 78 1B
        je      L_123E                          ; 74 0C
        cmp     si, 9                           ; 83 FE 09
        jge     L_123E                          ; 7D 07
        add     si, si                          ; 03 F6
        call    word ptr cs:[si + 0x1204]       ; 2E FF 94 04 12
;   [loop start (also forward branch)] L_123E
L_123E:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [conditional branch target (if/else)] L_124B
L_124B:
        inc     ax                              ; 40
        jmp     L_123E                          ; EB F0
        cmp     bx, word ptr [0x14]             ; 3B 1E 14 00
        je      L_1282                          ; 74 2E
        mov     si, bx                          ; 8B F3
        mov     di, word ptr [di + 8]           ; 8B 7D 08
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A EC 0A 00 00 [FIXUP]
        jcxz    L_1285                          ; E3 24
        mov     bx, ax                          ; 8B D8
        mov     es, dx                          ; 8E C2
        mov     bx, word ptr es:[bx]            ; 26 8B 1F
        push    bx                              ; 53
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 29 0B 00 00 [FIXUP]
        pop     bx                              ; 5B
        xor     ax, ax                          ; 33 C0
        or      bx, bx                          ; 0B DB
        jne     L_1285                          ; 75 0F
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 71 0B 00 00 [FIXUP]
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FC 10 00 00 [FIXUP]
;   [loop start (also forward branch)] L_1282
L_1282:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [error/early exit] L_1285
L_1285:
        ret                                     ; C3
        cmp     word ptr [di + 8], 3            ; 83 7D 08 03
        jne     L_1296                          ; 75 0A
        push    bx                              ; 53
        push    word ptr [di + 0xe]             ; FF 75 0E
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 78 12 00 00 [FIXUP]
        pop     bx                              ; 5B
;   [conditional branch target (if/else)] L_1296
L_1296:
        call    L_16B5                          ; E8 1C 04
        jmp     L_1282                          ; EB E7
        push    bx                              ; 53
        call    far _entry_360                  ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3
        push    bx                              ; 53
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 7E 12 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1282                          ; 74 D6
        xor     ax, ax                          ; 33 C0
        ret                                     ; C3
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E8                          ; E8 33 F4
        ret                                     ; C3

;-----------------------------------------------------------------------
; SELECTOBJECT  (offset 0x12B6, size 468 bytes)
;-----------------------------------------------------------------------
SELECTOBJECT PROC FAR
;   [sub-routine] L_12B6
L_12B6:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_12D7                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 43 24
        sub     ax, 0x3301                      ; 2D 01 33
        ror     byte ptr [bp + di + 0x67e], 0xb ; C0 8B 7E 06 0B
        push    word ptr [si + 0x21]            ; FF 74 21
        mov     bx, word ptr [di]               ; 8B 1D
        mov     bx, word ptr [bx + 2]           ; 8B 5F 02
        and     bx, 0x7fff                      ; 81 E3 FF 7F
        cmp     bx, 4                           ; 83 FB 04
        jne     L_12F1                          ; 75 03
        jmp     L_137D                          ; E9 8C 00
;   [conditional branch target (if/else)] L_12F1
L_12F1:
        cmp     bx, 5                           ; 83 FB 05
        jg      L_1362                          ; 7F 6C
        jne     L_1303                          ; 75 0B
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F92                          ; E8 91 FC
;   [loop start] L_1301
L_1301:
        jmp     L_1362                          ; EB 5F
;   [conditional branch target (if/else)] L_1303
L_1303:
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        or      si, si                          ; 0B F6
        je      L_1301                          ; 74 F7
        mov     si, word ptr [si]               ; 8B 34
        shl     bx, 1                           ; D1 E3
        cmp     bx, 4                           ; 83 FB 04
        je      L_1332                          ; 74 1F
        cmp     bx, 2                           ; 83 FB 02
        jb      L_1379                          ; 72 61
        push    bx                              ; 53
        xchg    word ptr [bx + si + 0x10], di   ; 87 78 10
        jne     L_1328                          ; 75 0A
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1A12                          ; E8 EC 06
        jmp     L_136F                          ; EB 47
;   [conditional branch target (if/else)] L_1328
L_1328:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2BC2                          ; E8 92 18
        jmp     L_136F                          ; EB 3D
;   [conditional branch target (if/else)] L_1332
L_1332:
        push    word ptr [bp + 8]               ; FF 76 08
        push    di                              ; 57
        call    L_1863                          ; E8 2A 05
        or      ax, ax                          ; 0B C0
        je      L_1362                          ; 74 25
        mov     di, word ptr [si + 0x20]        ; 8B 7C 20
        or      di, di                          ; 0B FF
        je      L_1347                          ; 74 03
        dec     byte ptr [di + 3]               ; FE 4D 03
;   [conditional branch target (if/else)] L_1347
L_1347:
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        mov     di, ax                          ; 8B F8
        inc     byte ptr [di + 3]               ; FE 45 03
        mov     di, word ptr [di]               ; 8B 3D
        add     di, 0xa                         ; 83 C7 0A
        mov     word ptr [si + 0x30], di        ; 89 7C 30
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xchg    word ptr [si + 0x14], ax        ; 87 44 14
;   [loop start] L_135D
L_135D:
        or      ax, ax                          ; 0B C0
        jne     L_1362                          ; 75 01
        inc     ax                              ; 40
;   [loop start (also forward branch)] L_1362
L_1362:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [unconditional branch target] L_136F
L_136F:
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        mov     ax, di                          ; 8B C7
        jne     L_135D                          ; 75 E7
        xchg    word ptr [bx + si + 0x10], di   ; 87 78 10
;   [loop start (also forward branch)] L_1379
L_1379:
        xor     ax, ax                          ; 33 C0
        jmp     L_1362                          ; EB E5
;   [unconditional branch target] L_137D
L_137D:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     cx, bx                          ; 8B CB
        jcxz    L_1379                          ; E3 F0
        mov     bx, word ptr [bx]               ; 8B 1F
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        je      L_1379                          ; 74 E8
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        mov     si, word ptr [si]               ; 8B 34
        mov     al, byte ptr [si + 0xe]         ; 8A 44 0E
        mov     ah, byte ptr [si + 0xc]         ; 8A 64 0C
        mov     si, word ptr [di]               ; 8B 35
        cmp     di, word ptr [0x14]             ; 3B 3E 14 00
        je      L_13B5                          ; 74 11
        mov     dx, word ptr [bx + 0x10]        ; 8B 57 10
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_13B5                          ; 74 05
        cmp     cx, word ptr [si + 0xc]         ; 3B 4C 0C
        jne     L_1379                          ; 75 C4
;   [conditional branch target (if/else)] L_13B5
L_13B5:
        mov     di, ax                          ; 8B F8
        mov     si, word ptr [si + 8]           ; 8B 74 08
        mov     word ptr [bp - 4], si           ; 89 76 FC
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 5B 12 00 00 [FIXUP]
        jcxz    L_1379                          ; E3 B4
        mov     es, dx                          ; 8E C2
        xchg    di, ax                          ; 97
        mov     dx, word ptr es:[di]            ; 26 8B 15
        or      dx, dx                          ; 0B D2
        jne     L_13DD                          ; 75 0E
        mov     si, word ptr es:[di + 8]        ; 26 8B 75 08
        cmp     si, 0x101                       ; 81 FE 01 01
        je      L_13E7                          ; 74 0E
        cmp     si, ax                          ; 3B F0
        je      L_13E7                          ; 74 0A
;   [conditional branch target (if/else)] L_13DD
L_13DD:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6B 12 00 00 [FIXUP]
        jmp     L_1379                          ; EB 92
;   [conditional branch target (if/else)] L_13E7
L_13E7:
        push    es                              ; 06
        xor     ax, ax                          ; 33 C0
        xor     dx, dx                          ; 33 D2
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        jcxz    L_1403                          ; E3 12
        push    cx                              ; 51
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A BF 13 00 00 [FIXUP]
        pop     cx                              ; 59
        push    dx                              ; 52
        push    ax                              ; 50
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A E1 13 00 00 [FIXUP]
        pop     ax                              ; 58
        pop     dx                              ; 5A
;   [conditional branch target (if/else)] L_1403
L_1403:
        pop     es                              ; 07
        mov     word ptr es:[di + 0x12], ax     ; 26 89 45 12
        mov     word ptr es:[di + 0x14], dx     ; 26 89 55 14
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        xor     ax, ax                          ; 33 C0
        push    bx                              ; 53
        push    es                              ; 06
        push    word ptr [bx + 0x8c]            ; FF B7 8C 00
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr es:[di + 2]            ; 26 FF 75 02
        push    word ptr es:[di + 4]            ; 26 FF 75 04
        call    L_3CB7                          ; E8 91 28
        pop     es                              ; 07
        pop     bx                              ; 5B
        mov     word ptr [bx + 0x7e], si        ; 89 77 7E
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     word ptr [bx + 0x26], di        ; 89 7F 26
        mov     word ptr [bx + 0x28], es        ; 8C 47 28
        xchg    word ptr [bx + 0x18], si        ; 87 77 18
        mov     dx, di                          ; 8B D7
        add     dx, 0x20                        ; 83 C2 20
        mov     word ptr es:[di + 0xa], dx      ; 26 89 55 0A
        mov     word ptr es:[di + 0xc], es      ; 26 8C 45 0C
        mov     di, si                          ; 8B FE
        or      si, si                          ; 0B F6
        je      L_1457                          ; 74 0D
        mov     si, word ptr [si]               ; 8B 34
        push    word ptr [si + 8]               ; FF 74 08
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FD 13 00 00 [FIXUP]
        dec     word ptr [si + 0xa]             ; FF 4C 0A
;   [conditional branch target (if/else)] L_1457
L_1457:
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        inc     word ptr [si + 0xa]             ; FF 44 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     si, ax                          ; 8B F0
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_301E                          ; E8 B1 1B
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0E9C                          ; E8 27 FA
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3021                          ; E8 A6 1B
        push    si                              ; 56
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0EFF                          ; E8 7C FA
        push    si                              ; 56
        call    L_1112                          ; E8 8B FC
        mov     ax, di                          ; 8B C7
        jmp     L_135D                          ; E9 D1 FE
SELECTOBJECT ENDP


;-----------------------------------------------------------------------
; UNLOCKDC  (offset 0x148C, size 4 bytes)
;-----------------------------------------------------------------------
UNLOCKDC PROC FAR
;   [sub-routine] L_148C
L_148C:
        xor     cx, cx                          ; 33 C9
        mov     bx, 0x1b1                       ; BB B1 01
UNLOCKDC ENDP


;-----------------------------------------------------------------------
; LOCKUNLOCK  (offset 0x1491, size 306 bytes)
;-----------------------------------------------------------------------
LOCKUNLOCK PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     si, word ptr [di]               ; 8B 35
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        cmp     bx, 6                           ; 83 FB 06
        je      L_14BC                          ; 74 10
        cmp     bx, 7                           ; 83 FB 07
        je      L_14BC                          ; 74 0B
        cmp     bx, 8                           ; 83 FB 08
        je      L_14BC                          ; 74 06
        jmp     L_1575                          ; E9 BC 00
;   [loop start] L_14B9
L_14B9:
        jmp     L_1582                          ; E9 C6 00
;   [conditional branch target (if/else)] L_14BC
L_14BC:
        mov     bl, 0x8a                        ; B3 8A
        mov     ax, word ptr [bx + si]          ; 8B 00
        jcxz    L_14B9                          ; E3 F7
        inc     ax                              ; 40
        mov     word ptr [bx + si], ax          ; 89 00
        dec     ax                              ; 48
        je      L_14CB                          ; 74 03
        jmp     L_156C                          ; E9 A1 00
;   [conditional branch target (if/else)] L_14CB
L_14CB:
        inc     byte ptr [di + 3]               ; FE 45 03
        push    word ptr [si + 0x10]            ; FF 74 10
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A F4 13 00 00 [FIXUP]
        mov     word ptr [si + 0x26], ax        ; 89 44 26
        mov     word ptr [si + 0x28], dx        ; 89 54 28
        mov     di, word ptr [si + 8]           ; 8B 7C 08
        test    di, 1                           ; F7 C7 01 00
        je      L_1523                          ; 74 3E
        mov     bx, word ptr [si + 0x18]        ; 8B 5C 18
        mov     bx, word ptr [bx]               ; 8B 1F
        inc     word ptr [bx + 0xa]             ; FF 47 0A
        push    word ptr [bx + 8]               ; FF 77 08
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A D2 14 00 00 [FIXUP]
        jcxz    L_1570                          ; E3 79
        mov     es, dx                          ; 8E C2
        mov     bx, ax                          ; 8B D8
        mov     cx, ax                          ; 8B C8
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], dx      ; 26 89 57 0C
        xchg    word ptr [si + 0x26], cx        ; 87 4C 26
        xchg    word ptr [si + 0x28], dx        ; 87 54 28
        mov     ax, word ptr [si + 0x18]        ; 8B 44 18
        cmp     ax, word ptr [0x14]             ; 3B 06 14 00
        jne     L_151B                          ; 75 04
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
;   [conditional branch target (if/else)] L_151B
L_151B:
        mov     word ptr es:[bx + 0x12], cx     ; 26 89 4F 12
        mov     word ptr es:[bx + 0x14], dx     ; 26 89 57 14
;   [conditional branch target (if/else)] L_1523
L_1523:
        mov     bx, 2                           ; BB 02 00
        test    di, 0x80                        ; F7 C7 80 00
        jne     L_1558                          ; 75 2C
        push    word ptr [si + 0x24]            ; FF 74 24
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x34], ax        ; 89 44 34
        mov     word ptr [si + 0x36], dx        ; 89 54 36
        push    ds                              ; 1E
        mov     bx, ax                          ; 8B D8
        mov     ds, dx                          ; 8E DA
        mov     ax, word ptr [bx + 0x2f]        ; 8B 47 2F
        mov     cx, word ptr [bx + 0x31]        ; 8B 4F 31
        test    byte ptr [bx], 4                ; F6 07 04
        jne     L_154E                          ; 75 04
        add     ax, bx                          ; 03 C3
        add     cx, dx                          ; 03 CA
;   [conditional branch target (if/else)] L_154E
L_154E:
        mov     word ptr [bx + 0x2b], ax        ; 89 47 2B
        mov     word ptr [bx + 0x2d], cx        ; 89 4F 2D
        pop     ds                              ; 1F
        mov     bx, 8                           ; BB 08 00
;   [loop start (also forward branch)] L_1558
L_1558:
        mov     di, word ptr [bx + si + 0x1a]   ; 8B 78 1A
        inc     byte ptr [di + 3]               ; FE 45 03
        mov     di, word ptr [di]               ; 8B 3D
        add     di, word ptr cs:[bx + 0x15c3]   ; 2E 03 BF C3 15
        mov     word ptr [bx + si + 0x2a], di   ; 89 78 2A
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        jns     L_1558                          ; 79 EC
;   [loop start (also forward branch)] L_156C
L_156C:
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_1575                          ; EB 05
;   [conditional branch target (if/else)] L_1570
L_1570:
        dec     byte ptr [di + 3]               ; FE 4D 03
        xor     ax, ax                          ; 33 C0
;   [loop start (also forward branch)] L_1575
L_1575:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [unconditional branch target] L_1582
L_1582:
        or      ax, ax                          ; 0B C0
        je      L_1575                          ; 74 EF
        dec     ax                              ; 48
        mov     word ptr [bx + si], ax          ; 89 00
        jne     L_1575                          ; 75 EA
        push    word ptr [si + 0x24]            ; FF 74 24
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 50 14 00 00 [FIXUP]
        push    word ptr [si + 0x10]            ; FF 74 10
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 8F 15 00 00 [FIXUP]
        test    byte ptr [si + 8], 1            ; F6 44 08 01
        je      L_15B1                          ; 74 10
        mov     bx, word ptr [si + 0x18]        ; 8B 5C 18
        mov     bx, word ptr [bx]               ; 8B 1F
        dec     word ptr [bx + 0xa]             ; FF 4F 0A
        push    word ptr [bx + 8]               ; FF 77 08
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 97 15 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_15B1
L_15B1:
        dec     byte ptr [di + 3]               ; FE 4D 03
        mov     bx, 8                           ; BB 08 00
;   [loop start] L_15B7
L_15B7:
        mov     di, word ptr [bx + si + 0x1a]   ; 8B 78 1A
        dec     byte ptr [di + 3]               ; FE 4D 03
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        jns     L_15B7                          ; 79 F6
        jmp     L_156C                          ; EB A9
LOCKUNLOCK ENDP

        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        or      al, byte ptr [bx + si]          ; 0A 00
        or      al, byte ptr [bx + si]          ; 0A 00
        add     byte ptr [bx + si], al          ; 00 00
; Description (heuristic):
;   Pure computation / dispatcher (28 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_15CD   offset=0x15CD  size=28 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_15CD
;-------------------------------------------------------------------------
;   [sub-routine] L_15CD
L_15CD:
        mov     cx, 0xffff                      ; B9 FF FF
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        repne scasb al, byte ptr es:[di]        ; F2 AE
        neg     cx                              ; F7 D9
        dec     cx                              ; 49
        ret                                     ; C3
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        call    L_15CD                          ; E8 E7 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        mov     dx, word ptr [0x226]            ; 8B 16 26 02
        jmp     L_15FA                          ; EB 05
        nop                                     ; 90
        mov     dx, word ptr [0x224]            ; 8B 16 24 02
;   [unconditional branch target] L_15FA
L_15FA:
        pop     bx                              ; 5B
        pop     cx                              ; 59
        jmp     L_1605                          ; EB 07
; Description (heuristic):
;   Mixed routine using: GLOBALALLOC.

;-------------------------------------------------------------------------
; sub_15FE   offset=0x15FE  size=37 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_15FE
L_15FE:
        mov     dx, word ptr [0x224]            ; 8B 16 24 02
;   [loop start] L_1602
L_1602:
        pop     bx                              ; 5B
        mov     cx, cs                          ; 8C C9
;   [unconditional branch target] L_1605
L_1605:
        pop     ax                              ; 58
        push    dx                              ; 52
        push    ax                              ; 50
        push    cx                              ; 51
        push    bx                              ; 53
        jmp     far KERNEL.LOCALALLOC           ; EA 17 05 00 00 [FIXUP]
        mov     dx, word ptr [0x226]            ; 8B 16 26 02
        jmp     L_1602                          ; EB ED
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [0x21e]                ; FF 36 1E 02
        ;   ^ arg wFlags
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A D7 0A 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x21e]                ; FF 36 1E 02
        ;   ^ arg wFlags
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A 23 16 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Thin wrapper around LOCKSEGMENT.

;-------------------------------------------------------------------------
; sub_1651   offset=0x1651  size=13 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   LOCKSEGMENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1651
L_1651:
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    es                              ; 06
        push    ds                              ; 1E
        call    far KERNEL.LOCKSEGMENT          ; 9A FF FF 00 00 [FIXUP]
        pop     es                              ; 07
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCKSEGMENT.

;-------------------------------------------------------------------------
; sub_1662   offset=0x1662  size=23 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: retf
;
; Far API calls:
;   LOCKSEGMENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1662
L_1662:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    es                              ; 06
        push    ds                              ; 1E
        call    far KERNEL.LOCKSEGMENT          ; 9A 58 16 00 00 [FIXUP]
        pop     es                              ; 07
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Thin wrapper around UNLOCKSEGMENT.

;-------------------------------------------------------------------------
; sub_1683   offset=0x1683  size=13 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   UNLOCKSEGMENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1683
L_1683:
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    es                              ; 06
        push    ds                              ; 1E
        call    far KERNEL.UNLOCKSEGMENT        ; 9A FF FF 00 00 [FIXUP]
        pop     es                              ; 07
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        pop     ax                              ; 58
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around UNLOCKSEGMENT.

;-------------------------------------------------------------------------
; sub_1694   offset=0x1694  size=23 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: retf
;
; Far API calls:
;   UNLOCKSEGMENT
;-------------------------------------------------------------------------
;   [sub-routine] L_1694
L_1694:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    es                              ; 06
        push    ds                              ; 1E
        call    far KERNEL.UNLOCKSEGMENT        ; 9A 8A 16 00 00 [FIXUP]
        pop     es                              ; 07
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_16B5   offset=0x16B5  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_16B5
L_16B5:
        mov     si, bx                          ; 8B F3
;   [loop start] L_16B7
L_16B7:
        or      si, si                          ; 0B F6
        je      L_16C9                          ; 74 0E
        mov     dx, si                          ; 8B D6
        mov     si, word ptr [si]               ; 8B 34
        mov     si, word ptr [si]               ; 8B 34
        push    dx                              ; 52
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A A4 12 00 00 [FIXUP]
        jmp     L_16B7                          ; EB EE
;   [error/early exit] L_16C9
L_16C9:
        ret                                     ; C3

;-----------------------------------------------------------------------
; GETRGNBOX  (offset 0x16CA, size 54 bytes)
;-----------------------------------------------------------------------
GETRGNBOX PROC FAR
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
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        or      si, si                          ; 0B F6
        je      L_16F3                          ; 74 14
        push    si                              ; 56
        call    L_11A5                          ; E8 C2 FA
        mov     si, word ptr [si]               ; 8B 34
        add     si, 0xc                         ; 83 C6 0C
        les     di, ptr [bp + 6]                ; C4 7E 06
        cld                                     ; FC
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [conditional branch target (if/else)] L_16F3
L_16F3:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
GETRGNBOX ENDP


;-----------------------------------------------------------------------
; INQUIREVISRGN  (offset 0x1700, size 36 bytes)
;-----------------------------------------------------------------------
INQUIREVISRGN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, bx                          ; 0B DB
        je      L_1719                          ; 74 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x8c]        ; 8B 87 8C 00
;   [conditional branch target (if/else)] L_1719
L_1719:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
INQUIREVISRGN ENDP


;-----------------------------------------------------------------------
; GDIINITAPP  (offset 0x1724, size 43 bytes)
;-----------------------------------------------------------------------
GDIINITAPP PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x1000                      ; B8 00 10
        push    word ptr [0x228]                ; FF 36 28 02
        ;   ^ arg wFlags
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A 0B 16 00 00 [FIXUP]
        jcxz    L_1746                          ; E3 09
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A C3 16 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [conditional branch target (if/else)] L_1746
L_1746:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
GDIINITAPP ENDP

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cdq                                     ; 99
        mov     word ptr es:[bx + 4], dx        ; 26 89 57 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, word ptr [si]               ; 8B 04
        add     word ptr es:[bx], ax            ; 26 01 07
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        adc     word ptr es:[bx + 2], ax        ; 26 11 47 02
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        adc     word ptr es:[bx + 4], ax        ; 26 11 47 04
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        lds     si, ptr [bp + 6]                ; C5 76 06
        mov     ax, word ptr [si]               ; 8B 04
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        sbb     word ptr es:[bx + 2], ax        ; 26 19 47 02
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sbb     word ptr es:[bx + 4], ax        ; 26 19 47 04
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        shl     word ptr es:[bx], 1             ; 26 D1 27
        rcl     word ptr es:[bx + 2]            ; 26 D1 57 02
        rcl     word ptr es:[bx + 4]            ; 26 D1 57 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        mov     word ptr es:[bx + 4], cx        ; 26 89 4F 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        jge     L_1818                          ; 7D 0B
        neg     word ptr [bp + 8]               ; F7 5E 08
        sbb     word ptr [bp + 0xa], cx         ; 19 4E 0A
        neg     word ptr [bp + 0xa]             ; F7 5E 0A
        not     cx                              ; F7 D1
;   [conditional branch target (if/else)] L_1818
L_1818:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, ax                          ; 0B C0
        jge     L_1824                          ; 7D 05
        neg     word ptr [bp + 6]               ; F7 5E 06
        not     cx                              ; F7 D1
;   [conditional branch target (if/else)] L_1824
L_1824:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mul     word ptr [bp + 6]               ; F7 66 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mul     word ptr [bp + 6]               ; F7 66 06
        add     word ptr es:[bx + 2], ax        ; 26 01 47 02
        adc     word ptr es:[bx + 4], dx        ; 26 11 57 04
        or      cx, cx                          ; 0B C9
        je      L_1858                          ; 74 15
        xor     cx, cx                          ; 33 C9
        neg     word ptr es:[bx + 4]            ; 26 F7 5F 04
        neg     word ptr es:[bx + 2]            ; 26 F7 5F 02
        sbb     word ptr es:[bx + 4], cx        ; 26 19 4F 04
        neg     word ptr es:[bx]                ; 26 F7 1F
        sbb     word ptr es:[bx + 2], cx        ; 26 19 4F 02
;   [conditional branch target (if/else)] L_1858
L_1858:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_1863   offset=0x1863  size=180 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=2)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_15FE, L_1651, L_1683
;-------------------------------------------------------------------------
;   [sub-routine] L_1863
L_1863:
        ;   = cProc <36> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [di + 0x10]        ; 8B 45 10
        or      ax, ax                          ; 0B C0
        mov     di, word ptr [0x36]             ; 8B 3E 36 00
        je      L_18B7                          ; 74 37
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     cx, word ptr [bx + 8]           ; 8B 4F 08
        sub     cx, 2                           ; 83 E9 02
        mov     word ptr [bp - 0x22], cx        ; 89 4E DE
        mov     dx, bx                          ; 8B D3
;   [loop start] L_1893
L_1893:
        mov     di, word ptr [bx]               ; 8B 3F
        or      di, di                          ; 0B FF
        je      L_18BC                          ; 74 23
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     ax, word ptr [bx + 2]           ; 3B 47 02
        jne     L_1893                          ; 75 F3
        mov     cx, word ptr [bp - 0x22]        ; 8B 4E DE
        or      cx, cx                          ; 0B C9
        jne     L_18B7                          ; 75 10
        mov     cx, word ptr [si + 0x40]        ; 8B 4C 40
        cmp     cx, word ptr [bx + 6]           ; 3B 4F 06
        jne     L_1893                          ; 75 E4
        mov     cx, word ptr [si + 0x42]        ; 8B 4C 42
        cmp     cx, word ptr [bx + 8]           ; 3B 4F 08
        jne     L_1893                          ; 75 DC
;   [conditional branch target (if/else)] L_18B7
L_18B7:
        mov     ax, di                          ; 8B C7
        jmp     L_1A0A                          ; E9 4E 01
;   [conditional branch target (if/else)] L_18BC
L_18BC:
        mov     cx, word ptr [si + 0x84]        ; 8B 8C 84 00
        mov     word ptr [bp - 0xa], cx         ; 89 4E F6
        mov     cx, word ptr [si + 0x86]        ; 8B 8C 86 00
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        mov     cx, word ptr [si + 0x40]        ; 8B 4C 40
        mov     word ptr [bp - 0x10], cx        ; 89 4E F0
        mov     cx, word ptr [si + 0x42]        ; 8B 4C 42
        mov     word ptr [bp - 0xe], cx         ; 89 4E F2
        mov     cx, word ptr [si + 0x2a]        ; 8B 4C 2A
        mov     si, dx                          ; 8B F2
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        cld                                     ; FC
        add     si, 8                           ; 83 C6 08
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        sub     si, 0x10                        ; 83 EE 10
        mov     di, dx                          ; 8B FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [si + 8], 3            ; 83 7C 08 03
        jne     L_194E                          ; 75 51
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A F1 14 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     word ptr [bp - 0x14], dx        ; 89 56 EC
        mov     es, dx                          ; 8E C2
        mov     bx, ax                          ; 8B D8
        or      dx, ax                          ; 0B D0
        jne     L_191A                          ; 75 03
        jmp     L_1A07                          ; E9 ED 00
;   [conditional branch target (if/else)] L_191A
L_191A:
        add     ax, 0x20                        ; 05 20 00
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], es      ; 26 8C 47 0C
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        mov     cx, word ptr [si + 0x28]        ; 8B 4C 28
        test    byte ptr [si + 8], 1            ; F6 44 08 01
        je      L_1946                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, ax                          ; 8B D8
        mov     es, cx                          ; 8E C1
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     cx, word ptr es:[bx + 0x14]     ; 26 8B 4F 14
        pop     bx                              ; 5B
        pop     es                              ; 07
;   [conditional branch target (if/else)] L_1946
L_1946:
        mov     word ptr es:[bx + 0x12], ax     ; 26 89 47 12
        mov     word ptr es:[bx + 0x14], cx     ; 26 89 4F 14
;   [conditional branch target (if/else)] L_194E
L_194E:
        lea     di, [bp - 0x18]                 ; 8D 7E E8
        call    L_1651                          ; E8 FD FC
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        mov     ax, 2                           ; B8 02 00
        xor     cx, cx                          ; 33 C9
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    ax                              ; 50
        push    ss                              ; 16
        push    di                              ; 57
        push    cx                              ; 51
        push    cx                              ; 51
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lcall   [bx + 0x24]                     ; FF 5F 24
        or      ax, ax                          ; 0B C0
        jne     L_197B                          ; 75 02
        jmp     L_1986                          ; EB 0B
;   [conditional branch target (if/else)] L_197B
L_197B:
        add     ax, 0xa                         ; 05 0A 00
        push    ax                              ; 50
        call    L_15FE                          ; E8 7C FC
        or      ax, ax                          ; 0B C0
        jne     L_1989                          ; 75 03
;   [unconditional branch target] L_1986
L_1986:
        jmp     L_19F5                          ; EB 6D
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1989
L_1989:
        push    ax                              ; 50
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        mov     dx, ax                          ; 8B D0
        add     ax, 0xa                         ; 05 0A 00
        mov     cx, 2                           ; B9 02 00
        push    dx                              ; 52
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    cx                              ; 51
        push    ss                              ; 16
        push    di                              ; 57
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lcall   [bx + 0x24]                     ; FF 5F 24
        pop     dx                              ; 5A
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        jne     L_19BC                          ; 75 05
        mov     si, bx                          ; 8B F3
        jmp     L_19E8                          ; EB 2D
        nop                                     ; 90
;   [conditional branch target (if/else)] L_19BC
L_19BC:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     cx, word ptr [si + 6]           ; 8B 4C 06
        mov     si, dx                          ; 8B F2
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     di, word ptr [di]               ; 8B 3D
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     word ptr [si + 4], cx           ; 89 4C 04
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [si + 6], ax           ; 89 44 06
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [si + 8], ax           ; 89 44 08
        mov     word ptr [bp - 6], bx           ; 89 5E FA
        mov     cx, bx                          ; 8B CB
        xchg    word ptr [di], bx               ; 87 1D
        mov     word ptr [si], bx               ; 89 1C
        xor     si, si                          ; 33 F6
        mov     bx, cx                          ; 8B D9
;   [unconditional branch target] L_19E8
L_19E8:
        dec     byte ptr [bx + 3]               ; FE 4F 03
        or      si, si                          ; 0B F6
        je      L_19F5                          ; 74 06
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 3F 17 00 00 [FIXUP]
;   [branch target] L_19F5
L_19F5:
        call    L_1683                          ; E8 8B FC
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1A07                          ; 74 08
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A AD 15 00 00 [FIXUP]
;   [branch target] L_1A07
L_1A07:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [fall-through exit] L_1A0A
L_1A0A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_1A12   offset=0x1A12  size=179 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=5, ASM=4)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_15FE, L_1651, L_1683, L_2D82, L_333D
;-------------------------------------------------------------------------
;   [sub-routine] L_1A12
L_1A12:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [si + 0x12]        ; 8B 44 12
        or      ax, ax                          ; 0B C0
        mov     di, word ptr [0x34]             ; 8B 3E 34 00
        mov     si, bx                          ; 8B F3
        je      L_1A9D                          ; 74 65
        mov     si, word ptr [bx + 0x12]        ; 8B 77 12
        mov     word ptr [bp - 0x18], si        ; 89 76 E8
        mov     si, word ptr [si]               ; 8B 34
        add     si, 8                           ; 83 C6 08
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        lea     di, [bp - 0x14]                 ; 8D 7E EC
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     cx, 0xa                         ; B9 0A 00
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        mov     si, di                          ; 8B F7
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, dx                          ; 8B C2
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        mov     cx, 2                           ; B9 02 00
        push    word ptr [bp + 6]               ; FF 76 06
        push    ss                              ; 16
        push    si                              ; 56
        push    cx                              ; 51
        call    L_333D                          ; E8 CF 18
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        jns     L_1A78                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_1A78
L_1A78:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        mov     cx, word ptr [si + 4]           ; 8B 4C 04
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [loop start] L_1A8B
L_1A8B:
        mov     di, word ptr [bx]               ; 8B 3F
        or      di, di                          ; 0B FF
        je      L_1AA2                          ; 74 11
        mov     bx, word ptr [di]               ; 8B 1D
        cmp     cx, word ptr [bx + 2]           ; 3B 4F 02
        jne     L_1A8B                          ; 75 F3
        cmp     ax, word ptr [bx + 6]           ; 3B 47 06
        jne     L_1A8B                          ; 75 EE
;   [conditional branch target (if/else)] L_1A9D
L_1A9D:
        mov     ax, di                          ; 8B C7
        jmp     L_1B68                          ; E9 C6 00
;   [conditional branch target (if/else)] L_1AA2
L_1AA2:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        xor     cx, cx                          ; 33 C9
        lea     di, [bp - 0x14]                 ; 8D 7E EC
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        push    cx                              ; 51
        push    cx                              ; 51
        push    cx                              ; 51
        push    cx                              ; 51
        lcall   [bx + 0x24]                     ; FF 5F 24
        or      ax, ax                          ; 0B C0
        jne     L_1AC9                          ; 75 03
        jmp     L_1B5C                          ; E9 93 00
;   [conditional branch target (if/else)] L_1AC9
L_1AC9:
        add     ax, 0xa                         ; 05 0A 00
        push    ax                              ; 50
        call    L_15FE                          ; E8 2E FB
        or      ax, ax                          ; 0B C0
        jne     L_1AD7                          ; 75 03
        jmp     L_1B5C                          ; E9 85 00
;   [conditional branch target (if/else)] L_1AD7
L_1AD7:
        push    ax                              ; 50
        mov     bx, ax                          ; 8B D8
        inc     byte ptr [bx + 3]               ; FE 47 03
        mov     ax, word ptr [bx]               ; 8B 07
        call    L_1651                          ; E8 6F FB
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
        add     ax, 0xa                         ; 05 0A 00
        ; constant WM_CREATE
        mov     cx, 1                           ; B9 01 00
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    cx                              ; 51
        push    ss                              ; 16
        push    di                              ; 57
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        lcall   [bx + 0x24]                     ; FF 5F 24
        call    L_1683                          ; E8 80 FB
        pop     bx                              ; 5B
        or      ax, ax                          ; 0B C0
        jne     L_1B0D                          ; 75 05
        mov     si, bx                          ; 8B F3
        jmp     L_1B4F                          ; EB 43
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1B0D
L_1B0D:
        mov     word ptr [bp - 0x16], bx        ; 89 5E EA
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     word ptr [bx + 2], ax           ; 89 47 02
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        mov     word ptr [bx + 4], ax           ; 89 47 04
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        mov     word ptr [bx + 6], ax           ; 89 47 06
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        mov     di, word ptr [di]               ; 8B 3D
        push    bx                              ; 53
        push    ax                              ; 50
        push    word ptr [di + 0x28]            ; FF 75 28
        push    word ptr [di + 0x2a]            ; FF 75 2A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 4C 12
        pop     bx                              ; 5B
        mov     word ptr [bx + 8], ax           ; 89 47 08
        mov     di, word ptr [bp - 0x16]        ; 8B 7E EA
        mov     si, word ptr [di]               ; 8B 35
        mov     bx, word ptr [bp - 0x18]        ; 8B 5E E8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     cx, di                          ; 8B CF
        xchg    word ptr [bx], di               ; 87 3F
        mov     word ptr [si], di               ; 89 3C
        xor     si, si                          ; 33 F6
        mov     bx, word ptr [bp - 0x16]        ; 8B 5E EA
;   [unconditional branch target] L_1B4F
L_1B4F:
        dec     byte ptr [bx + 3]               ; FE 4F 03
        or      si, si                          ; 0B F6
        je      L_1B5C                          ; 74 06
        push    si                              ; 56
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A F1 19 00 00 [FIXUP]
;   [branch target] L_1B5C
L_1B5C:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        or      ax, ax                          ; 0B C0
        je      L_1B94                          ; 74 31
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     si, word ptr [si]               ; 8B 34
;   [unconditional branch target] L_1B68
L_1B68:
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        or      bx, bx                          ; 0B DB
        je      L_1B72                          ; 74 03
        dec     byte ptr [bx + 3]               ; FE 4F 03
;   [conditional branch target (if/else)] L_1B72
L_1B72:
        mov     word ptr [si + 0x1e], ax        ; 89 44 1E
        mov     di, ax                          ; 8B F8
        inc     byte ptr [di + 3]               ; FE 45 03
        mov     bx, word ptr [di]               ; 8B 1D
        mov     dx, word ptr [bx + 6]           ; 8B 57 06
        mov     word ptr [si + 0x80], dx        ; 89 94 80 00
        mov     dx, word ptr [bx + 8]           ; 8B 57 08
        mov     word ptr [si + 0x82], dx        ; 89 94 82 00
        add     bx, 0xa                         ; 83 C3 0A
        mov     word ptr [si + 0x2e], bx        ; 89 5C 2E
        and     byte ptr [si + 8], 0xdf         ; 80 64 08 DF
;   [conditional branch target (if/else)] L_1B94
L_1B94:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00

;-----------------------------------------------------------------------
; SETBRUSHORG  (offset 0x1BA1, size 44 bytes)
;-----------------------------------------------------------------------
SETBRUSHORG PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        or      bx, bx                          ; 0B DB
        je      L_1BC2                          ; 74 10
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        xchg    word ptr [bx + 0x84], ax        ; 87 87 84 00
        xchg    word ptr [bx + 0x86], dx        ; 87 97 86 00
;   [conditional branch target (if/else)] L_1BC2
L_1BC2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETBRUSHORG ENDP


;-----------------------------------------------------------------------
; UNREALIZEOBJECT  (offset 0x1BCD, size 78 bytes)
;-----------------------------------------------------------------------
UNREALIZEOBJECT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        or      di, di                          ; 0B FF
        je      L_1C17                          ; 74 37
        mov     di, word ptr [di]               ; 8B 3D
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        or      dx, dx                          ; 0B D2
        js      L_1C17                          ; 78 2E
        cmp     dx, 2                           ; 83 FA 02
        jne     L_1C17                          ; 75 29
        mov     bx, word ptr [di]               ; 8B 1D
;   [loop start] L_1BF0
L_1BF0:
        or      bx, bx                          ; 0B DB
        je      L_1C00                          ; 74 0C
        cmp     byte ptr [bx + 3], 1            ; 80 7F 03 01
        jae     L_1C17                          ; 73 1D
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     bx, word ptr [bx]               ; 8B 1F
        jmp     L_1BF0                          ; EB F0
;   [conditional branch target (if/else)] L_1C00
L_1C00:
        mov     bx, word ptr [di]               ; 8B 1D
        call    L_16B5                          ; E8 B0 FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [di], ax               ; 89 05
        inc     ax                              ; 40
;   [loop start] L_1C0A
L_1C0A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [conditional branch target (if/else)] L_1C17
L_1C17:
        xor     ax, ax                          ; 33 C0
        jmp     L_1C0A                          ; EB EF
UNREALIZEOBJECT ENDP

; Description (heuristic):
;   Pure computation / dispatcher (45 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1C1B   offset=0x1C1B  size=45 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1C1B
L_1C1B:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1C7E                          ; 74 4C
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [si + 0xe], ax         ; 01 44 0E
        add     word ptr [si + 0x12], ax        ; 01 44 12
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr [si + 0xc], ax         ; 01 44 0C
        add     word ptr [si + 0x10], ax        ; 01 44 10
        mov     di, si                          ; 8B FE
        add     di, 0x14                        ; 83 C7 14
        jmp     L_1C74                          ; EB 29
;   [loop start] L_1C4B
L_1C4B:
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        add     di, 2                           ; 83 C7 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [di - 2], ax           ; 01 45 FE
        add     di, 2                           ; 83 C7 02
;   [loop start] L_1C5F
L_1C5F:
        add     word ptr [di - 2], ax           ; 01 45 FE
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        je      L_1C74                          ; 74 08
        add     di, 2                           ; 83 C7 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_1C5F                          ; EB EB
;   [branch target] L_1C74
L_1C74:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jne     L_1C4B                          ; 75 CD
;   [conditional branch target (if/else)] L_1C7E
L_1C7E:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (82 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1C89   offset=0x1C89  size=82 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1C89, L_1D2D
;-------------------------------------------------------------------------
;   [sub-routine] L_1C89
L_1C89:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_1CFA                          ; 74 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_1CFA                          ; 74 4A
        mov     si, bx                          ; 8B F3
        add     si, 0x14                        ; 83 C6 14
        jmp     L_1CF0                          ; EB 39
;   [loop start] L_1CB7
L_1CB7:
        add     si, 2                           ; 83 C6 02
        mov     di, word ptr [si - 2]           ; 8B 7C FE
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [loop start] L_1CC5
L_1CC5:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        je      L_1CF0                          ; 74 24
        dec     di                              ; 4F
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1D2D                          ; E8 48 00
        or      ax, ax                          ; 0B C0
        je      L_1CC5                          ; 74 DC
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_1CFA                          ; EB 0A
;   [branch target] L_1CF0
L_1CF0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jne     L_1CB7                          ; 75 BD
;   [branch target] L_1CFA
L_1CFA:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C89                          ; E8 67 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Pure computation / dispatcher (105 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1D2D   offset=0x1D2D  size=105 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1D2D
L_1D2D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], si            ; 26 39 37
        jg      L_1D69                          ; 7F 23
        cmp     word ptr es:[bx + 4], si        ; 26 39 77 04
        jle     L_1D69                          ; 7E 1D
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_1D69                          ; 7C 10
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_1D6D                          ; 7C 04
;   [conditional branch target (if/else)] L_1D69
L_1D69:
        sub     ax, ax                          ; 2B C0
        jmp     L_1D70                          ; EB 03
;   [conditional branch target (if/else)] L_1D6D
L_1D6D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1D70
L_1D70:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jg      L_1D9B                          ; 7F 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
;   [conditional branch target (if/else)] L_1D9B
L_1D9B:
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx]            ; 26 8B 37
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        cmp     di, si                          ; 3B FE
        jle     L_1DBA                          ; 7E 04
        mov     ax, di                          ; 8B C7
        jmp     L_1DBC                          ; EB 02
;   [conditional branch target (if/else)] L_1DBA
L_1DBA:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_1DBC
L_1DBC:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jle     L_1DD5                          ; 7E 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
;   [conditional branch target (if/else)] L_1DD5
L_1DD5:
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jle     L_1DF3                          ; 7E 03
        les     bx, ptr [bp + 6]                ; C4 5E 06
;   [conditional branch target (if/else)] L_1DF3
L_1DF3:
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        cmp     word ptr es:[bx + 4], ax        ; 26 39 47 04
        jle     L_1E11                          ; 7E 0A
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cmp     word ptr es:[bx + 6], ax        ; 26 39 47 06
        jg      L_1E27                          ; 7F 16
;   [conditional branch target (if/else)] L_1E11
L_1E11:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_1E2A                          ; EB 03
;   [conditional branch target (if/else)] L_1E27
L_1E27:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1E2A
L_1E2A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (120 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_1E37   offset=0x1E37  size=120 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_1E37
L_1E37:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        lds     si, ptr [bp + 0x14]             ; C5 76 14
        mov     bx, ss                          ; 8C D3
        mov     es, bx                          ; 8E C3
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ds, ax                          ; 8E D8
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        or      ax, ax                          ; 0B C0
        je      L_1EB0                          ; 74 4E
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 4                           ; B8 04 00
        test    word ptr [bp + 0x18], 1         ; F7 46 18 01 00
        jne     L_1E71                          ; 75 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_1E71
L_1E71:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    word ptr [bp + 0x18], 2         ; F7 46 18 02 00
        jne     L_1E83                          ; 75 05
        add     si, word ptr [si + 8]           ; 03 74 08
        jmp     L_1E8B                          ; EB 08
;   [conditional branch target (if/else)] L_1E83
L_1E83:
        add     si, 0x14                        ; 83 C6 14
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jmp     L_1EC6                          ; EB 3B
;   [loop start (also forward branch)] L_1E8B
L_1E8B:
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        jl      L_1EB0                          ; 7C 20
        test    word ptr [bp + 0x18], 2         ; F7 46 18 02 00
        jne     L_1EBD                          ; 75 26
        mov     di, si                          ; 8B FE
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        add     si, 0x14                        ; 83 C6 14
;   [loop start] L_1E9F
L_1E9F:
        mov     ax, word ptr [si]               ; 8B 04
        shl     ax, 1                           ; D1 E0
        add     ax, 6                           ; 05 06 00
        add     si, ax                          ; 03 F0
        cmp     si, di                          ; 3B F7
        jne     L_1E9F                          ; 75 F3
        sub     si, ax                          ; 2B F0
        jmp     L_1EC6                          ; EB 16
;   [loop start (also forward branch)] L_1EB0
L_1EB0:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x16                            ; CA 16 00
;   [conditional branch target (if/else)] L_1EBD
L_1EBD:
        mov     ax, word ptr [si]               ; 8B 04
        shl     ax, 1                           ; D1 E0
        add     ax, 6                           ; 05 06 00
        add     si, ax                          ; 03 F0
;   [unconditional branch target] L_1EC6
L_1EC6:
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     dx, ax                          ; 3B D0
        jge     L_1ED2                          ; 7D 02
        mov     dx, ax                          ; 8B D0
;   [conditional branch target (if/else)] L_1ED2
L_1ED2:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     cx, word ptr [bp - 4]           ; 8B 4E FC
        cmp     ax, cx                          ; 3B C1
        jl      L_1EDE                          ; 7C 02
        mov     ax, cx                          ; 8B C1
;   [conditional branch target (if/else)] L_1EDE
L_1EDE:
        cmp     dx, ax                          ; 3B D0
        jge     L_1E8B                          ; 7D A9
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     di, si                          ; 8B FE
        add     di, 6                           ; 83 C7 06
        mov     ax, word ptr [si]               ; 8B 04
        shr     ax, 1                           ; D1 E8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        test    word ptr [bp + 0x18], 1         ; F7 46 18 01 00
        jne     L_1F04                          ; 75 07
        dec     ax                              ; 48
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     di, ax                          ; 03 F8
;   [conditional branch target (if/else)] L_1F04
L_1F04:
        sub     di, word ptr [bp - 0x10]        ; 2B 7E F0
;   [loop start] L_1F07
L_1F07:
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        jge     L_1F0F                          ; 7D 03
        jmp     L_1E8B                          ; E9 7C FF
;   [conditional branch target (if/else)] L_1F0F
L_1F0F:
        add     di, word ptr [bp - 0x10]        ; 03 7E F0
        mov     dx, word ptr [di]               ; 8B 15
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     dx, ax                          ; 3B D0
        jg      L_1F1D                          ; 7F 02
        mov     dx, ax                          ; 8B D0
;   [conditional branch target (if/else)] L_1F1D
L_1F1D:
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        cmp     ax, cx                          ; 3B C1
        jl      L_1F29                          ; 7C 02
        mov     ax, cx                          ; 8B C1
;   [conditional branch target (if/else)] L_1F29
L_1F29:
        cmp     dx, ax                          ; 3B D0
        jge     L_1F07                          ; 7D DA
        mov     word ptr es:[bx + 4], ax        ; 26 89 47 04
        mov     word ptr es:[bx], dx            ; 26 89 17
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0x10]                     ; FF 5E 10
        or      ax, ax                          ; 0B C0
        jne     L_1F49                          ; 75 03
        jmp     L_1EB0                          ; E9 67 FF
;   [conditional branch target (if/else)] L_1F49
L_1F49:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        jmp     L_1F07                          ; EB B9
; Description (heuristic):
;   Pure computation / dispatcher (340 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1F4E   offset=0x1F4E  size=340 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=9, ASM=2)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1651, L_1683, L_1E37, L_333D, L_36B8
;-------------------------------------------------------------------------
;   [sub-routine] L_1F4E
L_1F4E:
        ;   = cProc <66> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x42                        ; 83 EC 42
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     word ptr [bp - 0x42], 0         ; C7 46 BE 00 00
        mov     word ptr [bp - 0xa], 3          ; C7 46 F6 03 00
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp + 0x18], ax        ; 39 46 18
        jne     L_1F7F                          ; 75 03
        jmp     L_2218                          ; E9 99 02
;   [conditional branch target (if/else)] L_1F7F
L_1F7F:
        mov     bx, word ptr [bp + 0x18]        ; 8B 5E 18
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_1F96                          ; 7C 0C
        mov     ax, 0x922                       ; B8 22 09
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_36B8                          ; E8 25 17
        jmp     L_2218                          ; E9 82 02
;   [conditional branch target (if/else)] L_1F96
L_1F96:
        call    L_1651                          ; E8 B8 F6
        mov     bx, word ptr [bp + 0x18]        ; 8B 5E 18
        mov     si, word ptr [bx]               ; 8B 37
        test    byte ptr [si + 8], 1            ; F6 44 08 01
        jne     L_1FA9                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1FAB                          ; EB 02
;   [conditional branch target (if/else)] L_1FA9
L_1FA9:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1FAB
L_1FAB:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], ds        ; 8C 5E EA
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1FEA                          ; 74 0F
        push    word ptr [bp + 0x18]            ; FF 76 18
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 53 13
;   [conditional branch target (if/else)] L_1FEA
L_1FEA:
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        sub     ax, word ptr [bp - 0x32]        ; 2B 46 CE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jge     L_2009                          ; 7D 12
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x2e]        ; 8B 46 D2
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x2e], ax        ; 89 46 D2
;   [conditional branch target (if/else)] L_2009
L_2009:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, word ptr [bp - 0x30]        ; 2B 46 D0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jge     L_2028                          ; 7D 12
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [bp - 0x30], ax        ; 89 46 D0
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
;   [conditional branch target (if/else)] L_2028
L_2028:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_2035                          ; 75 03
        jmp     L_21B7                          ; E9 82 01
;   [conditional branch target (if/else)] L_2035
L_2035:
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_2051                          ; 75 03
        jmp     L_211F                          ; E9 CE 00
;   [conditional branch target (if/else)] L_2051
L_2051:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [bp + 0x12]        ; 03 46 12
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp + 0x10]        ; 03 46 10
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        push    bx                              ; 53
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 CD 12
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_207F                          ; 7D 09
        mov     ax, word ptr [bp + 0x12]        ; 8B 46 12
        add     word ptr [bp - 0x2a], ax        ; 01 46 D6
        add     word ptr [bp - 0x26], ax        ; 01 46 DA
;   [conditional branch target (if/else)] L_207F
L_207F:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_208E                          ; 7D 09
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        add     word ptr [bp - 0x28], ax        ; 01 46 D8
        add     word ptr [bp - 0x24], ax        ; 01 46 DC
;   [conditional branch target (if/else)] L_208E
L_208E:
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        cmp     word ptr [bp - 0x26], ax        ; 39 46 DA
        jge     L_20A5                          ; 7D 0F
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x2a], ax        ; 89 46 D6
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
;   [conditional branch target (if/else)] L_20A5
L_20A5:
        mov     ax, word ptr [bp - 0x28]        ; 8B 46 D8
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jge     L_20BC                          ; 7D 0F
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
;   [conditional branch target (if/else)] L_20BC
L_20BC:
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     ax, word ptr [bp - 0x28]        ; 2B 46 D8
        mov     cx, word ptr [bp - 0x2c]        ; 8B 4E D4
        sub     cx, word ptr [bp - 0x30]        ; 2B 4E D0
        cmp     ax, cx                          ; 3B C1
        jne     L_20DC                          ; 75 10
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        sub     ax, word ptr [bp - 0x2a]        ; 2B 46 D6
        mov     cx, word ptr [bp - 0x2e]        ; 8B 4E D2
        sub     cx, word ptr [bp - 0x32]        ; 2B 4E CE
        cmp     ax, cx                          ; 3B C1
        je      L_211F                          ; 74 43
;   [conditional branch target (if/else)] L_20DC
L_20DC:
        push    word ptr [bp + 0x18]            ; FF 76 18
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        lea     si, [bp - 0x32]                 ; 8D 76 CE
        mov     di, sp                          ; 8B FC
        add     di, 2                           ; 83 C7 02
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     si                              ; 5E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        lea     si, [bp - 0x2a]                 ; 8D 76 D6
        mov     di, sp                          ; 8B FC
        add     di, 2                           ; 83 C7 02
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     si                              ; 5E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_371                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        jmp     L_2212                          ; E9 F3 00
;   [branch target] L_211F
L_211F:
        mov     ax, word ptr [bp - 0x32]        ; 8B 46 CE
        cmp     word ptr [bp - 0x2a], ax        ; 39 46 D6
        jge     L_212B                          ; 7D 04
        and     byte ptr [bp - 0xa], 0xfe       ; 80 66 F6 FE
;   [conditional branch target (if/else)] L_212B
L_212B:
        mov     ax, word ptr [bp - 0x30]        ; 8B 46 D0
        cmp     word ptr [bp - 0x28], ax        ; 39 46 D8
        jge     L_2137                          ; 7D 04
        and     byte ptr [bp - 0xa], 0xfd       ; 80 66 F6 FD
;   [conditional branch target (if/else)] L_2137
L_2137:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0x26]        ; 8B 47 26
        mov     dx, word ptr [bx + 0x28]        ; 8B 57 28
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     byte ptr [bx + 0x7e], 1         ; 80 7F 7E 01
        jne     L_2152                          ; 75 06
        cmp     byte ptr [bx + 0x7f], 1         ; 80 7F 7F 01
        je      L_2157                          ; 74 05
;   [conditional branch target (if/else)] L_2152
L_2152:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2159                          ; EB 02
;   [conditional branch target (if/else)] L_2157
L_2157:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2159
L_2159:
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        cmp     byte ptr [si + 0x7e], 1         ; 80 7C 7E 01
        jne     L_2168                          ; 75 06
        cmp     byte ptr [si + 0x7f], 1         ; 80 7C 7F 01
        je      L_216D                          ; 74 05
;   [conditional branch target (if/else)] L_2168
L_2168:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_216F                          ; EB 02
;   [conditional branch target (if/else)] L_216D
L_216D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_216F
L_216F:
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        je      L_2188                          ; 74 10
        or      ax, ax                          ; 0B C0
        jne     L_2188                          ; 75 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, 0x3c                        ; 05 3C 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], ds        ; 8C 5E EA
;   [conditional branch target (if/else)] L_2188
L_2188:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        test    byte ptr [bx + 8], 1            ; F6 47 08 01
        jne     L_2196                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2198                          ; EB 02
;   [conditional branch target (if/else)] L_2196
L_2196:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2198
L_2198:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_21B7                          ; 74 16
        or      ax, ax                          ; 0B C0
        je      L_21B7                          ; 74 12
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        cmp     word ptr [bx + 0x1a], ax        ; 39 47 1A
        je      L_21B7                          ; 74 07
        mov     word ptr [bp - 0x20], 0         ; C7 46 E0 00 00
        jmp     L_2212                          ; EB 5B
;   [branch target] L_21B7
L_21B7:
        mov     ax, word ptr [si + 0x26]        ; 8B 44 26
        mov     dx, word ptr [si + 0x28]        ; 8B 54 28
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_21DD                          ; 75 14
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_21D7                          ; 74 08
;   [loop start] L_21CF
L_21CF:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0x2a]        ; 8B 47 2A
        jmp     L_21E0                          ; EB 09
;   [conditional branch target (if/else)] L_21D7
L_21D7:
        cmp     word ptr [bp - 0x3c], 0         ; 83 7E C4 00
        jne     L_21CF                          ; 75 F2
;   [conditional branch target (if/else)] L_21DD
L_21DD:
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
;   [unconditional branch target] L_21E0
L_21E0:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], dx        ; 89 56 E4
        push    word ptr [si + 0x2c]            ; FF 74 2C
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x32]                 ; 8D 46 CE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _SEG1_2220           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_2220           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1E37                          ; E8 25 FC
;   [unconditional branch target] L_2212
L_2212:
        call    L_1683                          ; E8 6E F4
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
;   [fall-through exit] L_2218
L_2218:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x18], 0      ; 26 83 7F 18 00
        je      L_2259                          ; 74 1D
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        sub     ax, word ptr es:[bx + 8]        ; 26 2B 47 08
        add     ax, word ptr es:[bx]            ; 26 03 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        add     ax, word ptr es:[bx + 2]        ; 26 03 47 02
        sub     ax, word ptr es:[bx + 0xa]      ; 26 2B 47 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_2259
L_2259:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     di, word ptr es:[bx]            ; 26 8B 3F
        push    word ptr es:[bx + 0x28]         ; 26 FF 77 28
        push    word ptr es:[bx + 0x26]         ; 26 FF 77 26
        push    di                              ; 57
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        sub     ax, di                          ; 2B C7
        push    ax                              ; 50
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        sub     ax, word ptr es:[bx + 2]        ; 26 2B 47 02
        push    ax                              ; 50
        push    word ptr es:[bx + 0x1e]         ; 26 FF 77 1E
        push    word ptr es:[bx + 0x1c]         ; 26 FF 77 1C
        mov     ax, word ptr [si + 0x30]        ; 8B 44 30
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        push    word ptr es:[bx + 0x22]         ; 26 FF 77 22
        mov     bx, word ptr es:[bx + 0x20]     ; 26 8B 5F 20
        lcall   [bx]                            ; FF 1F
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00

;-----------------------------------------------------------------------
; PATBLT  (offset 0x22BC, size 76 bytes)
;-----------------------------------------------------------------------
PATBLT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_22DC                          ; 7C 0B
        mov     ax, 0x61d                       ; B8 1D 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_36B8                          ; E8 DE 13
        jmp     L_22FD                          ; EB 21
;   [conditional branch target (if/else)] L_22DC
L_22DC:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1F4E                          ; E8 51 FC
;   [unconditional branch target] L_22FD
L_22FD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
PATBLT ENDP


;-----------------------------------------------------------------------
; BITBLT  (offset 0x2308, size 58 bytes)
;-----------------------------------------------------------------------
BITBLT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1F4E                          ; E8 17 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x14                            ; CA 14 00
BITBLT ENDP


;-----------------------------------------------------------------------
; STRETCHBLT  (offset 0x2342, size 340 bytes)
;-----------------------------------------------------------------------
STRETCHBLT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1c                        ; 83 EC 1C
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        cmp     word ptr [bp + 0x1c], 0         ; 83 7E 1C 00
        jne     L_235F                          ; 75 03
        jmp     L_2486                          ; E9 27 01
;   [conditional branch target (if/else)] L_235F
L_235F:
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jne     L_2368                          ; 75 03
        jmp     L_2486                          ; E9 1E 01
;   [conditional branch target (if/else)] L_2368
L_2368:
        mov     bx, word ptr [bp + 0x1c]        ; 8B 5E 1C
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_237F                          ; 7C 0C
        mov     ax, 0xb23                       ; B8 23 0B
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_36B8                          ; E8 3C 13
        jmp     L_2489                          ; E9 0A 01
;   [conditional branch target (if/else)] L_237F
L_237F:
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        add     ax, word ptr [bp + 0x16]        ; 03 46 16
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        add     ax, word ptr [bp + 0x14]        ; 03 46 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        add     ax, word ptr [bp + 0xc]         ; 03 46 0C
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 73 0F
        push    word ptr [bp + 0x12]            ; FF 76 12
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 64 0F
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        sub     ax, word ptr [bp - 0x18]        ; 2B 46 E8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [bp - 0x16]        ; 2B 46 EA
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_2413                          ; 74 12
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_2413                          ; 74 0C
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_2413                          ; 74 06
        cmp     word ptr [bp - 0x1c], 0         ; 83 7E E4 00
        jne     L_241A                          ; 75 07
;   [conditional branch target (if/else)] L_2413
L_2413:
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        jmp     L_2486                          ; EB 6C
;   [conditional branch target (if/else)] L_241A
L_241A:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jne     L_2450                          ; 75 2E
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jne     L_2450                          ; 75 26
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_1F4E                          ; E8 00 FB
        jmp     L_2483                          ; EB 33
;   [conditional branch target (if/else)] L_2450
L_2450:
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 0xe]                  ; 8D 76 F2
        mov     di, sp                          ; 8B FC
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        push    word ptr [bp + 0x12]            ; FF 76 12
        sub     sp, 8                           ; 83 EC 08
        lea     si, [bp - 0x18]                 ; 8D 76 E8
        mov     di, sp                          ; 8B FC
        push    ds                              ; 1E
        push    ss                              ; 16
        pop     ds                              ; 1F
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_371                  ; 9A 15 21 00 00 [FIXUP]
;   [unconditional branch target] L_2483
L_2483:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
;   [unconditional branch target] L_2486
L_2486:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
;   [unconditional branch target] L_2489
L_2489:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x18                            ; CA 18 00
STRETCHBLT ENDP


;-----------------------------------------------------------------------
; TEXTOUT  (offset 0x2496, size 411 bytes)
;-----------------------------------------------------------------------
TEXTOUT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x28                        ; 83 EC 28
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_24AF                          ; 75 05
;   [loop start] L_24AA
L_24AA:
        sub     ax, ax                          ; 2B C0
        jmp     L_2625                          ; E9 76 01
;   [conditional branch target (if/else)] L_24AF
L_24AF:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_24BB                          ; 75 06
;   [loop start] L_24B5
L_24B5:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2625                          ; E9 6A 01
;   [conditional branch target (if/else)] L_24BB
L_24BB:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        jl      L_24D2                          ; 7C 0C
        mov     ax, 0x521                       ; B8 21 05
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_36B8                          ; E8 E9 11
        jmp     L_2625                          ; E9 53 01
;   [conditional branch target (if/else)] L_24D2
L_24D2:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     si, word ptr [bx]               ; 8B 37
        test    byte ptr [si + 8], 0x40         ; F6 44 08 40
        je      L_24E7                          ; 74 0A
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2BC2                          ; E8 DF 06
        or      ax, ax                          ; 0B C0
        je      L_24AA                          ; 74 C3
;   [conditional branch target (if/else)] L_24E7
L_24E7:
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_254A                          ; 75 4B
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_254A                          ; 75 41
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     bx, word ptr [si + 0x16]        ; 8B 5C 16
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx + 0x16]        ; 8A 47 16
        mov     byte ptr [bp - 0x26], al        ; 88 46 DA
        test    word ptr [bp - 0x24], 0x4000    ; F7 46 DC 00 40
        je      L_2530                          ; 74 0A
        cmp     al, 3                           ; 3C 03
        jne     L_254A                          ; 75 20
        test    byte ptr [bp - 0x24], 2         ; F6 46 DC 02
        jne     L_254A                          ; 75 1A
;   [conditional branch target (if/else)] L_2530
L_2530:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_374                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2625                          ; E9 DB 00
;   [conditional branch target (if/else)] L_254A
L_254A:
        call    L_1651                          ; E8 04 F1
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     word ptr [bp - 0x16], dx        ; 89 56 EA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0x10]            ; FF 76 10
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_333D                          ; E8 C3 0D
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        not     ax                              ; F7 D0
        mov     bx, word ptr [si + 0x32]        ; 8B 5C 32
        and     ax, word ptr [bx + 0xf]         ; 23 47 0F
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        test    word ptr [bp - 0x28], 0x1e00    ; F7 46 D8 00 1E
        je      L_259A                          ; 74 06
        test    byte ptr [si + 9], 1            ; F6 44 09 01
        je      L_25D7                          ; 74 3D
;   [conditional branch target (if/else)] L_259A
L_259A:
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     bx, word ptr [si + 0x2c]        ; 8B 5C 2C
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    bx                              ; 53
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, OFFSET _SEG1_2631           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _SEG1_2631           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        push    si                              ; 56
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1E37                          ; E8 62 F8
        jmp     L_25E7                          ; EB 10
;   [conditional branch target (if/else)] L_25D7
L_25D7:
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp - 0x28]            ; FF 76 D8
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_372                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_25E7
L_25E7:
        cmp     word ptr [si + 0x48], 0         ; 83 7C 48 00
        je      L_261F                          ; 74 32
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [si + 0x36]            ; FF 74 36
        push    word ptr [si + 0x34]            ; FF 74 34
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x28]                     ; FF 5F 28
;   [conditional branch target (if/else)] L_261F
L_261F:
        call    L_1683                          ; E8 61 F0
        jmp     L_24B5                          ; E9 90 FE
;   [unconditional branch target] L_2625
L_2625:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
TEXTOUT ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        push    word ptr es:[bx + 0xe]          ; 26 FF 77 0E
        push    word ptr es:[bx + 0x10]         ; 26 FF 77 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr es:[bx + 0xa]          ; 26 FF 77 0A
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 0xc]          ; 26 FF 77 0C
        push    word ptr [si + 0x36]            ; FF 74 36
        push    word ptr [si + 0x34]            ; FF 74 34
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x28]                     ; FF 5F 28
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00

;-----------------------------------------------------------------------
; GETTEXTEXTENT  (offset 0x2687, size 39 bytes)
;-----------------------------------------------------------------------
GETTEXTEXTENT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_26D6                          ; E8 33 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
GETTEXTEXTENT ENDP


;-----------------------------------------------------------------------
; GETCONTINUINGTEXTEXTENT  (offset 0x26AE, size 40 bytes)
;-----------------------------------------------------------------------
GETCONTINUINGTEXTEXTENT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_26D6                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
GETCONTINUINGTEXTEXTENT ENDP

; Description (heuristic):
;   Pure computation / dispatcher (159 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_26D6   offset=0x26D6  size=159 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_286C, L_2BC2, L_32CE
;-------------------------------------------------------------------------
;   [sub-routine] L_26D6
L_26D6:
        ;   = cProc <40> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x28                        ; 83 EC 28
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_26EA                          ; 75 06
;   [loop start] L_26E4
L_26E4:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_2864                          ; E9 7A 01
;   [conditional branch target (if/else)] L_26EA
L_26EA:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, word ptr [bx]               ; 8B 37
        test    byte ptr [si + 8], 0x40         ; F6 44 08 40
        je      L_26FF                          ; 74 0A
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2BC2                          ; E8 C7 04
        or      ax, ax                          ; 0B C0
        je      L_26E4                          ; 74 E5
;   [conditional branch target (if/else)] L_26FF
L_26FF:
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_275F                          ; 75 48
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_275F                          ; 75 3E
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [si + 0x16]        ; 8B 5C 16
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     al, byte ptr [bx + 0x16]        ; 8A 47 16
        mov     byte ptr [bp - 0x24], al        ; 88 46 DC
        test    word ptr [bp - 0x16], 0x4000    ; F7 46 EA 00 40
        je      L_2748                          ; 74 0A
        cmp     al, 3                           ; 3C 03
        jne     L_275F                          ; 75 1D
        test    byte ptr [bp - 0x16], 2         ; F6 46 EA 02
        jne     L_275F                          ; 75 17
;   [conditional branch target (if/else)] L_2748
L_2748:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_375                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2864                          ; E9 05 01
;   [conditional branch target (if/else)] L_275F
L_275F:
        mov     di, word ptr [si + 0x32]        ; 8B 7C 32
        mov     bx, word ptr [si + 0xc]         ; 8B 5C 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 0x22]        ; 8B 47 22
        not     ax                              ; F7 D0
        and     ax, word ptr [di + 0xf]         ; 23 45 0F
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_286C                          ; E8 E8 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_27BA                          ; 74 2A
        test    word ptr [bp - 0x26], 0x200     ; F7 46 DA 00 02
        je      L_279D                          ; 74 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        inc     ax                              ; 40
        jmp     L_279F                          ; EB 02
;   [conditional branch target (if/else)] L_279D
L_279D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_279F
L_279F:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    word ptr [bp - 0x26], 0x400     ; F7 46 DA 00 04
        je      L_27B3                          ; 74 0A
        mov     ax, word ptr [di]               ; 8B 05
        dec     ax                              ; 48
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        jmp     L_27B5                          ; EB 02
;   [conditional branch target (if/else)] L_27B3
L_27B3:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_27B5
L_27B5:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_27C4                          ; EB 0A
;   [conditional branch target (if/else)] L_27BA
L_27BA:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
;   [unconditional branch target] L_27C4
L_27C4:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        or      ax, ax                          ; 0B C0
        je      L_27DF                          ; 74 09
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        add     word ptr [bp - 0x1c], ax        ; 01 46 E4
;   [conditional branch target (if/else)] L_27DF
L_27DF:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jge     L_27F2                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_27F4                          ; EB 02
;   [conditional branch target (if/else)] L_27F2
L_27F2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_27F4
L_27F4:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jge     L_2804                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_2806                          ; EB 02
;   [conditional branch target (if/else)] L_2804
L_2804:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2806
L_2806:
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_32CE                          ; E8 B4 0A
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        sub     ax, word ptr [bp - 0x1e]        ; 2B 46 E2
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jge     L_282D                          ; 7D 06
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [bp - 0x1a]        ; 2B 46 E6
;   [conditional branch target (if/else)] L_282D
L_282D:
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        cmp     word ptr [bp - 0x10], 0         ; 83 7E F0 00
        je      L_283B                          ; 74 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
;   [conditional branch target (if/else)] L_283B
L_283B:
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        sub     ax, word ptr [bp - 0x20]        ; 2B 46 E0
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jge     L_284E                          ; 7D 06
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        sub     ax, word ptr [bp - 0x1c]        ; 2B 46 E4
;   [conditional branch target (if/else)] L_284E
L_284E:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_285C                          ; 74 05
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_285C
L_285C:
        mov     dx, word ptr [bp - 0x18]        ; 8B 56 E8
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
;   [fall-through exit] L_2864
L_2864:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (76 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_286C   offset=0x286C  size=76 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1662, L_1694
;-------------------------------------------------------------------------
;   [sub-routine] L_286C
L_286C:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [si + 0x34]        ; 8B 44 34
        mov     dx, word ptr [si + 0x36]        ; 8B 54 36
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     di, word ptr [si + 0x32]        ; 8B 7C 32
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_2900                          ; 74 6D
        mov     ax, word ptr [si + 0x48]        ; 8B 44 48
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_28A9                          ; 74 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_28A9                          ; 75 06
        mov     ax, word ptr [si + 0x4c]        ; 8B 44 4C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_28A9
L_28A9:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1662                          ; E8 B4 ED
        push    word ptr [si + 0x28]            ; FF 74 28
        push    word ptr [si + 0x26]            ; FF 74 26
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [si + 0x3c]                 ; 8D 44 3C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     bx, word ptr [si + 0x2a]        ; 8B 5C 2A
        lcall   [bx + 0x28]                     ; FF 5F 28
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1694                          ; E8 AE ED
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_28F8                          ; 74 0C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_28F8                          ; 75 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si + 0x4c], ax        ; 89 44 4C
;   [conditional branch target (if/else)] L_28F8
L_28F8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     dx, word ptr [bp - 0xa]         ; 8B 56 F6
        jmp     L_2904                          ; EB 04
;   [conditional branch target (if/else)] L_2900
L_2900:
        mov     dx, word ptr [di]               ; 8B 15
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2904
L_2904:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00

;-----------------------------------------------------------------------
; CREATERECTRGNINDIRECT  (offset 0x2911, size 30 bytes)
;-----------------------------------------------------------------------
CREATERECTRGNINDIRECT PROC FAR
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
        call    L_3BCD                          ; E8 A9 12
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CREATERECTRGNINDIRECT ENDP


;-----------------------------------------------------------------------
; OFFSETRGN  (offset 0x292F, size 59 bytes)
;-----------------------------------------------------------------------
OFFSETRGN PROC FAR
;   [sub-routine] L_292F
L_292F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_295C                          ; 74 15
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1C1B                          ; E8 C8 F2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_11A5                          ; E8 4C E8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_295C
L_295C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
OFFSETRGN ENDP


;-----------------------------------------------------------------------
; OFFSETCLIPRGN  (offset 0x296A, size 119 bytes)
;-----------------------------------------------------------------------
OFFSETCLIPRGN PROC FAR
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_29D2                          ; 74 4F
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        je      L_29D2                          ; 74 40
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    bx                              ; 53
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 8A 09
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        sub     ax, word ptr [bp - 0xe]         ; 2B 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_292F                          ; E8 66 FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1112                          ; E8 43 E7
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_29D2
L_29D2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
OFFSETCLIPRGN ENDP


;-----------------------------------------------------------------------
; OFFSETVISRGN  (offset 0x29E1, size 73 bytes)
;-----------------------------------------------------------------------
OFFSETVISRGN PROC FAR
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
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_2A1B                          ; 74 21
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        push    word ptr [si + 0x8c]            ; FF B4 8C 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_1C1B                          ; E8 0F F2
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_11F3                          ; E8 E1 E7
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_1112                          ; E8 FA E6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_2A1B
L_2A1B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
OFFSETVISRGN ENDP


;-----------------------------------------------------------------------
; PTVISIBLE  (offset 0x2A2A, size 86 bytes)
;-----------------------------------------------------------------------
PTVISIBLE PROC FAR
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
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_2A71                          ; 74 2E
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    bx                              ; 53
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_333D                          ; E8 DC 08
        push    word ptr [si + 0x2c]            ; FF 74 2C
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1C89                          ; E8 1B F2
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_2A71
L_2A71:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
PTVISIBLE ENDP


;-----------------------------------------------------------------------
; RECTVISIBLE  (offset 0x2A80, size 219 bytes)
;-----------------------------------------------------------------------
RECTVISIBLE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x22                        ; 83 EC 22
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_2A9D                          ; 75 03
        jmp     L_2B4B                          ; E9 AE 00
;   [conditional branch target (if/else)] L_2A9D
L_2A9D:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 0x1c]        ; 8B 5F 1C
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        push    si                              ; 56
        push    di                              ; 57
        lea     di, [bp - 0x12]                 ; 8D 7E EE
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_333D                          ; E8 69 08
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_2B4B                          ; 74 6D
        mov     di, si                          ; 8B FE
        add     di, 0x14                        ; 83 C7 14
        jmp     L_2B41                          ; EB 5C
;   [loop start] L_2AE5
L_2AE5:
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
;   [loop start] L_2AFD
L_2AFD:
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        or      ax, ax                          ; 0B C0
        je      L_2B41                          ; 74 3A
        dec     word ptr [bp - 0x16]            ; FF 4E EA
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [di]               ; 8B 05
        add     di, 2                           ; 83 C7 02
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     word ptr [bp - 0x1e], ax        ; 39 46 E2
        jle     L_2AFD                          ; 7E DB
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jge     L_2AFD                          ; 7D D3
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jle     L_2AFD                          ; 7E CB
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jge     L_2AFD                          ; 7D C3
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_2B4B                          ; EB 0A
;   [branch target] L_2B41
L_2B41:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jne     L_2AE5                          ; 75 9A
;   [branch target] L_2B4B
L_2B4B:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
RECTVISIBLE ENDP


;-----------------------------------------------------------------------
; EQUALRGN  (offset 0x2B5B, size 103 bytes)
;-----------------------------------------------------------------------
EQUALRGN PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_2BB2                          ; 74 3D
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_2BB2                          ; 74 37
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bx]               ; 8B 37
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     di, word ptr [bx]               ; 8B 3F
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [di + 8]           ; 3B 45 08
        jmp     L_2BAB                          ; EB 16
;   [loop start] L_2B95
L_2B95:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        dec     word ptr [bp - 6]               ; FF 4E FA
        or      ax, ax                          ; 0B C0
        je      L_2BB2                          ; 74 13
        mov     ax, si                          ; 8B C6
        add     si, 0x1e                        ; 83 C6 1E
        mov     cx, di                          ; 8B CF
        add     di, 0x1e                        ; 83 C7 1E
        cmp     ax, cx                          ; 3B C1
;   [unconditional branch target] L_2BAB
L_2BAB:
        je      L_2B95                          ; 74 E8
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_2BB2
L_2BB2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
EQUALRGN ENDP

; Description (heuristic):
;   Allocation / initialization routine (3 alloc APIs).

;-------------------------------------------------------------------------
; sub_2BC2   offset=0x2BC2  size=159 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;   LOCKRESOURCE
;   YIELD(void) -> VOID
;-------------------------------------------------------------------------
;   [sub-routine] L_2BC2
L_2BC2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x26                        ; 83 EC 26
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     si, word ptr [bx]               ; 8B 37
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        mov     dx, word ptr [si + 6]           ; 8B 54 06
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [si + 0x64]        ; 8B 44 64
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        mov     ax, word ptr [si + 0x66]        ; 8B 44 66
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        mov     ax, word ptr [si + 0x6c]        ; 8B 44 6C
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [si + 0x6e]        ; 8B 44 6E
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        mov     ax, word ptr [si + 0x16]        ; 8B 44 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     dx, word ptr [bx + 6]           ; 8B 57 06
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x18], dx        ; 89 56 E8
;   [loop start] L_2C10
L_2C10:
        cmp     word ptr [0x138], 0             ; 83 3E 38 01 00
        jne     L_2C1E                          ; 75 07
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        je      L_2C25                          ; 74 07
;   [conditional branch target (if/else)] L_2C1E
L_2C1E:
        ; --> YIELD(void) -> VOID
        call    far KERNEL.YIELD                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_2C10                          ; EB EB
;   [conditional branch target (if/else)] L_2C25
L_2C25:
        inc     word ptr [0x13a]                ; FF 06 3A 01
        push    word ptr [0x394]                ; FF 36 94 03
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 27 2D 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     di, ax                          ; 8B F8
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
        jmp     L_2C96                          ; EB 58
;   [loop start] L_2C3E
L_2C3E:
        mov     ax, word ptr [di + 0xc]         ; 8B 45 0C
        mov     dx, word ptr [di + 0xe]         ; 8B 55 0E
        cmp     word ptr [bp - 0x18], dx        ; 39 56 E8
        jne     L_2C90                          ; 75 47
        cmp     word ptr [bp - 0x1a], ax        ; 39 46 E6
        jne     L_2C90                          ; 75 42
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     word ptr [bp - 0x22], ax        ; 39 46 DE
        jne     L_2C90                          ; 75 3A
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        cmp     word ptr [bp - 0x24], ax        ; 39 46 DC
        jne     L_2C90                          ; 75 32
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        cmp     word ptr [bp - 0x1c], ax        ; 39 46 E4
        jne     L_2C90                          ; 75 2A
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        cmp     word ptr [bp - 0x20], ax        ; 39 46 E0
        jne     L_2C90                          ; 75 22
        mov     ax, word ptr [di]               ; 8B 05
        mov     dx, word ptr [di + 2]           ; 8B 55 02
        cmp     word ptr [bp - 8], dx           ; 39 56 F8
        jne     L_2C90                          ; 75 18
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jne     L_2C90                          ; 75 13
        mov     ax, word ptr [di + 0x10]        ; 8B 45 10
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr [di + 0x12]        ; 8B 45 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        jmp     L_2CD2                          ; EB 42
;   [conditional branch target (if/else)] L_2C90
L_2C90:
        add     di, 0x15                        ; 83 C7 15
        inc     word ptr [bp - 0x14]            ; FF 46 EC
;   [unconditional branch target] L_2C96
L_2C96:
        mov     ax, word ptr [0x12c]            ; A1 2C 01
        cmp     word ptr [bp - 0x14], ax        ; 39 46 EC
        jb      L_2C3E                          ; 72 A0
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x22]            ; FF 76 DE
        push    word ptr [bp - 0x24]            ; FF 76 DC
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x20]            ; FF 76 E0
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [bp - 0x16]            ; FF 76 EA
        lea     ax, [bp - 0x1e]                 ; 8D 46 E2
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_382                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_2CD2
L_2CD2:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_2D57                          ; 74 7F
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A 30 15 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        or      ax, dx                          ; 0B C2
        jne     L_2CF1                          ; 75 07
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_2D57                          ; EB 66
;   [conditional branch target (if/else)] L_2CF1
L_2CF1:
        cmp     word ptr [si + 0x24], 0         ; 83 7C 24 00
        je      L_2CFF                          ; 74 08
        push    word ptr [si + 0x24]            ; FF 74 24
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 03 1A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2CFF
L_2CFF:
        cmp     word ptr [si + 0x22], 0         ; 83 7C 22 00
        je      L_2D0D                          ; 74 08
        push    word ptr [si + 0x22]            ; FF 74 22
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 5C 2D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_2D0D
L_2D0D:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     word ptr [si + 0x24], ax        ; 89 44 24
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     dx, word ptr [bp - 0xc]         ; 8B 56 F4
        mov     word ptr [si + 0x34], ax        ; 89 44 34
        mov     word ptr [si + 0x36], dx        ; 89 54 36
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0x32], ax        ; 89 44 32
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        mov     ax, word ptr es:[bx + 0x2f]     ; 26 8B 47 2F
        mov     dx, word ptr es:[bx + 0x31]     ; 26 8B 57 31
        mov     word ptr es:[bx + 0x2b], ax     ; 26 89 47 2B
        mov     word ptr es:[bx + 0x2d], dx     ; 26 89 57 2D
        test    byte ptr es:[bx], 4             ; 26 F6 07 04
        jne     L_2D53                          ; 75 0C
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     word ptr es:[bx + 0x2b], ax     ; 26 01 47 2B
        adc     word ptr es:[bx + 0x2d], dx     ; 26 11 57 2D
;   [conditional branch target (if/else)] L_2D53
L_2D53:
        and     byte ptr [si + 8], 0xbf         ; 80 64 08 BF
;   [branch target] L_2D57
L_2D57:
        push    word ptr [0x394]                ; FF 36 94 03
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x13a], 0             ; 83 3E 3A 01 00
        jbe     L_2D70                          ; 76 09
        dec     word ptr [0x13a]                ; FF 0E 3A 01
        mov     ax, word ptr [0x13a]            ; A1 3A 01
        jmp     L_2D72                          ; EB 02
;   [conditional branch target (if/else)] L_2D70
L_2D70:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_2D72
L_2D72:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00

;-----------------------------------------------------------------------
; MULDIV  (offset 0x2D82, size 101 bytes)
;-----------------------------------------------------------------------
MULDIV PROC FAR
;   [sub-routine] L_2D82
L_2D82:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     cx, bx                          ; 8B CB
        or      bx, bx                          ; 0B DB
        jns     L_2D97                          ; 79 02
        neg     bx                              ; F7 DB
;   [conditional branch target (if/else)] L_2D97
L_2D97:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        xor     cx, ax                          ; 33 C8
        or      ax, ax                          ; 0B C0
        jns     L_2DA2                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_2DA2
L_2DA2:
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        xor     cx, dx                          ; 33 CA
        or      dx, dx                          ; 0B D2
        jns     L_2DAD                          ; 79 02
        neg     dx                              ; F7 DA
;   [conditional branch target (if/else)] L_2DAD
L_2DAD:
        mul     dx                              ; F7 E2
        mov     cl, bl                          ; 8A CB
        sar     bx, 1                           ; D1 FB
        add     ax, bx                          ; 03 C3
        adc     dx, 0                           ; 83 D2 00
        shl     bx, 1                           ; D1 E3
        or      bl, cl                          ; 0A D9
        cmp     dx, bx                          ; 3B D3
        jae     L_2DDA                          ; 73 1A
        div     bx                              ; F7 F3
        or      ax, ax                          ; 0B C0
        js      L_2DDA                          ; 78 14
        or      cx, cx                          ; 0B C9
        jns     L_2DCC                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_2DCC
L_2DCC:
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
;   [loop start] L_2DCF
L_2DCF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [conditional branch target (if/else)] L_2DDA
L_2DDA:
        xor     dx, dx                          ; 33 D2
        mov     ax, 0x7fff                      ; B8 FF 7F
        or      cx, cx                          ; 0B C9
        jns     L_2DCF                          ; 79 EC
        not     ax                              ; F7 D0
        jmp     L_2DCF                          ; EB E8
MULDIV ENDP

; Description (heuristic):
;   Pure computation / dispatcher (75 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_2DE7   offset=0x2DE7  size=75 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_2D82
;-------------------------------------------------------------------------
;   [sub-routine] L_2DE7
L_2DE7:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 0xc]         ; 8B 7C 0C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [di + 0x28]        ; 8B 45 28
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [di + 0x2a]        ; 8B 5D 2A
        mov     cx, word ptr [si + 0x6c]        ; 8B 4C 6C
        push    cx                              ; 51
        push    ax                              ; 50
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 75 FF
        mov     bx, word ptr [si + 0x64]        ; 8B 5C 64
        mov     cx, word ptr [si + 0x66]        ; 8B 4C 66
        push    ax                              ; 50
        push    cx                              ; 51
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 67 FF
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [si + 0x6e]        ; 8B 44 6E
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        cmp     ax, bx                          ; 3B C3
        jl      L_2E3A                          ; 7C 0C
        mov     ax, bx                          ; 8B C3
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [si + 0x6e], ax        ; 89 44 6E
        jmp     L_2E6D                          ; EB 34
        nop                                     ; 90
;   [conditional branch target (if/else)] L_2E3A
L_2E3A:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     cx, word ptr [si + 0x6e]        ; 8B 4C 6E
        mov     bx, word ptr [di + 0x2a]        ; 8B 5D 2A
        push    cx                              ; 51
        push    bx                              ; 53
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 37 FF
        mov     bx, word ptr [si + 0x64]        ; 8B 5C 64
        mov     cx, word ptr [si + 0x66]        ; 8B 4C 66
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 29 FF
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [si + 0x6c]        ; 8B 44 6C
        cdq                                     ; 99
        mov     ax, bx                          ; 8B C3
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [si + 0x6c], ax        ; 89 44 6C
;   [fall-through exit] L_2E6D
L_2E6D:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00

;-----------------------------------------------------------------------
; DEATH  (offset 0x2E75, size 29 bytes)
;-----------------------------------------------------------------------
DEATH PROC FAR
        call    L_3FDC                          ; E8 64 11
        add     byte ptr [bx + di], al          ; 00 01
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, bx                          ; 0B DB
        je      L_2E91                          ; 74 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bx + 0x2a]        ; 8B 77 2A
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        lcall   [si + 0xc]                      ; FF 5C 0C
;   [error/early exit] L_2E91
L_2E91:
        ret                                     ; C3
DEATH ENDP


;-----------------------------------------------------------------------
; RESURRECTION  (offset 0x2E92, size 50 bytes)
;-----------------------------------------------------------------------
RESURRECTION PROC FAR
        call    L_3FDC                          ; E8 47 11
        add     byte ptr [bx], al               ; 00 07
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 0x12]        ; 8B 5E 12
        or      bx, bx                          ; 0B DB
        je      L_2EC3                          ; 74 23
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     si, word ptr [bx + 0x2a]        ; 8B 77 2A
        xor     cx, cx                          ; 33 C9
        push    word ptr [bx + 0x28]            ; FF 77 28
        push    word ptr [bx + 0x26]            ; FF 77 26
        push    cx                              ; 51
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [si + 0x10]                     ; FF 5C 10
;   [error/early exit] L_2EC3
L_2EC3:
        ret                                     ; C3
RESURRECTION ENDP

; Description (heuristic):
;   Internal helper (8 instructions).

;-------------------------------------------------------------------------
; sub_2EC4   offset=0x2EC4  size=8 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_2EC4
L_2EC4:
        mov     bx, 0x1ce                       ; BB CE 01
        mov     cx, 0x14                        ; B9 14 00
;   [loop iteration target] L_2ECA
L_2ECA:
        cmp     ax, word ptr [bx]               ; 3B 07
        je      L_2ED4                          ; 74 06
        add     bx, 4                           ; 83 C3 04
        loop    L_2ECA                          ; E2 F7
        inc     cx                              ; 41
;   [error/early exit] L_2ED4
L_2ED4:
        retf                                    ; CB
; Description (heuristic):
;   Mixed routine using: ADDATOM, ANSIPREV, FINDATOM.

;-------------------------------------------------------------------------
; sub_2ED5   offset=0x2ED5  size=61 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ADDATOM
;   ANSIPREV
;   FINDATOM
;
; Near calls (internal): L_15CD
;-------------------------------------------------------------------------
;   [sub-routine] L_2ED5
L_2ED5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     ax, es                          ; 8C C0
        or      ax, di                          ; 0B C7
        je      L_2F44                          ; 74 5A
        call    L_15CD                          ; E8 E0 E6
        dec     di                              ; 4F
        push    cx                              ; 51
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    es                              ; 06
        push    di                              ; 57
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
        mov     es, dx                          ; 8E C2
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr es:[bx], 0x3a          ; 26 80 3F 3A
        jne     L_2F28                          ; 75 21
        inc     cx                              ; 41
        and     cl, 0xfe                        ; 80 E1 FE
        mov     bx, sp                          ; 8B DC
        sub     sp, cx                          ; 2B E1
        mov     ax, ss                          ; 8C D0
        mov     es, ax                          ; 8E C0
        mov     di, sp                          ; 8B FC
        mov     dx, ds                          ; 8C DA
        lds     si, ptr [bp + 8]                ; C5 76 08
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ds, dx                          ; 8E DA
        mov     byte ptr es:[di - 2], cl        ; 26 88 4D FE
        mov     di, sp                          ; 8B FC
        mov     si, bx                          ; 8B F3
        jmp     L_2F2D                          ; EB 05
;   [conditional branch target (if/else)] L_2F28
L_2F28:
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     si, sp                          ; 8B F4
;   [unconditional branch target] L_2F2D
L_2F2D:
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        jcxz    L_2F3B                          ; E3 09
        push    es                              ; 06
        push    di                              ; 57
        call    far KERNEL.ADDATOM              ; 9A C9 04 00 00 [FIXUP]
        jmp     L_2F42                          ; EB 07
;   [conditional branch target (if/else)] L_2F3B
L_2F3B:
        push    es                              ; 06
        push    di                              ; 57
        call    far KERNEL.FINDATOM             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_2F42
L_2F42:
        mov     sp, si                          ; 8B E6
;   [conditional branch target (if/else)] L_2F44
L_2F44:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00

;-----------------------------------------------------------------------
; GETSTOCKOBJECT  (offset 0x2F51, size 22 bytes)
;-----------------------------------------------------------------------
GETSTOCKOBJECT PROC FAR
        call    L_3FDC                          ; E8 88 10
        add     byte ptr [bx + di], al          ; 00 01
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        xor     ax, ax                          ; 33 C0
        cmp     bx, 0xf                         ; 83 FB 0F
        jae     L_2F66                          ; 73 06
        add     bx, bx                          ; 03 DB
        mov     ax, word ptr [bx + 0x16]        ; 8B 87 16 00
;   [error/early exit] L_2F66
L_2F66:
        ret                                     ; C3
GETSTOCKOBJECT ENDP


;-----------------------------------------------------------------------
; GETDEVICECAPS  (offset 0x2F67, size 48 bytes)
;-----------------------------------------------------------------------
GETDEVICECAPS PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [bp + 6], 0x66         ; 83 7E 06 66
        ja      L_2F8C                          ; 77 13
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        or      bx, bx                          ; 0B DB
        je      L_2F8C                          ; 74 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     bx, word ptr [bx + 0xc]         ; 8B 5F 0C
        mov     bx, word ptr [bx]               ; 8B 1F
        add     bx, word ptr [bp + 6]           ; 03 5E 06
        mov     ax, word ptr [bx]               ; 8B 07
;   [conditional branch target (if/else)] L_2F8C
L_2F8C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
GETDEVICECAPS ENDP


;-----------------------------------------------------------------------
; GETBITMAPBITS  (offset 0x2F97, size 5 bytes)
;-----------------------------------------------------------------------
GETBITMAPBITS PROC FAR
        ; constant WM_CREATE
        mov     cl, 1                           ; B1 01
        mov     bx, 0xc932                      ; BB 32 C9
GETBITMAPBITS ENDP


;-----------------------------------------------------------------------
; BITMAPBITS  (offset 0x2F9C, size 130 bytes)
;-----------------------------------------------------------------------
BITMAPBITS PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    cx                              ; 51
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        or      bx, bx                          ; 0B DB
        je      L_300F                          ; 74 5D
        mov     bx, word ptr [bx]               ; 8B 1F
        xor     si, si                          ; 33 F6
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        and     ax, 0x7fff                      ; 25 FF 7F
        cmp     ax, 4                           ; 3D 04 00
        jne     L_300D                          ; 75 4C
        mov     di, word ptr [bx + 8]           ; 8B 7F 08
        push    di                              ; 57
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 05 19 00 00 [FIXUP]
        jcxz    L_300F                          ; E3 43
        mov     si, ax                          ; 8B F0
        mov     ds, dx                          ; 8E DA
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [si + 0xe]         ; 8B 44 0E
        mov     cl, byte ptr [si + 8]           ; 8A 4C 08
        xor     ch, ch                          ; 32 ED
        mul     cx                              ; F7 E1
        jo      L_3005                          ; 70 27
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        cmp     ax, cx                          ; 3B C1
        jbe     L_2FE7                          ; 76 02
        mov     ax, cx                          ; 8B C1
;   [conditional branch target (if/else)] L_2FE7
L_2FE7:
        mov     cx, ax                          ; 8B C8
        mov     bx, ax                          ; 8B D8
        mov     dx, di                          ; 8B D7
        lea     si, [si + 0x20]                 ; 8D 74 20
        les     di, ptr [bp + 6]                ; C4 7E 06
        test    byte ptr [bp - 4], 1            ; F6 46 FC 01
        jne     L_3002                          ; 75 09
        xchg    di, si                          ; 87 F7
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     ds, word ptr [bp + 8]           ; 8E 5E 08
;   [conditional branch target (if/else)] L_3002
L_3002:
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [conditional branch target (if/else)] L_3005
L_3005:
        mov     si, bx                          ; 8B F3
        push    dx                              ; 52
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FB 2C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_300D
L_300D:
        mov     ax, si                          ; 8B C6
;   [conditional branch target (if/else)] L_300F
L_300F:
        xor     dx, dx                          ; 33 D2
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
BITMAPBITS ENDP


;-----------------------------------------------------------------------
; GETBKCOLOR  (offset 0x301E, size 42 bytes)
;-----------------------------------------------------------------------
GETBKCOLOR PROC FAR
;   [sub-routine] L_301E
L_301E:
        mov     cl, 0x54                        ; B1 54
        mov     bx, 0x58b1                      ; BB B1 58
        mov     bx, 0x3cb1                      ; BB B1 3C
        mov     bx, 0x7ab1                      ; BB B1 7A
        mov     bx, 0x7cb1                      ; BB B1 7C
        mov     bx, 0x74b1                      ; BB B1 74
        mov     bx, 0x3eb1                      ; BB B1 3E
        mov     bx, 0x78b1                      ; BB B1 78
        mov     bx, 0x60b1                      ; BB B1 60
        mov     bx, 0x70b1                      ; BB B1 70
        mov     bx, 0x8eb1                      ; BB B1 8E
        mov     bx, 0x84b1                      ; BB B1 84
        mov     bx, 0x64b1                      ; BB B1 64
        mov     bx, 0x6cb1                      ; BB B1 6C
        mov     bx, 0x5cb1                      ; BB B1 5C
GETBKCOLOR ENDP


;-----------------------------------------------------------------------
; GSV  (offset 0x304A, size 42 bytes)
;-----------------------------------------------------------------------
GSV PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        or      bx, bx                          ; 0B DB
        je      L_3069                          ; 74 0B
        mov     bx, word ptr [bx]               ; 8B 1F
        xor     ch, ch                          ; 32 ED
        add     bx, cx                          ; 03 D9
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
;   [conditional branch target (if/else)] L_3069
L_3069:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GSV ENDP


;-----------------------------------------------------------------------
; MOVETO  (offset 0x3074, size 58 bytes)
;-----------------------------------------------------------------------
MOVETO PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_3090                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 8A 06
        adc     al, 2                           ; 14 02
;   [conditional branch target (if/else)] L_3090
L_3090:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        or      bx, bx                          ; 0B DB
        je      L_30A5                          ; 74 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        xchg    word ptr [bx + 0x5c], ax        ; 87 47 5C
        xchg    word ptr [bx + 0x5e], dx        ; 87 57 5E
;   [conditional branch target (if/else)] L_30A5
L_30A5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
MOVETO ENDP

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        xchg    word ptr [bx + 0x5c], ax        ; 87 47 5C
        xchg    word ptr [bx + 0x5e], dx        ; 87 57 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00

;-----------------------------------------------------------------------
; WORDSET  (offset 0x30D6, size 63 bytes)
;-----------------------------------------------------------------------
WORDSET PROC FAR
;   [loop start] L_30D6
L_30D6:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    dx                              ; 52
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_30F3                          ; 7C 07
        mov     ax, cx                          ; 8B C1
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3721                          ; E8 2E 06
;   [conditional branch target (if/else)] L_30F3
L_30F3:
        xor     ax, ax                          ; 33 C0
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        or      bx, bx                          ; 0B DB
        je      L_310A                          ; 74 0E
        mov     bx, word ptr [bx]               ; 8B 1F
        xor     ch, ch                          ; 32 ED
        mov     cl, byte ptr [bp - 4]           ; 8A 4E FC
        add     bx, cx                          ; 03 D9
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        xchg    word ptr [bx], ax               ; 87 07
;   [conditional branch target (if/else)] L_310A
L_310A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
WORDSET ENDP


;-----------------------------------------------------------------------
; SETROP2  (offset 0x3115, size 7 bytes)
;-----------------------------------------------------------------------
SETROP2 PROC FAR
        mov     cx, 0x104                       ; B9 04 01
        mov     dl, 0x3c                        ; B2 3C
        jmp     L_30D6                          ; EB BA
SETROP2 ENDP


;-----------------------------------------------------------------------
; SETPOLYFILLMODE  (offset 0x311C, size 7 bytes)
;-----------------------------------------------------------------------
SETPOLYFILLMODE PROC FAR
        mov     cx, 0x106                       ; B9 06 01
        mov     dl, 0x7a                        ; B2 7A
        jmp     L_30D6                          ; EB B3
SETPOLYFILLMODE ENDP


;-----------------------------------------------------------------------
; SETSTRETCHBLTMODE  (offset 0x3123, size 7 bytes)
;-----------------------------------------------------------------------
SETSTRETCHBLTMODE PROC FAR
        mov     cx, 0x107                       ; B9 07 01
        mov     dl, 0x7c                        ; B2 7C
        jmp     L_30D6                          ; EB AC
SETSTRETCHBLTMODE ENDP


;-----------------------------------------------------------------------
; SETBKMODE  (offset 0x312A, size 7 bytes)
;-----------------------------------------------------------------------
SETBKMODE PROC FAR
        mov     cx, 0x102                       ; B9 02 01
        mov     dl, 0x3e                        ; B2 3E
        jmp     L_30D6                          ; EB A5
SETBKMODE ENDP


;-----------------------------------------------------------------------
; SETRELABS  (offset 0x3131, size 7 bytes)
;-----------------------------------------------------------------------
SETRELABS PROC FAR
        mov     cx, 0x105                       ; B9 05 01
        mov     dl, 0x78                        ; B2 78
        jmp     L_30D6                          ; EB 9E
SETRELABS ENDP

; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_3138   offset=0x3138  size=7 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_3138
L_3138:
        mov     bx, word ptr [di + 0x68]        ; 8B 5D 68
        sub     bx, word ptr [di + 0x60]        ; 2B 5D 60
        mov     word ptr [di + 0x38], bx        ; 89 5D 38
        mov     bx, word ptr [di + 0x6a]        ; 8B 5D 6A
        sub     bx, word ptr [di + 0x62]        ; 2B 5D 62
        mov     word ptr [di + 0x3a], bx        ; 89 5D 3A
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_314B   offset=0x314B  size=9 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_314B
L_314B:
        and     byte ptr [di + 0x76], 0xfe      ; 80 65 76 FE
        mov     bx, word ptr [di + 0x6c]        ; 8B 5D 6C
        xor     bx, word ptr [di + 0x64]        ; 33 5D 64
        jne     L_3163                          ; 75 0C
        mov     bx, word ptr [di + 0x6e]        ; 8B 5D 6E
        xor     bx, word ptr [di + 0x66]        ; 33 5D 66
        jne     L_3163                          ; 75 04
        or      byte ptr [di + 0x76], 1         ; 80 4D 76 01
;   [error/early exit] L_3163
L_3163:
        ret                                     ; C3

;-----------------------------------------------------------------------
; SETMAPMODE  (offset 0x3164, size 144 bytes)
;-----------------------------------------------------------------------
SETMAPMODE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_3182                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 98 05
        add     ax, word ptr [bx + di]          ; 03 01
;   [conditional branch target (if/else)] L_3182
L_3182:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     di, word ptr [di]               ; 8B 3D
        xor     ax, ax                          ; 33 C0
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        jcxz    L_31DA                          ; E3 4C
        cmp     cx, 8                           ; 83 F9 08
        ja      L_31DA                          ; 77 47
        mov     bx, cx                          ; 8B D9
        xchg    word ptr [di + 0x74], cx        ; 87 4D 74
        cmp     cx, bx                          ; 3B CB
        je      L_31A4                          ; 74 08
        or      byte ptr [di + 8], 0x20         ; 80 4D 08 20
        or      byte ptr [di + 8], 0x40         ; 80 4D 08 40
;   [conditional branch target (if/else)] L_31A4
L_31A4:
        push    cx                              ; 51
        cmp     bx, 7                           ; 83 FB 07
        jg      L_31D6                          ; 7F 2C
        jl      L_31AF                          ; 7C 03
        mov     bx, 2                           ; BB 02 00
;   [conditional branch target (if/else)] L_31AF
L_31AF:
        lea     si, [0x22c]                     ; 8D 36 2C 02
        dec     bx                              ; 4B
        je      L_31E7                          ; 74 31
        mov     si, word ptr [di + 0xc]         ; 8B 75 0C
        mov     si, word ptr [si]               ; 8B 34
        add     si, 0x28                        ; 83 C6 28
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        shl     bx, 1                           ; D1 E3
        add     si, bx                          ; 03 F3
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [di + 0x64], ax        ; 89 45 64
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [di + 0x66], ax        ; 89 45 66
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [di + 0x6c], ax        ; 89 45 6C
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [di + 0x6e], ax        ; 89 45 6E
;   [loop start (also forward branch)] L_31D6
L_31D6:
        pop     ax                              ; 58
        call    L_314B                          ; E8 71 FF
;   [conditional branch target (if/else)] L_31DA
L_31DA:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [conditional branch target (if/else)] L_31E7
L_31E7:
        inc     bx                              ; 43
        mov     word ptr [di + 0x64], bx        ; 89 5D 64
        mov     word ptr [di + 0x66], bx        ; 89 5D 66
        mov     word ptr [di + 0x6c], bx        ; 89 5D 6C
        mov     word ptr [di + 0x6e], bx        ; 89 5D 6E
SETMAPMODE ENDP

        jmp     L_31D6                          ; EB E0

;-----------------------------------------------------------------------
; OFFSETWINDOWORG  (offset 0x31F6, size 8 bytes)
;-----------------------------------------------------------------------
OFFSETWINDOWORG PROC FAR
        mov     cx, 0x20f                       ; B9 0F 02
        mov     dx, 0x60                        ; BA 60 00
        jmp     L_3204                          ; EB 06
OFFSETWINDOWORG ENDP


;-----------------------------------------------------------------------
; OFFSETVIEWPORTORG  (offset 0x31FE, size 6 bytes)
;-----------------------------------------------------------------------
OFFSETVIEWPORTORG PROC FAR
        mov     cx, 0x211                       ; B9 11 02
        mov     dx, 0x70                        ; BA 70 00
OFFSETVIEWPORTORG ENDP


;-----------------------------------------------------------------------
; OFFSETORG  (offset 0x3204, size 58 bytes)
;-----------------------------------------------------------------------
OFFSETORG PROC FAR
;   [unconditional branch target] L_3204
L_3204:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    dx                              ; 52
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_3222                          ; 7C 07
        mov     ax, cx                          ; 8B C1
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3721                          ; E8 FF 04
;   [conditional branch target (if/else)] L_3222
L_3222:
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + di]          ; 8B 01
        add     word ptr [bp + 8], ax           ; 01 46 08
        mov     ax, word ptr [bx + di + 2]      ; 8B 41 02
        add     word ptr [bp + 6], dx           ; 01 56 06
        cmp     bx, 0x70                        ; 83 FB 70
        jne     L_323D                          ; 75 03
        jmp     L_329D                          ; EB 61
        nop                                     ; 90
;   [conditional branch target (if/else)] L_323D
L_323D:
        jmp     L_325C                          ; EB 1D
OFFSETORG ENDP


;-----------------------------------------------------------------------
; SETWINDOWORG  (offset 0x323F, size 27 bytes)
;-----------------------------------------------------------------------
SETWINDOWORG PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_325C                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 BE 04
SETWINDOWORG ENDP

        or      ax, word ptr [bp + si]          ; 0B 02
;   [branch target] L_325C
L_325C:
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        or      di, di                          ; 0B FF
        je      L_3274                          ; 74 11
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xchg    word ptr [di + 0x60], ax        ; 87 45 60
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        xchg    word ptr [di + 0x62], dx        ; 87 55 62
;   [loop start] L_3271
L_3271:
        call    L_3138                          ; E8 C4 FE
;   [loop start (also forward branch)] L_3274
L_3274:
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00

;-----------------------------------------------------------------------
; SETVIEWPORTORG  (offset 0x3280, size 27 bytes)
;-----------------------------------------------------------------------
SETVIEWPORTORG PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     byte ptr [bx + 2], 8            ; 80 7F 02 08
        jl      L_329D                          ; 7C 07
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3718                          ; E8 7D 04
SETVIEWPORTORG ENDP

        or      ax, 0x8b02                      ; 0D 02 8B
        jle     L_32AA                          ; 7E 0A
        or      di, di                          ; 0B FF
        je      L_3274                          ; 74 D0
        mov     di, word ptr [di]               ; 8B 3D
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     ax, cx                          ; 8B C1
        xchg    word ptr [di + 0x70], ax        ; 87 45 70
        add     cx, word ptr [di + 0x8e]        ; 03 8D 8E 00
        mov     word ptr [di + 0x68], cx        ; 89 4D 68
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, cx                          ; 8B D1
        xchg    word ptr [di + 0x72], dx        ; 87 55 72
        add     cx, word ptr [di + 0x90]        ; 03 8D 90 00
        mov     word ptr [di + 0x6a], cx        ; 89 4D 6A
        jmp     L_3271                          ; EB AB
        sbb     dh, byte ptr [0x3635]           ; 1A 36 35 36
        push    ax                              ; 50
        imul    si, word ptr ss:[0x93ba], 0x34  ; 36 6B 36 BA 93 34
        jmp     L_32D6                          ; EB 03

;-----------------------------------------------------------------------
; LPTODP  (offset 0x32D3, size 3 bytes)
;-----------------------------------------------------------------------
LPTODP PROC FAR
        mov     dx, 0x33b5                      ; BA B5 33
LPTODP ENDP


;-----------------------------------------------------------------------
; DPXLATE  (offset 0x32D6, size 50 bytes)
;-----------------------------------------------------------------------
DPXLATE PROC FAR
;   [unconditional branch target] L_32D6
L_32D6:
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
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        or      si, si                          ; 0B F6
        je      L_32FB                          ; 74 10
        mov     si, word ptr [si]               ; 8B 34
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        call    dx                              ; FF D2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [conditional branch target (if/else)] L_32FB
L_32FB:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
DPXLATE ENDP

        mov     dx, 0x3372                      ; BA 72 33
        jmp     L_3310                          ; EB 03
        mov     dx, 0x347e                      ; BA 7E 34
;   [unconditional branch target] L_3310
L_3310:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     si, word ptr [si]               ; 8B 34
        les     di, ptr [bp + 8]                ; C4 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        xor     bx, bx                          ; 33 DB
        call    dx                              ; FF D2
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     dx, 0x347e                      ; BA 7E 34
        jmp     L_3340                          ; EB 03
; Description (heuristic):
;   Pure computation / dispatcher (30 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_333D   offset=0x333D  size=30 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_3372
;-------------------------------------------------------------------------
;   [sub-routine] L_333D
L_333D:
        mov     dx, 0x3372                      ; BA 72 33
;   [unconditional branch target] L_3340
L_3340:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     si, word ptr [si]               ; 8B 34
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        xor     bx, bx                          ; 33 DB
        call    dx                              ; FF D2
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        call    L_3372                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3372   offset=0x3372  size=34 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_33B5
;-------------------------------------------------------------------------
;   [sub-routine] L_3372
L_3372:
        mov     ax, word ptr [si + 0x9c]        ; 8B 84 9C 00
        or      ax, word ptr [si + 0x9e]        ; 0B 84 9E 00
        je      L_33B5                          ; 74 39
        push    cx                              ; 51
        push    di                              ; 57
        call    L_33B5                          ; E8 34 00
        mov     dx, 0x339f                      ; BA 9F 33
;   [loop start] L_3384
L_3384:
        mov     ax, 4                           ; B8 04 00
        mov     cx, word ptr [si + 0x9e]        ; 8B 8C 9E 00
        jcxz    L_3395                          ; E3 08
        pop     di                              ; 5F
        pop     bx                              ; 5B
        push    bx                              ; 53
        push    di                              ; 57
        inc     di                              ; 47
        inc     di                              ; 47
        call    dx                              ; FF D2
;   [conditional branch target (if/else)] L_3395
L_3395:
        pop     di                              ; 5F
        pop     bx                              ; 5B
        mov     cx, word ptr [si + 0x9c]        ; 8B 8C 9C 00
        jcxz    L_33B2                          ; E3 15
        jmp     dx                              ; FF E2
;   [loop start] L_339F
L_339F:
        sar     word ptr es:[di], cl            ; 26 D3 3D
        add     di, ax                          ; 03 F8
        dec     bx                              ; 4B
        jne     L_339F                          ; 75 F8
        xor     cx, cx                          ; 33 C9
        ret                                     ; C3
        shl     word ptr es:[di], cl            ; 26 D3 25
        add     di, ax                          ; 03 F8
        dec     bx                              ; 4B
        jne     L_339F                          ; 75 ED
;   [conditional branch target (if/else)] L_33B2
L_33B2:
        xor     cx, cx                          ; 33 C9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (95 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_33B5   offset=0x33B5  size=95 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_347E, L_3547, L_35A8
;-------------------------------------------------------------------------
;   [sub-routine] L_33B5
L_33B5:
        xor     dx, dx                          ; 33 D2
        call    L_35A8                          ; E8 EE 01
        jne     L_3412                          ; 75 56
;   [loop iteration target] L_33BC
L_33BC:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        sub     ax, word ptr [si + 0x60]        ; 2B 44 60
        jo      L_33FD                          ; 70 39
        imul    word ptr [si + 0x6c]            ; F7 6C 6C
        mov     bp, ax                          ; 8B E8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [si + 0x64]        ; 8B 44 64
        sar     ax, 1                           ; D1 F8
        mov     dx, ax                          ; 8B D0
        xor     dx, bx                          ; 33 D3
        jns     L_33D8                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_33D8
L_33D8:
        cdq                                     ; 99
        add     ax, bp                          ; 03 C5
        adc     dx, bx                          ; 13 D3
        jo      L_33FD                          ; 70 1E
        mov     bx, word ptr [si + 0x64]        ; 8B 5C 64
        idiv    bx                              ; F7 FB
        or      cx, cx                          ; 0B C9
        jl      L_33FB                          ; 7C 13
        add     ax, word ptr [si + 0x68]        ; 03 44 68
        jo      L_33FD                          ; 70 10
;   [loop start] L_33ED
L_33ED:
        stosw   word ptr es:[di], ax            ; AB
        dec     si                              ; 4E
        dec     si                              ; 4E
        test    cl, 1                           ; F6 C1 01
        jne     L_33F8                          ; 75 03
        add     si, 4                           ; 83 C6 04
;   [conditional branch target (if/else)] L_33F8
L_33F8:
        loop    L_33BC                          ; E2 C2
        ret                                     ; C3
;   [conditional branch target (if/else)] L_33FB
L_33FB:
        neg     cx                              ; F7 D9
;   [conditional branch target (if/else)] L_33FD
L_33FD:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        push    ax                              ; 50
        push    word ptr [si + 0x64]            ; FF 74 64
        push    word ptr [si + 0x6c]            ; FF 74 6C
        push    word ptr [si + 0x60]            ; FF 74 60
        push    word ptr [si + 0x68]            ; FF 74 68
        call    L_3547                          ; E8 37 01
        jmp     L_33ED                          ; EB DB
;   [loop iteration target] L_3412
L_3412:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        sub     ax, word ptr [si + 0x60]        ; 2B 44 60
        jo      L_3453                          ; 70 39
        imul    word ptr [si + 0x6c]            ; F7 6C 6C
        mov     bp, ax                          ; 8B E8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [si + 0x64]        ; 8B 44 64
        sar     ax, 1                           ; D1 F8
        mov     dx, ax                          ; 8B D0
        xor     dx, bx                          ; 33 D3
        jns     L_342E                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_342E
L_342E:
        cdq                                     ; 99
        add     ax, bp                          ; 03 C5
        adc     dx, bx                          ; 13 D3
        jo      L_3453                          ; 70 1E
        mov     bx, word ptr [si + 0x64]        ; 8B 5C 64
        idiv    bx                              ; F7 FB
        or      cx, cx                          ; 0B C9
        jl      L_3451                          ; 7C 13
        add     ax, word ptr [si + 0x70]        ; 03 44 70
        jo      L_3453                          ; 70 10
;   [loop start] L_3443
L_3443:
        stosw   word ptr es:[di], ax            ; AB
        dec     si                              ; 4E
        dec     si                              ; 4E
        test    cl, 1                           ; F6 C1 01
        jne     L_344E                          ; 75 03
        add     si, 4                           ; 83 C6 04
;   [conditional branch target (if/else)] L_344E
L_344E:
        loop    L_3412                          ; E2 C2
        ret                                     ; C3
;   [conditional branch target (if/else)] L_3451
L_3451:
        neg     cx                              ; F7 D9
;   [conditional branch target (if/else)] L_3453
L_3453:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        push    ax                              ; 50
        push    word ptr [si + 0x64]            ; FF 74 64
        push    word ptr [si + 0x6c]            ; FF 74 6C
        push    word ptr [si + 0x60]            ; FF 74 60
        push    word ptr [si + 0x70]            ; FF 74 70
        call    L_3547                          ; E8 E1 00
        jmp     L_3443                          ; EB DB
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        call    L_347E                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Description (heuristic):
;   Internal helper (8 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_347E   offset=0x347E  size=8 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_3493
;-------------------------------------------------------------------------
;   [sub-routine] L_347E
L_347E:
        mov     ax, word ptr [si + 0x9c]        ; 8B 84 9C 00
        or      ax, word ptr [si + 0x9e]        ; 0B 84 9E 00
        je      L_3493                          ; 74 0B
        push    cx                              ; 51
        push    di                              ; 57
        call    L_3493                          ; E8 06 00
        mov     dx, 0x33aa                      ; BA AA 33
        jmp     L_3384                          ; E9 F1 FE
; Description (heuristic):
;   Pure computation / dispatcher (81 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3493   offset=0x3493  size=81 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=0, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_3547, L_35A8
;-------------------------------------------------------------------------
;   [sub-routine] L_3493
L_3493:
        mov     dx, 0xffff                      ; BA FF FF
        call    L_35A8                          ; E8 0F 01
        jne     L_34F1                          ; 75 56
;   [loop iteration target] L_349B
L_349B:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        sub     ax, word ptr [si + 0x68]        ; 2B 44 68
        jo      L_34DC                          ; 70 39
        imul    word ptr [si + 0x64]            ; F7 6C 64
        mov     bp, ax                          ; 8B E8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [si + 0x6c]        ; 8B 44 6C
        sar     ax, 1                           ; D1 F8
        mov     dx, ax                          ; 8B D0
        xor     dx, bx                          ; 33 D3
        jns     L_34B7                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_34B7
L_34B7:
        cdq                                     ; 99
        add     ax, bp                          ; 03 C5
        adc     dx, bx                          ; 13 D3
        jo      L_34DC                          ; 70 1E
        mov     bx, word ptr [si + 0x6c]        ; 8B 5C 6C
        idiv    bx                              ; F7 FB
        or      cx, cx                          ; 0B C9
        jl      L_34DA                          ; 7C 13
        add     ax, word ptr [si + 0x60]        ; 03 44 60
        jo      L_34DC                          ; 70 10
;   [loop start] L_34CC
L_34CC:
        stosw   word ptr es:[di], ax            ; AB
        dec     si                              ; 4E
        dec     si                              ; 4E
        test    cl, 1                           ; F6 C1 01
        jne     L_34D7                          ; 75 03
        add     si, 4                           ; 83 C6 04
;   [conditional branch target (if/else)] L_34D7
L_34D7:
        loop    L_349B                          ; E2 C2
        ret                                     ; C3
;   [conditional branch target (if/else)] L_34DA
L_34DA:
        neg     cx                              ; F7 D9
;   [conditional branch target (if/else)] L_34DC
L_34DC:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        push    ax                              ; 50
        push    word ptr [si + 0x6c]            ; FF 74 6C
        push    word ptr [si + 0x64]            ; FF 74 64
        push    word ptr [si + 0x68]            ; FF 74 68
        push    word ptr [si + 0x60]            ; FF 74 60
        call    L_3547                          ; E8 58 00
        jmp     L_34CC                          ; EB DB
;   [loop iteration target] L_34F1
L_34F1:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        sub     ax, word ptr [si + 0x70]        ; 2B 44 70
        jo      L_3532                          ; 70 39
        imul    word ptr [si + 0x64]            ; F7 6C 64
        mov     bp, ax                          ; 8B E8
        mov     bx, dx                          ; 8B DA
        mov     ax, word ptr [si + 0x6c]        ; 8B 44 6C
        sar     ax, 1                           ; D1 F8
        mov     dx, ax                          ; 8B D0
        xor     dx, bx                          ; 33 D3
        jns     L_350D                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_350D
L_350D:
        cdq                                     ; 99
        add     ax, bp                          ; 03 C5
        adc     dx, bx                          ; 13 D3
        jo      L_3532                          ; 70 1E
        mov     bx, word ptr [si + 0x6c]        ; 8B 5C 6C
        idiv    bx                              ; F7 FB
        or      cx, cx                          ; 0B C9
        jl      L_3530                          ; 7C 13
        add     ax, word ptr [si + 0x60]        ; 03 44 60
        jo      L_3532                          ; 70 10
;   [loop start] L_3522
L_3522:
        stosw   word ptr es:[di], ax            ; AB
        dec     si                              ; 4E
        dec     si                              ; 4E
        test    cl, 1                           ; F6 C1 01
        jne     L_352D                          ; 75 03
        add     si, 4                           ; 83 C6 04
;   [conditional branch target (if/else)] L_352D
L_352D:
        loop    L_34F1                          ; E2 C2
        ret                                     ; C3
;   [conditional branch target (if/else)] L_3530
L_3530:
        neg     cx                              ; F7 D9
;   [conditional branch target (if/else)] L_3532
L_3532:
        mov     ax, word ptr es:[di]            ; 26 8B 05
        push    ax                              ; 50
        push    word ptr [si + 0x6c]            ; FF 74 6C
        push    word ptr [si + 0x64]            ; FF 74 64
        push    word ptr [si + 0x70]            ; FF 74 70
        push    word ptr [si + 0x60]            ; FF 74 60
        call    L_3547                          ; E8 02 00
        jmp     L_3522                          ; EB DB
; Description (heuristic):
;   Pure computation / dispatcher (51 instructions, no FAR API calls).
;   Interrupt handler.

;-------------------------------------------------------------------------
; sub_3547   offset=0x3547  size=51 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=5)
; Prologue: standard_bp     Epilogue: iret   (INTERRUPT HANDLER)
;
; Near calls (internal): L_2D82
;-------------------------------------------------------------------------
;   [sub-routine] L_3547
L_3547:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    cx                              ; 51
        push    si                              ; 56
        push    di                              ; 57
        push    es                              ; 06
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 26 F8
        or      dx, dx                          ; 0B D2
        je      L_358B                          ; 74 2B
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_2D82                          ; E8 13 F8
        pop     bx                              ; 5B
        or      dx, dx                          ; 0B D2
        je      L_358B                          ; 74 17
        mov     cx, word ptr [bp + 4]           ; 8B 4E 04
        mov     dx, bx                          ; 8B D3
        xor     dx, ax                          ; 33 D0
        js      L_3583                          ; 78 06
        sub     ax, bx                          ; 2B C3
        add     ax, cx                          ; 03 C1
        jmp     L_3589                          ; EB 06
;   [conditional branch target (if/else)] L_3583
L_3583:
        add     ax, cx                          ; 03 C1
        jo      L_3589                          ; 70 02
        sub     ax, bx                          ; 2B C3
;   [branch target] L_3589
L_3589:
        jo      L_3595                          ; 70 0A
;   [loop start (also forward branch)] L_358B
L_358B:
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     cx                              ; 59
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;   [conditional branch target (if/else)] L_3595
L_3595:
        cdq                                     ; 99
        xor     dx, 0x8000                      ; 81 F2 00 80
        mov     ax, dx                          ; 8B C2
        jmp     L_358B                          ; EB ED
        neg     cx                              ; F7 D9
        xor     dx, dx                          ; 33 D2
        ; constant WM_CREATE
        mov     bx, 1                           ; BB 01 00
        xor     ax, ax                          ; 33 C0
        iret                                    ; CF
; Description (heuristic):
;   Pure computation / dispatcher (105 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_35A8   offset=0x35A8  size=105 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_3686
;-------------------------------------------------------------------------
;   [sub-routine] L_35A8
L_35A8:
        test    byte ptr [si + 0x76], 1         ; F6 44 76 01
        jne     L_35E8                          ; 75 3A
        mov     dx, ds                          ; 8C DA
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        pop     ax                              ; 58
        cli                                     ; FA
        push    word ptr [2]                    ; FF 36 02 00
        push    word ptr [0]                    ; FF 36 00 00
        mov     word ptr [2], cs                ; 8C 0E 02 00
        mov     word ptr [0], 0x359e            ; C7 06 00 00 9E 35
        sti                                     ; FB
        mov     ds, dx                          ; 8E DA
        push    si                              ; 56
        shl     cx, 1                           ; D1 E1
        push    bp                              ; 55
        or      bx, bx                          ; 0B DB
        call    ax                              ; FF D0
        pop     bp                              ; 5D
        pop     si                              ; 5E
        mov     dx, ds                          ; 8C DA
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        cli                                     ; FA
        pop     word ptr [0]                    ; 8F 06 00 00
        pop     word ptr [2]                    ; 8F 06 02 00
        sti                                     ; FB
        mov     ds, dx                          ; 8E DA
        ret                                     ; C3
;   [conditional branch target (if/else)] L_35E8
L_35E8:
        pop     ax                              ; 58
        push    bp                              ; 55
        xor     bp, bp                          ; 33 ED
        or      bx, bx                          ; 0B DB
        mov     ax, word ptr [si + 0x38]        ; 8B 44 38
        mov     bx, word ptr [si + 0x3a]        ; 8B 5C 3A
        je      L_360A                          ; 74 14
        sub     ax, word ptr [si + 0x8e]        ; 2B 84 8E 00
        jno     L_3600                          ; 71 04
        or      bp, 2                           ; 81 CD 02 00
;   [conditional branch target (if/else)] L_3600
L_3600:
        sub     bx, word ptr [si + 0x90]        ; 2B 9C 90 00
        jno     L_360A                          ; 71 04
        or      bp, 1                           ; 81 CD 01 00
;   [conditional branch target (if/else)] L_360A
L_360A:
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        xor     bx, dx                          ; 33 DA
        sub     bx, dx                          ; 2B DA
        mov     dx, word ptr cs:[bp + 0x32c6]   ; 2E 8B 96 C6 32
        pop     bp                              ; 5D
        jmp     dx                              ; FF E2
;   [loop iteration target] L_361A
L_361A:
        add     word ptr es:[di], ax            ; 26 01 05
        jo      L_362B                          ; 70 0C
;   [loop start] L_361F
L_361F:
        inc     di                              ; 47
        inc     di                              ; 47
        add     word ptr es:[di], bx            ; 26 01 1D
        jo      L_3630                          ; 70 0A
;   [loop start] L_3626
L_3626:
        inc     di                              ; 47
        inc     di                              ; 47
        loop    L_361A                          ; E2 F0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_362B
L_362B:
        call    L_3686                          ; E8 58 00
        jmp     L_361F                          ; EB EF
;   [conditional branch target (if/else)] L_3630
L_3630:
        call    L_3686                          ; E8 53 00
        jmp     L_3626                          ; EB F1
;   [loop iteration target] L_3635
L_3635:
        add     word ptr es:[di], ax            ; 26 01 05
        jo      L_3646                          ; 70 0C
;   [loop start] L_363A
L_363A:
        inc     di                              ; 47
        inc     di                              ; 47
        add     word ptr es:[di], bx            ; 26 01 1D
        jno     L_364B                          ; 71 0A
;   [loop start] L_3641
L_3641:
        inc     di                              ; 47
        inc     di                              ; 47
        loop    L_3635                          ; E2 F0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_3646
L_3646:
        call    L_3686                          ; E8 3D 00
        jmp     L_363A                          ; EB EF
;   [conditional branch target (if/else)] L_364B
L_364B:
        call    L_3686                          ; E8 38 00
        jmp     L_3641                          ; EB F1
;   [loop iteration target] L_3650
L_3650:
        add     word ptr es:[di], ax            ; 26 01 05
        jno     L_3661                          ; 71 0C
;   [loop start] L_3655
L_3655:
        inc     di                              ; 47
        inc     di                              ; 47
        add     word ptr es:[di], bx            ; 26 01 1D
        jo      L_3666                          ; 70 0A
;   [loop start] L_365C
L_365C:
        inc     di                              ; 47
        inc     di                              ; 47
        loop    L_3650                          ; E2 F0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_3661
L_3661:
        call    L_3686                          ; E8 22 00
        jmp     L_3655                          ; EB EF
;   [conditional branch target (if/else)] L_3666
L_3666:
        call    L_3686                          ; E8 1D 00
        jmp     L_365C                          ; EB F1
;   [loop iteration target] L_366B
L_366B:
        add     word ptr es:[di], ax            ; 26 01 05
        jno     L_367C                          ; 71 0C
;   [loop start] L_3670
L_3670:
        inc     di                              ; 47
        inc     di                              ; 47
        add     word ptr es:[di], bx            ; 26 01 1D
        jno     L_3681                          ; 71 0A
;   [loop start] L_3677
L_3677:
        inc     di                              ; 47
        inc     di                              ; 47
        loop    L_366B                          ; E2 F0
        ret                                     ; C3
;   [conditional branch target (if/else)] L_367C
L_367C:
        call    L_3686                          ; E8 07 00
        jmp     L_3670                          ; EB EF
;   [conditional branch target (if/else)] L_3681
L_3681:
        call    L_3686                          ; E8 02 00
        jmp     L_3677                          ; EB F1
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3686   offset=0x3686  size=29 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=3)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_3686
L_3686:
        mov     dx, 0x8000                      ; BA 00 80
        jns     L_368C                          ; 79 01
        dec     dx                              ; 4A
;   [error/early exit] L_368C
L_368C:
        mov     word ptr es:[di], dx            ; 26 89 15
        ret                                     ; C3
        pop     bx                              ; 5B
        mov     bl, byte ptr cs:[bx]            ; 2E 8A 1F
        xor     bh, bh                          ; 32 FF
;   [loop start] L_3696
L_3696:
        lea     si, [bp + 4]                    ; 8D 76 04
        mov     di, si                          ; 8B FE
        add     di, bx                          ; 03 FB
        mov     bx, di                          ; 8B DF
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        mov     cx, ss                          ; 8C D1
        mov     es, cx                          ; 8E C1
        std                                     ; FD
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        movsw   word ptr es:[di], word ptr ss:[si] ; 36 A5
        cld                                     ; FC
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        mov     sp, bx                          ; 8B E3
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_36B8   offset=0x36B8  size=49 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_36B8
L_36B8:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, ds                          ; 8C DA
        mov     es, dx                          ; 8E C2
        lea     di, [0x234]                     ; 8D 3E 34 02
        mov     cx, 0x1a                        ; B9 1A 00
        cld                                     ; FC
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     bx, ax                          ; 8B D8
        xchg    bl, bh                          ; 86 FB
        xor     bh, bh                          ; 32 FF
        mov     dx, bx                          ; 8B D3
        add     bx, bx                          ; 03 DB
        mov     di, word ptr [bp]               ; 8B 7E 00
        add     di, 5                           ; 83 C7 05
        cmp     word ptr ss:[bx + di], 0        ; 36 83 39 00
        je      L_3714                          ; 74 29
        jcxz    L_36FB                          ; E3 0E
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_399                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_3707                          ; EB 0C
;   [conditional branch target (if/else)] L_36FB
L_36FB:
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_400                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_3707
L_3707:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;   [conditional branch target (if/else)] L_3714
L_3714:
        xor     ax, ax                          ; 33 C0
        jmp     L_3707                          ; EB EF
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_3718   offset=0x3718  size=7 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_3718
L_3718:
        pop     bx                              ; 5B
        pop     es                              ; 07
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        inc     bx                              ; 43
        inc     bx                              ; 43
        push    es                              ; 06
        push    bx                              ; 53
; Description (heuristic):
;   Pure computation / dispatcher (98 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3721   offset=0x3721  size=98 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: far_inc_bp_standard     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_3721
L_3721:
        ;   = cProc <0> ; FAR PASCAL prologue
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, ds                          ; 8C DA
        mov     es, dx                          ; 8E C2
        lea     di, [0x234]                     ; 8D 3E 34 02
        mov     cx, 0x1a                        ; B9 1A 00
        cld                                     ; FC
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     bx, ax                          ; 8B D8
        xchg    bl, bh                          ; 86 FB
        xor     bh, bh                          ; 32 FF
        mov     dx, bx                          ; 8B D3
        add     bx, bx                          ; 03 DB
        mov     di, word ptr [bp]               ; 8B 7E 00
        lea     di, [di + 5]                    ; 8D 7D 05
        mov     si, bx                          ; 8B F3
        cmp     word ptr ss:[bx + di], 0        ; 36 83 39 00
        je      L_3790                          ; 74 42
        jcxz    L_3760                          ; E3 10
        push    bx                              ; 53
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_399                  ; 9A F5 36 00 00 [FIXUP]
        pop     bx                              ; 5B
        jmp     L_376E                          ; EB 0E
;   [conditional branch target (if/else)] L_3760
L_3760:
        push    bx                              ; 53
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_400                  ; 9A 03 37 00 00 [FIXUP]
        pop     bx                              ; 5B
;   [loop start (also forward branch)] L_376E
L_376E:
        pop     dx                              ; 5A
        pop     cx                              ; 59
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        mov     bx, word ptr ss:[bx + di]       ; 36 8B 19
        mov     bx, word ptr [bx]               ; 8B 1F
        cmp     word ptr [bx + 2], 8            ; 83 7F 02 08
        je      L_378B                          ; 74 08
        push    cx                              ; 51
        push    dx                              ; 52
        lea     bx, [si + 2]                    ; 8D 5C 02
        jmp     L_3696                          ; E9 0B FF
;   [error/early exit] L_378B
L_378B:
        mov     di, dx                          ; 8B FA
        mov     si, cx                          ; 8B F1
        retf                                    ; CB
;   [conditional branch target (if/else)] L_3790
L_3790:
        xor     ax, ax                          ; 33 C0
        jmp     L_376E                          ; EB DA
        pop     bx                              ; 5B
        pop     es                              ; 07
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, ds                          ; 8C DA
        mov     es, dx                          ; 8E C2
        lea     di, [0x234]                     ; 8D 3E 34 02
        mov     cx, 0x1a                        ; B9 1A 00
        cld                                     ; FC
        repne scasw ax, word ptr es:[di]        ; F2 AF
        mov     bx, ax                          ; 8B D8
        xchg    bl, bh                          ; 86 FB
        xor     bh, bh                          ; 32 FF
        mov     dx, bx                          ; 8B D3
        add     bx, bx                          ; 03 DB
        lea     di, [bp + 6]                    ; 8D 7E 06
        mov     si, bx                          ; 8B F3
        cmp     word ptr ss:[bx + di], 0        ; 36 83 39 00
        je      L_37E0                          ; 74 22
        jcxz    L_37CE                          ; E3 0E
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_399                  ; 9A 59 37 00 00 [FIXUP]
        jmp     L_37DA                          ; EB 0C
;   [conditional branch target (if/else)] L_37CE
L_37CE:
        push    word ptr ss:[bx + di]           ; 36 FF 31
        push    ax                              ; 50
        push    dx                              ; 52
        push    ss                              ; 16
        push    di                              ; 57
        call    far _entry_400                  ; 9A 69 37 00 00 [FIXUP]
;   [loop start (also forward branch)] L_37DA
L_37DA:
        lea     bx, [si + 2]                    ; 8D 5C 02
        jmp     L_3696                          ; E9 B6 FE
;   [conditional branch target (if/else)] L_37E0
L_37E0:
        xor     ax, ax                          ; 33 C0
        jmp     L_37DA                          ; EB F6
; Description (heuristic):
;   Pure computation / dispatcher (64 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_37E4   offset=0x37E4  size=64 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=3)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_37E4
L_37E4:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0x10]        ; 8B 76 10
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        and     bx, 0x30                        ; 81 E3 30 00
;   [loop start] L_3814
L_3814:
        and     bl, 0xfc                        ; 80 E3 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        jl      L_3832                          ; 7C 16
        lodsw   ax, word ptr [si]               ; AD
        xchg    dx, si                          ; 87 F2
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_384C                          ; 7C 28
        cmp     ax, word ptr [si]               ; 3B 04
        jl      L_384C                          ; 7C 24
        jg      L_383E                          ; 7F 14
        inc     si                              ; 46
        inc     si                              ; 46
        xor     bx, 5                           ; 81 F3 05 00
        jmp     L_3844                          ; EB 12
;   [conditional branch target (if/else)] L_3832
L_3832:
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_3862                          ; 7C 2B
        inc     word ptr [bp - 4]               ; FF 46 FC
        xchg    si, dx                          ; 87 D6
        jmp     L_3843                          ; EB 05
;   [conditional branch target (if/else)] L_383E
L_383E:
        dec     dx                              ; 4A
        dec     dx                              ; 4A
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_3843
L_3843:
        lodsw   ax, word ptr [si]               ; AD
;   [unconditional branch target] L_3844
L_3844:
        xchg    si, dx                          ; 87 D6
        xor     bx, 0xa                         ; 81 F3 0A 00
        jmp     L_3855                          ; EB 09
;   [conditional branch target (if/else)] L_384C
L_384C:
        xchg    si, dx                          ; 87 D6
        inc     word ptr [bp - 6]               ; FF 46 FA
        xor     bx, 5                           ; 81 F3 05 00
;   [unconditional branch target] L_3855
L_3855:
        cmp     byte ptr [bx + 0x28e], 0        ; 80 BF 8E 02 00
        je      L_3814                          ; 74 B8
        stosw   word ptr es:[di], ax            ; AB
        inc     word ptr [bp - 8]               ; FF 46 F8
        jmp     L_3814                          ; EB B2
;   [conditional branch target (if/else)] L_3862
L_3862:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Description (heuristic):
;   Pure computation / dispatcher (228 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_3872   offset=0x3872  size=228 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_37E4
;-------------------------------------------------------------------------
;   [sub-routine] L_3872
L_3872:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, si                          ; 8B C6
        add     si, 0x1a                        ; 83 C6 1A
        mov     word ptr [bp - 0x10], si        ; 89 76 F0
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, si                          ; 8B C6
        add     si, 0x1a                        ; 83 C6 1A
        mov     word ptr [bp - 0x12], si        ; 89 76 EE
        add     ax, 0x16                        ; 05 16 00
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, di                          ; 8B C7
        neg     ax                              ; F7 D8
        add     di, 8                           ; 83 C7 08
        stosw   word ptr es:[di], ax            ; AB
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        stosw   word ptr es:[di], ax            ; AB
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        and     bx, 0x30                        ; 81 E3 30 00
        shr     bx, 1                           ; D1 EB
        or      bx, 6                           ; 81 CB 06 00
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
;   [loop start] L_38E0
L_38E0:
        mov     si, word ptr [bp - 0xc]         ; 8B 76 F4
        mov     di, word ptr [bp - 0xe]         ; 8B 7E F2
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     cx, word ptr [bp - 0x16]        ; 8B 4E EA
        mov     ax, cx                          ; 8B C1
        xor     bx, ax                          ; 33 D8
        and     ax, bx                          ; 23 C3
        je      L_3920                          ; 74 2C
        test    ax, 4                           ; A9 04 00
        je      L_390F                          ; 74 16
        mov     dx, word ptr [si - 6]           ; 8B 54 FA
        shl     dx, 1                           ; D1 E2
        add     si, dx                          ; 03 F2
        mov     dx, si                          ; 8B D6
        add     dx, 6                           ; 83 C2 06
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        inc     si                              ; 46
        inc     si                              ; 46
        test    ax, 2                           ; A9 02 00
        je      L_3920                          ; 74 11
;   [conditional branch target (if/else)] L_390F
L_390F:
        mov     dx, word ptr [di - 6]           ; 8B 55 FA
        shl     dx, 1                           ; D1 E2
        add     di, dx                          ; 03 FA
        mov     dx, di                          ; 8B D7
        add     dx, 6                           ; 83 C2 06
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        inc     di                              ; 47
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_3920
L_3920:
        mov     word ptr [bp - 0x14], bx        ; 89 5E EC
        xor     cx, cx                          ; 33 C9
        dec     word ptr [bp - 4]               ; FF 4E FC
        jl      L_393F                          ; 7C 15
        lodsw   ax, word ptr [si]               ; AD
        xchg    di, si                          ; 87 F7
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_3958                          ; 7C 26
        cmp     ax, word ptr [si]               ; 3B 04
        jl      L_3958                          ; 7C 22
        jg      L_394B                          ; 7F 13
        inc     si                              ; 46
        inc     si                              ; 46
        xor     cl, 4                           ; 80 F1 04
        jmp     L_3951                          ; EB 12
;   [conditional branch target (if/else)] L_393F
L_393F:
        dec     word ptr [bp - 6]               ; FF 4E FA
        jl      L_396D                          ; 7C 29
        inc     word ptr [bp - 4]               ; FF 46 FC
        xchg    si, di                          ; 87 FE
        jmp     L_3950                          ; EB 05
;   [conditional branch target (if/else)] L_394B
L_394B:
        dec     di                              ; 4F
        dec     di                              ; 4F
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_3950
L_3950:
        lodsw   ax, word ptr [si]               ; AD
;   [unconditional branch target] L_3951
L_3951:
        xchg    si, di                          ; 87 FE
        xor     cl, 2                           ; 80 F1 02
        jmp     L_3960                          ; EB 08
;   [conditional branch target (if/else)] L_3958
L_3958:
        xchg    si, di                          ; 87 FE
        inc     word ptr [bp - 6]               ; FF 46 FA
        xor     cl, 4                           ; 80 F1 04
;   [unconditional branch target] L_3960
L_3960:
        mov     word ptr [bp - 0xc], si         ; 89 76 F4
        mov     word ptr [bp - 0xe], di         ; 89 7E F2
        mov     word ptr [bp - 0x16], cx        ; 89 4E EA
        jmp     word ptr [bx + 0x2ce]           ; FF A7 CE 02
;   [conditional branch target (if/else)] L_396D
L_396D:
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [di + 8]           ; 8B 45 08
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        mov     word ptr [di + 8], ax           ; 89 45 08
;   [loop start] L_3979
L_3979:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [loop start] L_3986
L_3986:
        xor     ax, ax                          ; 33 C0
        jmp     L_3979                          ; EB EF
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        jmp     L_3992                          ; EB 03
        mov     si, word ptr [bp - 0x12]        ; 8B 76 EE
;   [unconditional branch target] L_3992
L_3992:
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        mov     word ptr [di + 4], ax           ; 89 45 04
        cmp     word ptr [di + 2], ax           ; 39 45 02
        je      L_39FA                          ; 74 5D
        add     di, 6                           ; 83 C7 06
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     cx, ax                          ; 8B C8
        add     ax, ax                          ; 03 C0
        add     ax, di                          ; 03 C7
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        ja      L_3986                          ; 77 D8
        mov     ax, cx                          ; 8B C1
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        jmp     L_39FD                          ; EB 46
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        mov     word ptr [di + 4], ax           ; 89 45 04
        cmp     word ptr [di + 2], ax           ; 39 45 02
        je      L_39FA                          ; 74 38
        add     di, 6                           ; 83 C7 06
        mov     si, word ptr [bp - 0x10]        ; 8B 76 F0
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        mov     cx, word ptr [bx - 6]           ; 8B 4F FA
        mov     dx, ax                          ; 8B D0
        add     dx, dx                          ; 03 D2
        add     dx, cx                          ; 03 D1
        add     dx, cx                          ; 03 D1
        add     dx, di                          ; 03 D7
        cmp     dx, word ptr [bp + 6]           ; 3B 56 06
        ja      L_3986                          ; 77 A6
        push    si                              ; 56
        push    bx                              ; 53
        push    di                              ; 57
        push    ax                              ; 50
        push    cx                              ; 51
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_37E4                          ; E8 F7 FD
        sub     di, 6                           ; 83 EF 06
        or      ax, ax                          ; 0B C0
        jne     L_39FD                          ; 75 09
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        jmp     L_3A83                          ; E9 89 00
;   [conditional branch target (if/else)] L_39FA
L_39FA:
        jmp     L_38E0                          ; E9 E3 FE
;   [branch target] L_39FD
L_39FD:
        mov     word ptr [di], ax               ; 89 05
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        cmp     si, di                          ; 3B F7
        je      L_3A31                          ; 74 2B
        cmp     ax, word ptr [si]               ; 3B 04
        jne     L_3A48                          ; 75 3E
        mov     cx, ax                          ; 8B C8
        mov     bx, word ptr [di + 2]           ; 8B 5D 02
        cmp     bx, word ptr [si + 4]           ; 3B 5C 04
        jne     L_3A48                          ; 75 34
        mov     dx, word ptr [di + 4]           ; 8B 55 04
        mov     bx, si                          ; 8B DE
        add     si, 6                           ; 83 C6 06
        add     di, 6                           ; 83 C7 06
        repe cmpsw word ptr [si], word ptr es:[di] ; F3 A7
        jne     L_3A48                          ; 75 25
        mov     word ptr [bx + 4], dx           ; 89 57 04
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        dec     word ptr [di + 0xa]             ; FF 4D 0A
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        jmp     L_3A75                          ; EB 44
;   [conditional branch target (if/else)] L_3A31
L_3A31:
        mov     bx, word ptr [bp + 0xe]         ; 8B 5E 0E
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [bx + 0xe], dx         ; 89 57 0E
        mov     dx, 0x7fff                      ; BA FF 7F
        mov     word ptr [bx + 0xc], dx         ; 89 57 0C
        neg     dx                              ; F7 DA
        mov     word ptr [bx + 0x10], dx        ; 89 57 10
        mov     word ptr [bx + 0x12], dx        ; 89 57 12
;   [conditional branch target (if/else)] L_3A48
L_3A48:
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        mov     word ptr [bp - 8], di           ; 89 7E F8
        mov     si, di                          ; 8B F7
        add     di, 6                           ; 83 C7 06
        shl     ax, 1                           ; D1 E0
        add     di, ax                          ; 03 F8
        mov     word ptr [bp - 0xa], di         ; 89 7E F6
        mov     bx, di                          ; 8B DF
        mov     di, word ptr [bp + 0xe]         ; 8B 7E 0E
        mov     ax, word ptr [bx - 2]           ; 8B 47 FE
        cmp     ax, word ptr [di + 0x10]        ; 3B 45 10
        jle     L_3A6A                          ; 7E 03
        mov     word ptr [di + 0x10], ax        ; 89 45 10
;   [conditional branch target (if/else)] L_3A6A
L_3A6A:
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        cmp     ax, word ptr [di + 0xc]         ; 3B 45 0C
        jge     L_3A75                          ; 7D 03
        mov     word ptr [di + 0xc], ax         ; 89 45 0C
;   [branch target] L_3A75
L_3A75:
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        cmp     ax, word ptr [di + 0x12]        ; 3B 45 12
        jle     L_3A80                          ; 7E 03
        mov     word ptr [di + 0x12], ax        ; 89 45 12
;   [conditional branch target (if/else)] L_3A80
L_3A80:
        inc     word ptr [di + 0xa]             ; FF 45 0A
;   [unconditional branch target] L_3A83
L_3A83:
        mov     di, word ptr [bp - 0xa]         ; 8B 7E F6
        mov     word ptr [di + 2], ax           ; 89 45 02
        jmp     L_38E0                          ; E9 54 FE

;-----------------------------------------------------------------------
; COMBINERGN  (offset 0x3A8C, size 273 bytes)
;-----------------------------------------------------------------------
COMBINERGN PROC FAR
;   [sub-routine] L_3A8C
L_3A8C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        jcxz    L_3ABA                          ; E3 18
        mov     si, word ptr [bp + 0xc]         ; 8B 76 0C
        or      si, si                          ; 0B F6
        je      L_3ABA                          ; 74 11
        cmp     word ptr [bp + 6], 5            ; 83 7E 06 05
        jl      L_3ABD                          ; 7C 0E
        push    si                              ; 56
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_3B9D                          ; E8 E7 00
        push    si                              ; 56
        call    L_11A5                          ; E8 EB D6
;   [loop start (also forward branch)] L_3ABA
L_3ABA:
        jmp     L_3B81                          ; E9 C4 00
;   [conditional branch target (if/else)] L_3ABD
L_3ABD:
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        jcxz    L_3ABA                          ; E3 F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        dec     ax                              ; 48
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp - 4], 0x100        ; C7 46 FC 00 01
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_15FE                          ; E8 22 DB
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_3AE6                          ; 75 03
        jmp     L_3B8E                          ; E9 A8 00
;   [loop start (also forward branch)] L_3AE6
L_3AE6:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, ax                          ; 8B D8
        or      ax, ax                          ; 0B C0
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, bx                          ; 8B C3
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        sub     ax, 4                           ; 2D 04 00
        push    bx                              ; 53
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_3872                          ; E8 68 FD
        or      ax, ax                          ; 0B C0
        jne     L_3B27                          ; 75 19
        add     word ptr [bp - 4], 0x100        ; 81 46 FC 00 01
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    bx                              ; 53
        ;   ^ arg hMem
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg wBytes
        push    word ptr [0x224]                ; FF 36 24 02
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        jcxz    L_3B8E                          ; E3 69
        jmp     L_3AE6                          ; EB BF
;   [conditional branch target (if/else)] L_3B27
L_3B27:
        cmp     ax, 0x1e                        ; 3D 1E 00
        jge     L_3B2F                          ; 7D 03
        mov     ax, 0x1e                        ; B8 1E 00
;   [conditional branch target (if/else)] L_3B2F
L_3B2F:
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        mov     di, word ptr [bp + 0xc]         ; 8B 7E 0C
        push    di                              ; 57
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        push    word ptr [0x224]                ; FF 36 24 02
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 1F 3B 00 00 [FIXUP]
        jcxz    L_3B8E                          ; E3 4C
        mov     si, word ptr [si]               ; 8B 34
        mov     cx, word ptr [si + 8]           ; 8B 4C 08
        push    ds                              ; 1E
        pop     es                              ; 07
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, di                          ; 8B DF
        mov     dx, word ptr [di]               ; 8B 15
        mov     word ptr [si], dx               ; 89 14
        mov     word ptr [si + 2], 5            ; C7 44 02 05 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        lea     di, [bx + 4]                    ; 8D 7F 04
        mov     ax, word ptr [0x38]             ; A1 38 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        stosw   word ptr es:[di], ax            ; AB
        add     word ptr [0x38], 1              ; 83 06 38 00 01
        adc     word ptr [0x3a], 0              ; 83 16 3A 00 00
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 58 1B 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_11A5                          ; E8 2A D6
;   [loop start] L_3B7B
L_3B7B:
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
;   [unconditional branch target] L_3B81
L_3B81:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [branch target] L_3B8E
L_3B8E:
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        jcxz    L_3B99                          ; E3 06
        push    cx                              ; 51
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A 71 3B 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_3B99
L_3B99:
        xor     ax, ax                          ; 33 C0
        jmp     L_3B7B                          ; EB DE
COMBINERGN ENDP

; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (1 use)

; Description (heuristic):
;   Thin wrapper around LOCALREALLOC(hMem, wBytes, wFlags) -> HANDLE.

;-------------------------------------------------------------------------
; sub_3B9D   offset=0x3B9D  size=24 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_3B9D
L_3B9D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     si, word ptr [si]               ; 8B 34
        mov     di, word ptr [si + 8]           ; 8B 7C 08
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        push    di                              ; 57
        ;   ^ arg wBytes
        push    word ptr [0x224]                ; FF 36 24 02
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A 3C 3B 00 00 [FIXUP]
        jcxz    L_3BC5                          ; E3 0C
        mov     cx, di                          ; 8B CF
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     di, word ptr [di]               ; 8B 3D
        push    ds                              ; 1E
        pop     es                              ; 07
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
;   [error/early exit] L_3BC5
L_3BC5:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (90 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3BCD   offset=0x3BCD  size=90 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_15FE, L_3BCD
;-------------------------------------------------------------------------
;   [sub-routine] L_3BCD
L_3BCD:
        xor     cx, cx                          ; 33 C9
        mov     bx, 0x1b1                       ; BB B1 01
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, ds                          ; 8C DB
        lds     si, ptr [bp + 4]                ; C5 76 04
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [si + 2]           ; 3B 44 02
        jge     L_3BED                          ; 7D 0B
        lodsw   ax, word ptr [si]               ; AD
        cmp     ax, word ptr [si + 2]           ; 3B 44 02
        jge     L_3BED                          ; 7D 05
        mov     di, 0x1e                        ; BF 1E 00
        jmp     L_3BF0                          ; EB 03
;   [conditional branch target (if/else)] L_3BED
L_3BED:
        mov     di, 0x14                        ; BF 14 00
;   [unconditional branch target] L_3BF0
L_3BF0:
        mov     ds, bx                          ; 8E DB
        mov     ax, dx                          ; 8B C2
        or      cx, cx                          ; 0B C9
        jne     L_3C01                          ; 75 09
        push    word ptr [0x2f6]                ; FF 36 F6 02
        call    L_15FE                          ; E8 FF D9
        jcxz    L_3C5B                          ; E3 5A
;   [conditional branch target (if/else)] L_3C01
L_3C01:
        mov     cx, di                          ; 8B CF
        mov     di, ax                          ; 8B F8
        mov     dx, ax                          ; 8B D0
        mov     di, word ptr [di]               ; 8B 3D
        mov     bx, ds                          ; 8C DB
        mov     es, bx                          ; 8E C3
        cld                                     ; FC
        xor     ax, ax                          ; 33 C0
        stosw   word ptr es:[di], ax            ; AB
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x38]             ; A1 38 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        stosw   word ptr es:[di], ax            ; AB
        add     word ptr [0x38], 1              ; 83 06 38 00 01
        adc     word ptr [0x3a], 0              ; 83 16 3A 00 00
        mov     ax, cx                          ; 8B C1
        stosw   word ptr es:[di], ax            ; AB
        cmp     cx, 0x14                        ; 83 F9 14
        je      L_3C50                          ; 74 21
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        stosw   word ptr es:[di], ax            ; AB
        lds     si, ptr [bp + 4]                ; C5 76 04
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        movsw   word ptr es:[di], word ptr [si] ; A5
        mov     ax, 2                           ; B8 02 00
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si - 6]           ; 8B 44 FA
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si - 2]           ; 8B 44 FE
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si - 8]           ; 8B 44 F8
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [si - 4]           ; 8B 44 FC
        stosw   word ptr es:[di], ax            ; AB
        jmp     L_3C57                          ; EB 07
;   [conditional branch target (if/else)] L_3C50
L_3C50:
        xor     ax, ax                          ; 33 C0
        mov     cx, 0xa                         ; B9 0A 00
        rep stosw word ptr es:[di], ax          ; F3 AB
;   [unconditional branch target] L_3C57
L_3C57:
        mov     ds, bx                          ; 8E DB
        mov     ax, dx                          ; 8B C2
;   [error/early exit] L_3C5B
L_3C5B:
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        lea     bx, [0x2ee]                     ; 8D 1E EE 02
        push    ds                              ; 1E
        push    bx                              ; 53
        call    L_3BCD                          ; E8 57 FF
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

;-----------------------------------------------------------------------
; CREATERECTRGN  (offset 0x3C7F, size 56 bytes)
;-----------------------------------------------------------------------
CREATERECTRGN PROC FAR
;   [sub-routine] L_3C7F
L_3C7F:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        cld                                     ; FC
        lea     di, [bp - 0xa]                  ; 8D 7E F6
        push    ss                              ; 16
        pop     es                              ; 07
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        sub     di, 8                           ; 83 EF 08
        push    ss                              ; 16
        push    di                              ; 57
        call    L_3BCD                          ; E8 22 FF
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
CREATERECTRGN ENDP

; Description (heuristic):
;   Pure computation / dispatcher (55 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_3CB7   offset=0x3CB7  size=55 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_3BD0
;-------------------------------------------------------------------------
;   [sub-routine] L_3CB7
L_3CB7:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        cld                                     ; FC
        lea     di, [bp - 8]                    ; 8D 7E F8
        push    ss                              ; 16
        pop     es                              ; 07
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        stosw   word ptr es:[di], ax            ; AB
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        stosw   word ptr es:[di], ax            ; AB
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        sub     di, 8                           ; 83 EF 08
        push    ss                              ; 16
        push    di                              ; 57
        call    L_3BD0                          ; E8 F1 FE
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     cx, cx                          ; 33 C9
        mov     bx, 0xa                         ; BB 0A 00
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
;   [loop start] L_3CF8
L_3CF8:
        xor     dx, dx                          ; 33 D2
        div     bx                              ; F7 F3
        add     dl, 0x30                        ; 80 C2 30
        push    dx                              ; 52
        inc     cx                              ; 41
        or      ax, ax                          ; 0B C0
        jne     L_3CF8                          ; 75 F3
        mov     ax, cx                          ; 8B C1
        les     bx, ptr [bp + 6]                ; C4 5E 06
;   [loop iteration target] L_3D0A
L_3D0A:
        pop     dx                              ; 5A
        mov     byte ptr es:[bx], dl            ; 26 88 17
        inc     bx                              ; 43
        loop    L_3D0A                          ; E2 F9
        mov     byte ptr es:[bx], cl            ; 26 88 0F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Mixed routine using: FATALEXIT.

;-------------------------------------------------------------------------
; sub_3D1F   offset=0x3D1F  size=380 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   FATALEXIT
;
; Near calls (internal): L_16B5, L_4029
;-------------------------------------------------------------------------
;   [sub-routine] L_3D1F
L_3D1F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        push    di                              ; 57
        xor     dx, dx                          ; 33 D2
        ; constant VK_SHIFT
        mov     si, 0x10                        ; BE 10 00
;   [loop start] L_3D29
L_3D29:
        mov     bx, word ptr [si + 0x16]        ; 8B 9C 16 00
;   [loop start] L_3D2D
L_3D2D:
        mov     bx, word ptr [bx]               ; 8B 1F
;   [loop start] L_3D2F
L_3D2F:
        mov     cx, word ptr [bx]               ; 8B 0F
        jcxz    L_3D55                          ; E3 22
        mov     di, cx                          ; 8B F9
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, word ptr [di + 2]           ; 3B 45 02
        jne     L_3D51                          ; 75 12
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, word ptr [di + 4]           ; 3B 45 04
        jne     L_3D51                          ; 75 0A
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bx], ax               ; 89 07
        mov     word ptr [di], dx               ; 89 15
        mov     dx, cx                          ; 8B D1
        jmp     L_3D2F                          ; EB DE
;   [conditional branch target (if/else)] L_3D51
L_3D51:
        mov     bx, cx                          ; 8B D9
        jmp     L_3D2D                          ; EB D8
;   [conditional branch target (if/else)] L_3D55
L_3D55:
        sub     si, 2                           ; 83 EE 02
        jns     L_3D29                          ; 79 CF
        mov     bx, dx                          ; 8B DA
        call    L_16B5                          ; E8 56 D9
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    si                              ; 56
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_3D8F                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_3D8F
L_3D8F:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_3DA8                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_3DA8
L_3DA8:
        or      ax, ax                          ; 0B C0
        jne     L_3DC2                          ; 75 16
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        div     cx                              ; F7 F1
        mov     dx, bx                          ; 8B D3
        jmp     L_3DFF                          ; EB 3E
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3DC2
L_3DC2:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [loop start] L_3DCD
L_3DCD:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_3DCD                          ; 75 F4
        div     cx                              ; F7 F1
        mov     si, ax                          ; 8B F0
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4029                          ; E8 3D 02
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        ja      L_3DF8                          ; 77 07
        jb      L_3DFB                          ; 72 08
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_3DFB                          ; 76 03
;   [conditional branch target (if/else)] L_3DF8
L_3DF8:
        sub     si, 1                           ; 83 EE 01
;   [conditional branch target (if/else)] L_3DFB
L_3DFB:
        xor     dx, dx                          ; 33 D2
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_3DFF
L_3DFF:
        or      di, di                          ; 0B FF
        je      L_3E0A                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [conditional branch target (if/else)] L_3E0A
L_3E0A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        xor     bx, bx                          ; 33 DB
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_3E3F                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_3E3F
L_3E3F:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_3E58                          ; 7D 12
        not     bx                              ; F7 D3
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_3E58
L_3E58:
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mul     cx                              ; F7 E1
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     di, dx                          ; 03 FA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 8]               ; F7 66 08
        add     di, ax                          ; 03 F8
        mov     dx, di                          ; 8B D7
        mov     ax, si                          ; 8B C6
        or      bx, bx                          ; 0B DB
        je      L_3E7D                          ; 74 07
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [conditional branch target (if/else)] L_3E7D
L_3E7D:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    bx                              ; 53
        push    di                              ; 57
        xor     di, di                          ; 33 FF
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, ax                          ; 0B C0
        jge     L_3EB1                          ; 7D 12
        not     di                              ; F7 D7
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], dx           ; 89 56 06
;   [conditional branch target (if/else)] L_3EB1
L_3EB1:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        or      ax, ax                          ; 0B C0
        jge     L_3EC8                          ; 7D 10
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        neg     ax                              ; F7 D8
        neg     dx                              ; F7 DA
        sbb     ax, 0                           ; 1D 00 00
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
        mov     word ptr [bp + 0xa], dx         ; 89 56 0A
;   [conditional branch target (if/else)] L_3EC8
L_3EC8:
        or      ax, ax                          ; 0B C0
        jne     L_3EE6                          ; 75 1A
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        xor     dx, dx                          ; 33 D2
        div     cx                              ; F7 F1
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        div     cx                              ; F7 F1
        mov     ax, dx                          ; 8B C2
        xor     dx, dx                          ; 33 D2
        or      di, di                          ; 0B FF
        jne     L_3F2A                          ; 75 47
        jmp     L_3F31                          ; EB 4C
        nop                                     ; 90
;   [conditional branch target (if/else)] L_3EE6
L_3EE6:
        mov     bx, ax                          ; 8B D8
        mov     cx, word ptr [bp + 0xa]         ; 8B 4E 0A
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [loop start] L_3EF1
L_3EF1:
        shr     bx, 1                           ; D1 EB
        rcr     cx, 1                           ; D1 D9
        shr     dx, 1                           ; D1 EA
        rcr     ax, 1                           ; D1 D8
        or      bx, bx                          ; 0B DB
        jne     L_3EF1                          ; 75 F4
        div     cx                              ; F7 F1
        xor     dx, dx                          ; 33 D2
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_4029                          ; E8 1B 01
        cmp     dx, word ptr [bp + 8]           ; 3B 56 08
        ja      L_3F1A                          ; 77 07
        jb      L_3F20                          ; 72 0B
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jbe     L_3F20                          ; 76 06
;   [conditional branch target (if/else)] L_3F1A
L_3F1A:
        sub     ax, word ptr [bp + 0xa]         ; 2B 46 0A
        sbb     dx, word ptr [bp + 0xc]         ; 1B 56 0C
;   [conditional branch target (if/else)] L_3F20
L_3F20:
        sub     ax, word ptr [bp + 6]           ; 2B 46 06
        sbb     dx, word ptr [bp + 8]           ; 1B 56 08
        or      di, di                          ; 0B FF
        jne     L_3F31                          ; 75 07
;   [conditional branch target (if/else)] L_3F2A
L_3F2A:
        neg     dx                              ; F7 DA
        neg     ax                              ; F7 D8
        sbb     dx, 0                           ; 83 DA 00
;   [branch target] L_3F31
L_3F31:
        pop     di                              ; 5F
        pop     bx                              ; 5B
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        xor     ch, ch                          ; 32 ED
        jcxz    L_3F4D                          ; E3 06
;   [loop iteration target] L_3F47
L_3F47:
        shl     ax, 1                           ; D1 E0
        rcl     dx, 1                           ; D1 D2
        loop    L_3F47                          ; E2 FA
;   [conditional branch target (if/else)] L_3F4D
L_3F4D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        pop     bx                              ; 5B
        pop     dx                              ; 5A
        sub     ax, sp                          ; 2B C4
        jae     L_3F7F                          ; 73 19
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_3F7F                          ; 77 10
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_3F7A                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_3F7A
L_3F7A:
        mov     sp, ax                          ; 8B E0
        push    dx                              ; 52
        push    bx                              ; 53
        retf                                    ; CB
;   [conditional branch target (if/else)] L_3F7F
L_3F7F:
        mov     dx, word ptr [0x380]            ; 8B 16 80 03
        inc     dx                              ; 42
        je      L_3F8A                          ; 74 04
        ljmp    [0x380]                         ; FF 2E 80 03
;   [loop start (also forward branch)] L_3F8A
L_3F8A:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
        pop     bx                              ; 5B
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     dx, word ptr cs:[bx]            ; 2E 8B 17
        inc     bx                              ; 43
        inc     bx                              ; 43
        xor     ax, ax                          ; 33 C0
        mov     al, dl                          ; 8A C2
        shl     ax, 1                           ; D1 E0
        sub     ax, sp                          ; 2B C4
        jae     L_3FD8                          ; 73 2C
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_3FD8                          ; 77 23
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_3FC0                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_3FC0
L_3FC0:
        mov     sp, ax                          ; 8B E0
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    bx                              ; FF D3
        pop     cx                              ; 59
        pop     di                              ; 5F
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        pop     bx                              ; 5B
        add     sp, cx                          ; 03 E1
        jmp     bx                              ; FF E3
;   [loop start (also forward branch)] L_3FD8
L_3FD8:
        jmp     L_3F8A                          ; E9 AF FF
        mov     bx, 0xd88c                      ; BB 8C D8
        nop                                     ; 90
        pop     bx                              ; 5B
        mov     dx, word ptr cs:[bx]            ; 2E 8B 17
        inc     bx                              ; 43
        inc     bx                              ; 43
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        xor     ax, ax                          ; 33 C0
        mov     al, dl                          ; 8A C2
        shl     ax, 1                           ; D1 E0
        sub     ax, sp                          ; 2B C4
        jae     L_3FD8                          ; 73 E2
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_3FD8                          ; 77 D9
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_400A                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_400A
L_400A:
        mov     sp, ax                          ; 8B E0
        push    si                              ; 56
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        call    bx                              ; FF D3
        pop     cx                              ; 59
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        pop     bx                              ; 5B
        pop     es                              ; 07
        add     sp, cx                          ; 03 E1
        push    es                              ; 06
        push    bx                              ; 53
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_4029   offset=0x4029  size=29 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_4029
L_4029:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mul     cx                              ; F7 E1
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     si, ax                          ; 8B F0
        mul     cx                              ; F7 E1
        add     bx, dx                          ; 03 DA
        xchg    si, ax                          ; 96
        mul     word ptr [bp + 8]               ; F7 66 08
        add     bx, ax                          ; 03 D8
        mov     dx, bx                          ; 8B D3
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

GDI_TEXT ENDS

        END
