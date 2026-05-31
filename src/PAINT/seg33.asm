; PAINT/seg33.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x63], ah            ; 00 61 63
    arpl word [di + 0x6c], sp                ; 63 65 6C
    add byte [bp + 0x6f], ch                 ; 00 6E 6F
    db 072h, 06Dh                     ; jb 0x87
    popaw                                    ; 61
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bx + si], al                   ; 00 00
    arpl word [di + 0x72], si                ; 63 75 72
    db 06Dh                           ; insw word es:[di], dx
    popaw                                    ; 61
    db 072h, 071h                     ; jb 0x96
    add byte gs:[bp + di + 0x75], ah         ; 65 00 63 75
    db 072h, 06Ch                     ; jb 0x97
    popaw                                    ; 61
    db 073h, 073h                     ; jae 0xa1
    db 06Fh                           ; outsw dx, word [si]
    add byte [bp + di + 0x75], ah            ; 00 63 75
    db 072h, 074h                     ; jb 0xa8
    db 065h, 078h, 074h               ; js 0xab
    add byte [bp + di + 0x75], ah            ; 00 63 75
    db 072h, 068h                     ; jb 0xa4
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    add byte fs:[bp + di + 0x75], ah         ; 64 00 63 75
    db 072h, 070h                     ; jb 0xb4
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 063h, 06Ch, 000h               ; arpl word [si], bp
    arpl word [di + 0x72], si                ; 63 75 72
    db 065h, 072h, 061h               ; jb 0xb0
    db 073h, 065h                     ; jae 0xb6
    add byte [bp + di + 0x75], ah            ; 00 63 75
    db 072h, 06Ch                     ; jb 0xc2
    imul bp, word [bp + 0x65], 0x6300        ; 69 6E 65 00 63
    db 075h, 072h                     ; jne 0xcf
    db 062h, 072h, 075h               ; bound si, dword [bp + si + 0x75]
    db 073h, 068h                     ; jae 0xca
    add byte [bp + di + 0x75], ah            ; 00 63 75
    db 072h, 033h                     ; jb 0x9a
    add byte fs:[bp + di + 0x75], ah         ; 64 00 63 75
    db 072h, 070h                     ; jb 0xdd
    popaw                                    ; 61
    imul bp, word [bp + 0x74], 0x6300        ; 69 6E 74 00 63
    db 075h, 072h                     ; jne 0xe7
    db 073h, 070h                     ; jae 0xe7
    db 06Ch                           ; insb byte es:[di], dx
    imul bp, word [bp], 0x7563               ; 69 6E 00 63 75
    db 072h, 073h                     ; jb 0xf2
    db 070h, 072h                     ; jo 0xf3
    popaw                                    ; 61
    db 079h, 000h                     ; jns 0x84
    arpl word [di + 0x72], si                ; 63 75 72
    arpl word [bp + si + 0x6f], si           ; 63 72 6F
    db 073h, 073h                     ; jae 0xff
    add byte [bx + si], al                   ; 00 00
    out dx, ax                               ; EF
    db 0FFh                           ; FF
    mov bp, 0xf7ff                           ; BD FF F7
    db 0FFh                           ; FF
    db 0DEh, 0FFh                     ; fdivp st(7)
    db 07Bh, 0FFh                     ; jnp 0x97
    out dx, ax                               ; EF
    db 0FFh                           ; FF
    mov bp, 0xf7ff                           ; BD FF F7
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0CCh                     ; dec sp
    jmp word [bp - 1]                        ; FF 66 FF
    db 033h, 0FFh                     ; xor di, di
    db 099h                           ; cdq
    db 0FFh, 0CCh                     ; dec sp
    jmp word [bp - 1]                        ; FF 66 FF
    db 033h, 0FFh                     ; xor di, di
    db 099h                           ; cdq
    db 0FFh, 01Eh, 000h, 027h         ; lcall [0x2700]
    add byte [bx + si], dh                   ; 00 30
    add byte [bx + si], bh                   ; 00 38
    db 000h, 040h, 000h               ; add byte [bx + si], al
    dec cx                                   ; 49
    db 000h, 052h, 000h               ; add byte [bp + si], dl
    pop dx                                   ; 5A
    db 000h, 063h, 000h               ; add byte [bp + di], ah
    db 069h, 000h, 072h, 000h         ; imul ax, word [bx + si], 0x72
    db 07Bh, 000h                     ; jnp 0xd6
    test byte [bx + si], al                  ; 84 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    dec word [bx + si + 0x88]                ; FF 88 88 00
    add byte [bp + si], ah                   ; 00 22
    and al, byte [bx + si]                   ; 22 00
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add byte [bp + si], ah                   ; 00 22
    and al, byte [bx + si]                   ; 22 00
    add byte [bx + 0x7f], bh                 ; 00 7F 7F
    db 0FFh                           ; FF
    db 0FFh, 0F7h                     ; push di
    idiv di                                  ; F7 FF
    db 0FFh                           ; FF
    db 07Fh, 07Fh                     ; jg 0x191
    db 0FFh                           ; FF
    db 0FFh, 0F7h                     ; push di
    idiv di                                  ; F7 FF
    dec word [bx + si + 0x2288]              ; FF 88 88 22
    and cl, byte [bx + si + 0x2288]          ; 22 88 88 22
    and cl, byte [bx + si + 0x2288]          ; 22 88 88 22
    and cl, byte [bx + si + 0x2288]          ; 22 88 88 22
    and dh, byte [bx + 0x77]                 ; 22 77 77
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0DDh, 0DDh                     ; fstp st(5)
    db 0FFh                           ; FF
    push word [bx + 0x77]                    ; FF 77 77
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0DDh, 0DDh                     ; fstp st(5)
    db 0FFh                           ; FF
    call word [di + 0x55]                    ; FF 55 55
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    push bp                                  ; 55
    push bp                                  ; 55
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    push bp                                  ; 55
    push bp                                  ; 55
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    push bp                                  ; 55
    push bp                                  ; 55
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    db 077h, 077h                     ; ja 0x1c1
    db 0DDh, 0DDh                     ; fstp st(5)
    db 077h, 077h                     ; ja 0x1c5
    db 0DDh, 0DDh                     ; fstp st(5)
    db 077h, 077h                     ; ja 0x1c9
    db 0DDh, 0DDh                     ; fstp st(5)
    db 077h, 077h                     ; ja 0x1cd
    db 0DDh, 0DDh                     ; fstp st(5)
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    add byte [bx + si], al                   ; 00 00
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    add byte [bx + si], al                   ; 00 00
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    add byte [bx + si], al                   ; 00 00
    db 0AAh                           ; stosb byte es:[di], al
    db 0AAh                           ; stosb byte es:[di], al
    add byte [bx + si], al                   ; 00 00
    push bp                                  ; 55
    push bp                                  ; 55
    db 0FFh                           ; FF
    call word [di + 0x55]                    ; FF 55 55
    db 0FFh                           ; FF
    call word [di + 0x55]                    ; FF 55 55
    db 0FFh                           ; FF
    call word [di + 0x55]                    ; FF 55 55
    db 0FFh                           ; FF
    push word [bp + di]                      ; FF 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    xor si, word [bp + di]                   ; 33 33
    db 033h, 0FFh                     ; xor di, di
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si + 0x1188], cl          ; 00 88 88 11
    adc word [bp + si], sp                   ; 11 22
    and al, byte [si + 0x44]                 ; 22 44 44
    mov byte [bx + si + 0x1111], cl          ; 88 88 11 11
    and ah, byte [bp + si]                   ; 22 22
    inc sp                                   ; 44
    inc sp                                   ; 44
    db 077h, 077h                     ; ja 0x221
    out dx, al                               ; EE
    out dx, al                               ; EE
    db 0DDh, 0DDh                     ; fstp st(5)
    mov bx, 0x77bb                           ; BB BB 77
    db 077h, 0EEh                     ; ja 0x1a1
    out dx, al                               ; EE
    db 0DDh, 0DDh                     ; fstp st(5)
    mov bx, 0x3fbb                           ; BB BB 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    add word [bx + di], ax                   ; 01 01
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    dec word [bp + 0x4e]                     ; FF 4E 4E
    iret                                     ; CF
    iret                                     ; CF
    cld                                      ; FC
    cld                                      ; FC
    in al, 0xe4                              ; E4 E4
    daa                                      ; 27
    daa                                      ; 27
    aas                                      ; 3F
    aas                                      ; 3F
    db 0F3h, 0F3h, 072h, 072h         ; jb 0x25a
    db 07Eh, 07Eh                     ; jle 0x268
    cld                                      ; FC
    cld                                      ; FC
    stc                                      ; F9
    stc                                      ; F9
    db 0F3h, 0F3h, 0E7h, 0E7h         ; out 0xe7, ax
    iret                                     ; CF
    iret                                     ; CF
    lahf                                     ; 9F
    lahf                                     ; 9F
    aas                                      ; 3F
    aas                                      ; 3F
    db 07Fh, 07Fh                     ; jg 0x279
    out dx, ax                               ; EF
    out dx, ax                               ; EF
    std                                      ; FD
    std                                      ; FD
    db 0DFh                           ; DF
    db 0DFh                           ; DF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    div di                                   ; F7 F7
    mov di, 0xfbbf                           ; BF BF FB
    sti                                      ; FB
    xor si, word [bp + di]                   ; 33 33
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    aas                                      ; 3F
    aas                                      ; 3F
    db 0FFh                           ; FF
    push word [bp + di]                      ; FF 33
    db 033h, 0FFh                     ; xor di, di
    db 0FFh                           ; FF
    aas                                      ; 3F
    aas                                      ; 3F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + 0x77], dh                 ; 00 77 77
    db 077h, 077h                     ; ja 0x295
    db 077h, 077h                     ; ja 0x297
    add byte [bx + si], al                   ; 00 00
    db 077h, 077h                     ; ja 0x29b
    db 077h, 077h                     ; ja 0x29d
    db 077h, 077h                     ; ja 0x29f
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    add byte [bx + si], al                   ; 00 00
    db 0F3h, 0F3h, 0F3h, 0F3h, 0F3h, 0F3h, 000h, 000h ; add byte [bx + si], al
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    aas                                      ; 3F
    db 0F3h, 0F3h, 0E1h, 0E1h         ; loope 0x22d
    int3                                     ; CC
    int3                                     ; CC
    push ds                                  ; 1E
    push ds                                  ; 1E
    aas                                      ; 3F
    aas                                      ; 3F
    db 07Eh, 07Eh                     ; jle 0x2d2
    cld                                      ; FC
    cld                                      ; FC
    stc                                      ; F9
    stc                                      ; F9
    aas                                      ; 3F
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    aas                                      ; 3F
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 07Ch, 07Ch                     ; jl 0x2ea
    cmp word [bx + di], di                   ; 39 39
    xchg bx, ax                              ; 93
    xchg bx, ax                              ; 93
    db 0C7h, 0C7h, 0EFh, 0EFh         ; mov di, 0xefef
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    aas                                      ; 3F
    aas                                      ; 3F
    lahf                                     ; 9F
    lahf                                     ; 9F
    iret                                     ; CF
    iret                                     ; CF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    stc                                      ; F9
    stc                                      ; F9
    db 0F3h, 0F3h, 0E7h, 0E7h         ; out 0xe7, ax
    db 0FFh                           ; FF
    db 0FFh, 0CFh                     ; dec di
    iret                                     ; CF
    xchg word [bx + 0x3333], ax              ; 87 87 33 33
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    cld                                      ; FC
    db 078h, 078h                     ; js 0x30e
    xor si, word [bp + di]                   ; 33 33
    cmp al, 0x3c                             ; 3C 3C
    db 099h                           ; cdq
    db 099h                           ; cdq
    ret                                      ; C3
    ret                                      ; C3
    db 099h                           ; cdq
    db 099h                           ; cdq
    cmp al, 0x3c                             ; 3C 3C
    db 07Ch, 07Ch                     ; jl 0x320
    cld                                      ; FC
    cld                                      ; FC
    db 07Ch, 07Ch                     ; jl 0x324
    cld                                      ; FC
    cld                                      ; FC
    db 07Bh, 07Bh                     ; jnp 0x327
    mov bh, 0xb7                             ; B7 B7
    iret                                     ; CF
    iret                                     ; CF
    db 0F3h, 0F3h, 0FDh               ; std
    std                                      ; FD
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    dec byte [bx]                            ; FE 0F
    db 00Fh, 08Bh, 08Bh, 0DDh         ; jnp 0xffffe048
    fnstsw word [bx + si + 0x70b8]           ; DD B8 B8 70
    db 070h, 0E8h                     ; jo 0x2ab
    db 0E8h, 0DDh, 0DDh               ; call 0xffffe0a3
    mov cs, word [bp + 0x3e3e]               ; 8E 8E 3E 3E
    db 03Eh, 03Eh, 09Ch               ; pushf
    pushf                                    ; 9C
    rol cx, 0xe3                             ; C1 C1 E3
    db 0E3h, 0E3h                     ; jcxz 0x2b6
    db 0E3h, 0C9h                     ; jcxz 0x29e
    leave                                    ; C9
    sbb al, 0x1c                             ; 1C 1C
    sbb al, 0x1c                             ; 1C 1C
    leave                                    ; C9
    leave                                    ; C9
    db 0E3h, 0E3h                     ; jcxz 0x2c1
    db 0E3h, 0E3h                     ; jcxz 0x2c3
    rol cx, 0x9c                             ; C1 C1 9C
    pushf                                    ; 9C
    db 03Eh, 03Eh, 03Eh, 03Eh, 0EFh   ; out dx, ax
    out dx, ax                               ; EF
    db 0DFh                           ; DF
    fild qword [bp + di + 0x55ab]            ; DF AB AB 55
    push bp                                  ; 55
    add byte [bx + si], al                   ; 00 00
    std                                      ; FD
    std                                      ; FD
    sti                                      ; FB
    sti                                      ; FB
    div di                                   ; F7 F7
    mov byte [bx + si + 0x7676], cl          ; 88 88 76 76
    db 070h, 070h                     ; jo 0x36e
    db 070h, 070h                     ; jo 0x370
    mov byte [bx + si + 0x6767], cl          ; 88 88 67 67
    db 00Fh                           ; 0F
    db 00Fh                           ; 0F
    db 00Fh                           ; 0F
    ud0                                      ; 0F FF
    db 0FFh, 0F7h                     ; push di
    imul bx                                  ; F7 EB
    db 0EBh, 0D5h                     ; jmp 0x2e4
    aad 0xaa                                 ; D5 AA
    db 0AAh                           ; stosb byte es:[di], al
    aad 0xd5                                 ; D5 D5
    db 0EBh, 0EBh                     ; jmp 0x301
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    div di                                   ; F7 F7
    arpl word [di + 0x72], si                ; 63 75 72
    db 06Eh                           ; outsb dx, byte [si]
    db 075h, 06Ch                     ; jne 0x39a
    db 06Ch                           ; insb byte es:[di], dx
    add byte [bx + si + 0x65], cl            ; 00 48 65
    db 06Ch                           ; insb byte es:[di], dx
    db 070h, 000h                     ; jo 0x335
    add byte [si + 0x65], al                 ; 00 44 65
    db 076h, 069h                     ; jbe 0x3a3
    db 063h, 065h, 000h               ; arpl word [di], sp
    push ax                                  ; 50
    popaw                                    ; 61
    imul bp, word [bp + 0x74], 0x4400        ; 69 6E 74 00 44
    db 065h, 076h, 069h               ; jbe 0x3b0
    db 063h, 065h, 000h               ; arpl word [di], sp
    push di                                  ; 57
    imul bp, word [bp + 0x64], 0x776f        ; 69 6E 64 6F 77
    db 073h, 000h                     ; jae 0x352
    inc cx                                   ; 41
    db 062h, 06Fh, 072h               ; bound bp, dword [bx + 0x72]
    db 074h, 050h                     ; je 0x3a8
    db 072h, 069h                     ; jb 0x3c3
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 000h                     ; je 0x35d
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    db 000h, 0BAh, 003h, 000h         ; add byte [bp + si + 3], bh
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [si], al                        ; 00 04
    add byte [bx + si], bl                   ; 00 18
    add byte [bx + si], al                   ; 00 00
    db 000h, 054h, 000h               ; add byte [si], dl
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], al                        ; 00 05
    add byte [bx + di], cl                   ; 00 09
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bp + si]                       ; FF 02
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bp + di], al                   ; 00 03
    add byte [bp + di], al                   ; 00 03
    add byte [bp + di], al                   ; 00 03
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bp + di]                       ; FF 03
    add byte [bp + di], al                   ; 00 03
    add byte [bp + di], al                   ; 00 03
    add byte [si], al                        ; 00 04
    add byte [si], al                        ; 00 04
    add byte [si], al                        ; 00 04
    add ch, bh                               ; 00 FD
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    std                                      ; FD
    inc word [si]                            ; FF 04
    add byte [si], al                        ; 00 04
    add byte [si], al                        ; 00 04
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add ah, bh                               ; 00 FC
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    cld                                      ; FC
    inc word [di]                            ; FF 05
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bx + si]                       ; FF 00
    add ch, bh                               ; 00 FD
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    std                                      ; FD
    inc word [bx + di]                       ; FF 01
    add bh, bh                               ; 00 FF
    inc word [bp + di]                       ; FF 03
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di], al                   ; 00 03
    add byte [bp + di], al                   ; 00 03
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di], al                   ; 00 03
    add bh, bh                               ; 00 FF
    inc word [bp + si]                       ; FF 02
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    inc word [bx + di]                       ; FF 01
    add bh, bh                               ; 00 FF
    inc word [si]                            ; FF 04
    add byte [bx + di], al                   ; 00 01
    add byte [si], al                        ; 00 04
    add byte [si], al                        ; 00 04
    add byte [bx + di], al                   ; 00 01
    add byte [si], al                        ; 00 04
    add bh, bh                               ; 00 FF
    inc word [bp + si]                       ; FF 02
    add ch, bh                               ; 00 FD
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    sti                                      ; FB
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    sti                                      ; FB
    inc word [bp + si]                       ; FF 02
    add dh, bh                               ; 00 FE
    inc word [di]                            ; FF 05
    add byte [bp + si], al                   ; 00 02
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [bp + si], al                   ; 00 02
    add byte [di], al                        ; 00 05
    add dh, bh                               ; 00 FE
    inc word [bp + di]                       ; FF 03
    add ah, bh                               ; 00 FC
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    sti                                      ; FB
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add byte [bp + di], al                   ; 00 03
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di], al                   ; 00 03
    add byte [bx + di], al                   ; 00 01
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add ch, bh                               ; 00 FD
    inc word [bx + si]                       ; FF 00
    add byte [si], al                        ; 00 04
    add byte [bx + di], al                   ; 00 01
    add byte [si], al                        ; 00 04
    add byte [bx + di], al                   ; 00 01
    add ch, bh                               ; 00 FD
    inc word [bx + si]                       ; FF 00
    add ch, bh                               ; 00 FD
    inc word [bx + si]                       ; FF 00
    add ah, bh                               ; 00 FC
    inc word [bx + si]                       ; FF 00
    add byte [di], al                        ; 00 05
    add byte [bx + di], al                   ; 00 01
    add byte [di], al                        ; 00 05
    add byte [bx + di], al                   ; 00 01
    add ah, bh                               ; 00 FC
    inc word [bx + si]                       ; FF 00
    add ah, bh                               ; 00 FC
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    inc word [bx + di]                       ; FF 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add dh, bh                               ; 00 FE
    inc word [bx + si]                       ; FF 00
    add ch, bh                               ; 00 FD
    inc word [bx + si]                       ; FF 00
    add ch, bh                               ; 00 FD
    inc word [bx + di]                       ; FF 01
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add ch, bh                               ; 00 FD
    inc word [bx + si]                       ; FF 00
    add ah, bh                               ; 00 FC
    inc word [bx + si]                       ; FF 00
    add ah, bh                               ; 00 FC
    inc word [bx + di]                       ; FF 01
    add byte [bp + di], al                   ; 00 03
    add byte [bx + di], al                   ; 00 01
    add byte [bp + di], al                   ; 00 03
    add byte [bx + si], al                   ; 00 00
    add ah, bh                               ; 00 FC
    inc word [bx + si]                       ; FF 00
    add bl, bh                               ; 00 FB
    inc word [bx + si]                       ; FF 00
    add bl, bh                               ; 00 FB
    inc word [bx + di]                       ; FF 01
    add byte [si], al                        ; 00 04
    add byte [bx + di], al                   ; 00 01
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add bl, bh                               ; 00 FB
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + di]                       ; FF 01
    add byte [bp + si], al                   ; 00 02
    add byte [bp + si], al                   ; 00 02
    add byte [bx + di], al                   ; 00 01
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bp + si]                       ; FF 02
    add byte [bp + di], al                   ; 00 03
    add byte [bp + di], al                   ; 00 03
    add byte [bp + si], al                   ; 00 02
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    std                                      ; FD
    inc word [bp + di]                       ; FF 03
    add byte [si], al                        ; 00 04
    add byte [si], al                        ; 00 04
    add byte [bp + di], al                   ; 00 03
    add ch, bh                               ; 00 FD
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    std                                      ; FD
    db 0FFh                           ; FF
    sti                                      ; FB
    db 0FFh                           ; FF
    cld                                      ; FC
    inc word [si]                            ; FF 04
    add byte [di], al                        ; 00 05
    add byte [di], al                        ; 00 05
    add byte [si], al                        ; 00 04
    add ah, bh                               ; 00 FC
    db 0FFh                           ; FF
    sti                                      ; FB
    db 0FFh                           ; FF
    sti                                      ; FB
    db 0FFh                           ; FF
    cld                                      ; FC
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    inc word [bp + si]                       ; FF 02
    add byte [bx + di], al                   ; 00 01
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add dh, bh                               ; 00 FE
    db 0FFh                           ; FF
    std                                      ; FD
    inc word [bx + di]                       ; FF 01
    add dh, bh                               ; 00 FE
    inc word [bp + si]                       ; FF 02
    add ch, bh                               ; 00 FD
    inc word [bp + di]                       ; FF 03
    add byte [bp + si], al                   ; 00 02
    add dh, bh                               ; 00 FE
    inc word [bx + di]                       ; FF 01
    add ch, bh                               ; 00 FD
    db 0FFh                           ; FF
    cld                                      ; FC
    inc word [bp + si]                       ; FF 02
    add ch, bh                               ; 00 FD
    inc word [bp + di]                       ; FF 03
    add ah, bh                               ; 00 FC
    inc word [si]                            ; FF 04
    add byte [bp + di], al                   ; 00 03
    add ch, bh                               ; 00 FD
    inc word [bp + si]                       ; FF 02
    add ah, bh                               ; 00 FC
    db 0FFh                           ; FF
    sti                                      ; FB
    inc word [bp + di]                       ; FF 03
    add ah, bh                               ; 00 FC
    inc word [si]                            ; FF 04
    add bl, bh                               ; 00 FB
    inc word [di]                            ; FF 05
    add byte [si], al                        ; 00 04
    add ah, bh                               ; 00 FC
    inc word [bp + di]                       ; FF 03
    add bl, bh                               ; 00 FB
    db 0FFh                           ; FF
    cli                                      ; FA
    inc word [si]                            ; FF 04
    add bl, bh                               ; 00 FB
    inc word [di]                            ; FF 05
    add ah, cl                               ; 00 CC
    add ax, 0x64c                            ; 05 4C 06
    db 0ACh                           ; lodsb al, byte [si]
    push es                                  ; 06
    cld                                      ; FC
    push es                                  ; 06
    dec sp                                   ; 4C
    pop es                                   ; 07
    pushf                                    ; 9C
    pop es                                   ; 07
    mov ax, 0x2805                           ; B8 05 28
    push es                                  ; 06
    db 098h                           ; cwde
    push es                                  ; 06
    db 0E8h, 006h, 038h               ; call 0x3fcb
    pop es                                   ; 07
    mov byte [bx], al                        ; 88 07
    db 0A4h                           ; movsb byte es:[di], byte [si]
    add ax, 0x604                            ; 05 04 06
    test byte [0x6d4], al                    ; 84 06 D4 06
    and al, 7                                ; 24 07
    db 074h, 007h                     ; je 0x7db
    nop                                      ; 90
    add ax, 0x5e0                            ; 05 E0 05
    db 070h, 006h                     ; jo 0x7e0
    rol byte [0x710], 0x60                   ; C0 06 10 07 60
    pop es                                   ; 07
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    imul si, word fs:[bp + di + 0x70], 0x616c ; 64 69 73 70 6C 61
    db 079h, 000h                     ; jns 0x7ec
    push ax                                  ; 50
    popaw                                    ; 61
    db 074h, 074h                     ; je 0x864
    db 065h, 072h, 06Eh               ; jb 0x861
    and byte [di + 0x64], al                 ; 20 45 64
    db 069h, 074h, 000h, 000h, 02Ah   ; imul si, word [si], 0x2a00
    db 02Eh, 04Dh                     ; dec bp
    push bx                                  ; 53
    push ax                                  ; 50
    add byte [si + 0x7e], bl                 ; 00 5C 7E
    dec bp                                   ; 4D
    push bx                                  ; 53
    push ax                                  ; 50
    add byte [0x4d54], ch                    ; 00 2E 54 4D
    push ax                                  ; 50
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    popaw                                    ; 61
    imul bp, word [bp + 0x74], 0x4300        ; 69 6E 74 00 43
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 076h, 061h                     ; jbe 0x878
    db 073h, 000h                     ; jae 0x819
    add byte [bx + si + 0x61], dl            ; 00 50 61
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 074h, 074h               ; je 0x894
    add byte gs:[bx + si + 0x61], dl         ; 65 00 50 61
    db 074h, 045h                     ; je 0x86b
    db 064h, 069h, 074h, 000h, 05Ah, 06Fh ; imul si, word fs:[si], 0x6f5a
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    dec di                                   ; 4F
    db 075h, 074h                     ; jne 0x8a5
    add byte [bp + si + 0x6f], bl            ; 00 5A 6F
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    dec cx                                   ; 49
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    pop sp                                   ; 5C
    sub ch, byte [0x534d]                    ; 2A 2E 4D 53
    push ax                                  ; 50
    add byte [bx + si], al                   ; 00 00
    inc si                                   ; 46
    imul bp, word [si + 0x65], 0x704f        ; 69 6C 65 4F 70
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    popaw                                    ; 61
    imul bp, word [bp + 0x74], 0x6f4d        ; 69 6E 74 4D 6F
    db 064h, 075h, 06Ch               ; jne 0x8c4
    add byte gs:[bp + 0x69], al              ; 65 00 46 69
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 053h                     ; push bx
    popaw                                    ; 61
    db 076h, 065h                     ; jbe 0x8c7
    inc cx                                   ; 41
    db 073h, 000h                     ; jae 0x865
    db 02Eh, 043h                     ; inc bx
    push dx                                  ; 52
    inc sp                                   ; 44
    add byte [0x534d], ch                    ; 00 2E 4D 53
    push ax                                  ; 50
    add byte [di + 0x53], cl                 ; 00 4D 53
    push ax                                  ; 50
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si + 0x75], al            ; 00 42 75
    db 074h, 074h                     ; je 0x8f4
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    add byte [bp + si + 0x75], al            ; 00 42 75
    db 074h, 074h                     ; je 0x8fb
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 000h, 057h, 000h               ; add byte [bx], dl
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 081h, 081h, 081h, 001h, 001h, 000h ; add word [bx + di + 0x181], 1
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0E0h, 006h                     ; loopne 0x906
    clc                                      ; F8
    push es                                  ; 06
    add byte [bx], al                        ; 00 07
    dec sp                                   ; 4C
    pop es                                   ; 07