; FRANCE/seg3.asm
; Semantic data - verified byte-exact
BITS 16

    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    dec byte [bx + si]                       ; FE 08
    add byte [bp + si], cl                   ; 00 0A
    add bh, bh                               ; 00 FF
    dec word [bp + si]                       ; FF 0A
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
    push cs                                  ; 0E
    db 00Fh                           ; 0F
    sbb al, 0x1d                             ; 1C 1D
    sub al, byte [bx + si]                   ; 2A 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    lgdt [bx + si + 0x1e]                    ; 0F 01 50 1E
    db 033h, 0C0h                     ; xor ax, ax
    mov ds, ax                               ; 8E D8
    in al, 0x60                              ; E4 60
    cmp al, 0xf0                             ; 3C F0
    db 073h, 060h                     ; jae 0x9b
    test al, 0x80                            ; A8 80
    db 075h, 063h                     ; jne 0xa2
    test byte [0x418], 8                     ; F6 06 18 04 08
    db 075h, 055h                     ; jne 0x9b
    cmp byte [0x449], 4                      ; 80 3E 49 04 04
    db 072h, 04Eh                     ; jb 0x9b
    mov ah, byte [0x417]                     ; 8A 26 17 04
    cmp al, 0x45                             ; 3C 45
    db 074h, 004h                     ; je 0x59
    cmp al, 0x3a                             ; 3C 3A
    db 075h, 005h                     ; jne 0x5e
    test ah, 4                               ; F6 C4 04
    db 075h, 03Dh                     ; jne 0x9b
    cmp al, 0x53                             ; 3C 53
    db 074h, 02Eh                     ; je 0x90
    cmp al, 0x46                             ; 3C 46
    db 074h, 02Ah                     ; je 0x90
    cmp al, 0x37                             ; 3C 37
    db 075h, 038h                     ; jne 0xa2
    cmp byte cs:[0x20], 0                    ; 2E 80 3E 20 00 00
    db 075h, 007h                     ; jne 0x79
    test ah, 3                               ; F6 C4 03
    db 075h, 024h                     ; jne 0x9b
    db 0EBh, 017h                     ; jmp 0x90
    cmp word cs:[0x2d], 0x208                ; 2E 81 3E 2D 00 08 02
    db 075h, 00Eh                     ; jne 0x90
    or byte [0x417], 2                       ; 80 0E 17 04 02
    mov word cs:[0x2d], 0x10f                ; 2E C7 06 2D 00 0F 01
    db 0EBh, 00Bh                     ; jmp 0x9b
    mov ah, byte [0x417]                     ; 8A 26 17 04
    not ah                                   ; F6 D4
    test ah, 0xc                             ; F6 C4 0C
    db 075h, 007h                     ; jne 0xa2
    pop ds                                   ; 1F
    pop ax                                   ; 58
    db 02Eh, 0FFh, 02Eh, 00Ch, 000h   ; ljmp cs:[0xc]
    push ax                                  ; 50
    in al, 0x61                              ; E4 61
    db 08Ah, 0E0h                     ; mov ah, al
    or al, 0x80                              ; 0C 80
    out 0x61, al                             ; E6 61
    xchg al, ah                              ; 86 E0
    out 0x61, al                             ; E6 61
    mov al, 0x20                             ; B0 20
    out 0x20, al                             ; E6 20
    pop ax                                   ; 58
    mov ah, 0x80                             ; B4 80
    db 022h, 0E0h                     ; and ah, al
    db 032h, 0C4h                     ; xor al, ah
    cmp al, 0x54                             ; 3C 54
    db 075h, 02Fh                     ; jne 0xed
    cmp byte cs:[0x20], 0                    ; 2E 80 3E 20 00 00
    db 074h, 009h                     ; je 0xcf
    test byte [0x417], 4                     ; F6 06 17 04 04
    mov al, 0x37                             ; B0 37
    db 074h, 01Eh                     ; je 0xed
    db 00Ah, 0E4h                     ; or ah, ah
    db 079h, 039h                     ; jns 0x10c
    mov ax, word [0xa]                       ; A1 0A 00
    mov word cs:[0x1e], ax                   ; 2E A3 1E 00
    cmp ax, 0xf000                           ; 3D 00 F0
    db 074h, 02Dh                     ; je 0x10c
    mov ax, word [8]                         ; A1 08 00
    mov word cs:[0x1c], ax                   ; 2E A3 1C 00
    pop ds                                   ; 1F
    pop ax                                   ; 58
    db 02Eh, 0FFh, 02Eh, 01Ch, 000h   ; ljmp cs:[0x1c]
    cmp byte cs:[0x2c], 0                    ; 2E 80 3E 2C 00 00
    db 074h, 002h                     ; je 0xf7
    db 0EBh, 015h                     ; jmp 0x10c
    inc byte cs:[0x2c]                       ; 2E FE 06 2C 00
    sti                                      ; FB
    push bx                                  ; 53
    db 032h, 0FFh                     ; xor bh, bh
    db 02Eh, 0FFh, 016h, 02Dh, 000h   ; call word cs:[0x2d]
    pop bx                                   ; 5B
    mov byte cs:[0x2c], 0                    ; 2E C6 06 2C 00 00
    pop ds                                   ; 1F
    pop ax                                   ; 58
    iret                                     ; CF
    db 0E8h, 05Fh, 001h               ; call 0x271
    db 08Ah, 0D8h                     ; mov bl, al
    cmp byte cs:[0x20], 0                    ; 2E 80 3E 20 00 00
    db 074h, 069h                     ; je 0x185
    cmp al, 0x60                             ; 3C 60
    db 075h, 00Ah                     ; jne 0x12a
    mov word cs:[0x2d], 0x208                ; 2E C7 06 2D 00 08 02
    db 0E9h, 0DDh, 000h               ; jmp 0x207
    cmp al, 0x3a                             ; 3C 3A
    db 075h, 009h                     ; jne 0x137
    mov byte cs:[0x21], al                   ; 2E A2 21 00
    mov al, 0xff                             ; B0 FF
    db 0E9h, 0CBh, 000h               ; jmp 0x202
    cmp al, 0x2a                             ; 3C 2A
    db 074h, 004h                     ; je 0x13f
    cmp al, 0x36                             ; 3C 36
    db 075h, 00Ch                     ; jne 0x14b
    db 00Ah, 0E4h                     ; or ah, ah
    db 078h, 042h                     ; js 0x185
    mov byte cs:[0x21], 0                    ; 2E C6 06 21 00 00
    db 0EBh, 03Ah                     ; jmp 0x185
    cmp byte cs:[0x21], 0                    ; 2E 80 3E 21 00 00
    db 074h, 032h                     ; je 0x185
    mov byte cs:[0x22], 1                    ; 2E C6 06 22 00 01
    cmp al, 2                                ; 3C 02
    db 072h, 028h                     ; jb 0x185
    cmp al, 0x35                             ; 3C 35
    db 077h, 024h                     ; ja 0x185
    push bx                                  ; 53
    push ax                                  ; 50
    mov bx, 0x22                             ; BB 22 00
    inc bx                                   ; 43
    mov ah, byte cs:[bx]                     ; 2E 8A 27
    db 00Ah, 0E4h                     ; or ah, ah
    db 074h, 006h                     ; je 0x174
    db 03Ah, 0E0h                     ; cmp ah, al
    db 075h, 0F4h                     ; jne 0x166
    db 00Ah, 0E4h                     ; or ah, ah
    mov byte cs:[0x22], ah                   ; 2E 88 26 22 00
    pop ax                                   ; 58
    pop bx                                   ; 5B
    db 075h, 008h                     ; jne 0x185
    mov al, byte cs:[bx + 0x3ea]             ; 2E 8A 87 EA 03
    db 0EBh, 066h                     ; jmp 0x1ea
    nop                                      ; 90
    test byte [0x417], 4                     ; F6 06 17 04 04
    db 074h, 019h                     ; je 0x1a5
    cmp al, 0x46                             ; 3C 46
    db 075h, 015h                     ; jne 0x1a5
    mov byte cs:[0x2b], 0                    ; 2E C6 06 2B 00 00
    db 0E8h, 0C1h, 000h               ; call 0x25a
    mov al, 3                                ; B0 03
    cmp byte cs:[0x2b], 0                    ; 2E 80 3E 2B 00 00
    db 075h, 05Fh                     ; jne 0x202
    db 0EBh, 062h                     ; jmp 0x207
    mov al, 0xff                             ; B0 FF
    cmp bl, 0x59                             ; 80 FB 59
    db 073h, 056h                     ; jae 0x202
    mov al, byte cs:[bx + 0x3ea]             ; 2E 8A 87 EA 03
    cmp bl, 0x47                             ; 80 FB 47
    db 072h, 04Ch                     ; jb 0x202
    cmp bl, 0x53                             ; 80 FB 53
    db 077h, 047h                     ; ja 0x202
    test byte [0x417], 0x20                  ; F6 06 17 04 20
    db 074h, 040h                     ; je 0x202
    test byte [0x417], 3                     ; F6 06 17 04 03
    db 075h, 007h                     ; jne 0x1d0
    mov al, byte cs:[bx + 0x3fc]             ; 2E 8A 87 FC 03
    db 0EBh, 032h                     ; jmp 0x202
    push ax                                  ; 50
    push bx                                  ; 53
    mov ax, 0x8010                           ; B8 10 80
    mov bl, 0x36                             ; B3 36
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    mov ax, 0x10                             ; B8 10 00
    mov bl, 0x36                             ; B3 36
    db 0EBh, 018h                     ; jmp 0x202
    push ax                                  ; 50
    push bx                                  ; 53
    mov ax, 0x10                             ; B8 10 00
    mov bl, 0x36                             ; B3 36
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    mov ax, 0x8010                           ; B8 10 80
    mov bl, 0x36                             ; B3 36
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    ret                                      ; C3
    mov word cs:[0x2d], 0x10f                ; 2E C7 06 2D 00 0F 01
    cmp al, 0x2a                             ; 3C 2A
    db 074h, 046h                     ; je 0x259
    cmp al, 0x36                             ; 3C 36
    db 074h, 042h                     ; je 0x259
    cmp al, 0x37                             ; 3C 37
    db 075h, 007h                     ; jne 0x222
    xor byte [0x417], 2                      ; 80 36 17 04 02
    db 0EBh, 037h                     ; jmp 0x259
    db 0E8h, 04Ch, 000h               ; call 0x271
    db 08Ah, 0D8h                     ; mov bl, al
    cmp al, 0x35                             ; 3C 35
    db 075h, 004h                     ; jne 0x22f
    mov al, 0x6f                             ; B0 6F
    db 0EBh, 025h                     ; jmp 0x254
    cmp al, 0x46                             ; 3C 46
    db 075h, 015h                     ; jne 0x248
    mov byte cs:[0x2b], 0                    ; 2E C6 06 2B 00 00
    db 0E8h, 01Eh, 000h               ; call 0x25a
    mov al, 3                                ; B0 03
    cmp byte cs:[0x2b], 0                    ; 2E 80 3E 2B 00 00
    db 075h, 00Eh                     ; jne 0x254
    db 0EBh, 011h                     ; jmp 0x259
    mov al, 0xff                             ; B0 FF
    cmp bl, 0x59                             ; 80 FB 59
    db 073h, 005h                     ; jae 0x254
    mov al, byte cs:[bx + 0x3ea]             ; 2E 8A 87 EA 03
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    ret                                      ; C3
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    push es                                  ; 06
    push bp                                  ; 55
    int 0x1b                                 ; CD 1B
    pop bp                                   ; 5D
    pop es                                   ; 07
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    ret                                      ; C3
    inc byte cs:[0x2b]                       ; 2E FE 06 2B 00
    iret                                     ; CF
    mov bl, 2                                ; B3 02
    cmp al, 0x2a                             ; 3C 2A
    db 074h, 012h                     ; je 0x289
    mov bl, 1                                ; B3 01
    cmp al, 0x36                             ; 3C 36
    db 074h, 00Ch                     ; je 0x289
    mov bl, 4                                ; B3 04
    cmp al, 0x1d                             ; 3C 1D
    db 074h, 006h                     ; je 0x289
    mov bl, 8                                ; B3 08
    cmp al, 0x38                             ; 3C 38
    db 075h, 00Fh                     ; jne 0x298
    db 00Ah, 0E4h                     ; or ah, ah
    db 079h, 007h                     ; jns 0x294
    not bl                                   ; F6 D3
    and byte [0x417], bl                     ; 20 1E 17 04
    ret                                      ; C3
    or byte [0x417], bl                      ; 08 1E 17 04
    ret                                      ; C3
    add byte [bp + di], al                   ; 00 03
    add ax, word [bp + di]                   ; 03 03
    add cx, word [bx + si]                   ; 03 08
    or byte [bx + si], cl                    ; 08 08
    db 07Fh, 009h                     ; jg 0x2ac
    or word [bx + di], cx                    ; 09 09
    dec word [di]                            ; FF 0D
    or ax, 0xa0d                             ; 0D 0D 0A
    sbb bx, word [bp + di]                   ; 1B 1B
    sbb bx, word [bp + di]                   ; 1B 1B
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    sub cx, word [di]                        ; 2B 0D
    or ax, 0x310a                            ; 0D 0A 31
    db 026h, 031h, 0FFh               ; xor di, di
    xor sp, word [bp + si]                   ; 33 22
    db 033h, 0FFh                     ; xor di, di
    xor al, 0x27                             ; 34 27
    xor al, 0xff                             ; 34 FF
    aaa                                      ; 37
    db 0E8h, 037h, 0FFh               ; call 0x1fd
    inc cx                                   ; 41
    popaw                                    ; 61
    inc cx                                   ; 41
    add word [bp + si + 0x62], ax            ; 01 42 62
    inc dx                                   ; 42
    add al, byte [bp + di + 0x63]            ; 02 43 63
    inc bx                                   ; 43
    add ax, word [si + 0x64]                 ; 03 44 64
    inc sp                                   ; 44
    add al, 0x45                             ; 04 45
    db 065h, 045h                     ; inc bp
    add ax, 0x6646                           ; 05 46 66
    inc si                                   ; 46
    push es                                  ; 06
    inc di                                   ; 47
    db 067h, 047h                     ; inc di
    pop es                                   ; 07
    dec ax                                   ; 48
    push 0x848                               ; 68 48 08
    dec cx                                   ; 49
    imul cx, word [bx + di + 9], 0x6a4a      ; 69 49 09 4A 6A
    dec dx                                   ; 4A
    or cl, byte [bp + di + 0x6b]             ; 0A 4B 6B
    dec bx                                   ; 4B
    or cx, word [si + 0x6c]                  ; 0B 4C 6C
    dec sp                                   ; 4C
    or al, 0x4d                              ; 0C 4D
    db 06Dh                           ; insw word es:[di], dx
    dec bp                                   ; 4D
    or ax, 0x6e4e                            ; 0D 4E 6E
    dec si                                   ; 4E
    push cs                                  ; 0E
    dec di                                   ; 4F
    db 06Fh                           ; outsw dx, word [si]
    dec di                                   ; 4F
    db 00Fh                           ; 0F
    push ax                                  ; 50
    db 070h, 050h                     ; jo 0x355
    adc byte [bx + di + 0x71], dl            ; 10 51 71
    push cx                                  ; 51
    adc word [bp + si + 0x72], dx            ; 11 52 72
    push dx                                  ; 52
    adc dl, byte [bp + di + 0x73]            ; 12 53 73
    push bx                                  ; 53
    adc dx, word [si + 0x74]                 ; 13 54 74
    push sp                                  ; 54
    adc al, 0x55                             ; 14 55
    db 075h, 055h                     ; jne 0x36e
    adc ax, 0x7656                           ; 15 56 76
    push si                                  ; 56
    push ss                                  ; 16
    push di                                  ; 57
    db 077h, 057h                     ; ja 0x378
    pop ss                                   ; 17
    pop ax                                   ; 58
    db 078h, 058h                     ; js 0x37d
    sbb byte [bx + di + 0x79], bl            ; 18 59 79
    pop cx                                   ; 59
    sbb word [bp + si + 0x7a], bx            ; 19 5A 7A
    pop dx                                   ; 5A
    sbb ah, byte [bx + si + 0x30]            ; 1A 60 30
    xor bh, bh                               ; 30 FF
    popaw                                    ; 61
    xor word [bx + di], si                   ; 31 31
    jmp word [bp + si + 0x32]                ; FF 62 32
    db 032h, 0FFh                     ; xor bh, bh
    arpl word [bp + di], si                  ; 63 33
    db 033h, 0FFh                     ; xor di, di
    db 064h, 034h, 034h               ; xor al, 0x34
    jmp word [di + 0x35]                     ; FF 65 35
    xor ax, 0x66ff                           ; 35 FF 66
    db 036h, 036h, 0FFh, 067h, 037h   ; jmp word ss:[bx + 0x37]
    aaa                                      ; 37
    db 0FFh, 068h, 038h               ; ljmp [bx + si + 0x38]
    cmp bh, bh                               ; 38 FF
    imul di, word [bx + di], 0xff39          ; 69 39 39 FF
    db 06Eh                           ; outsb dx, byte [si]
    db 02Eh                           ; 2E
    db 02Eh                           ; 2E
    db 0FFh                           ; FF
    mov bx, 0x2b3d                           ; BB 3D 2B
    db 0FFh                           ; FF
    mov sp, 0x3f2c                           ; BC 2C 3F
    db 0FFh                           ; FF
    mov si, 0x2e3b                           ; BE 3B 2E
    db 0FFh                           ; FF
    mov di, 0x2f3a                           ; BF 3A 2F
    db 0FFh                           ; FF
    db 0DCh, 0F9h                     ; fdiv st(1), st(0)
    and ax, 0xdfff                           ; 25 FF DF
    mov dl, 0xb2                             ; B2 B2
    db 0FFh, 06Ah, 02Ah               ; ljmp [bp + si + 0x2a]
    db 02Ah, 0FFh                     ; sub bh, bh
    db 06Dh                           ; insw word es:[di], dx
    sub ax, 0xff2d                           ; 2D 2D FF
    imul bp, word [bp + di], 0x2b            ; 6B 2B 2B
    db 0FFh, 06Fh, 02Fh               ; ljmp [bx + 0x2f]
    das                                      ; 2F
    push word [bx + si]                      ; FF 30
    db 0E0h, 030h                     ; loopne 0x3b5
    add byte [bp + si], dh                   ; 00 32
    db 0E9h, 032h, 0FFh               ; jmp 0x2bc
    xor ax, 0x3528                           ; 35 28 35
    sbb si, word [0x362d]                    ; 1B 36 2D 36
    pop ds                                   ; 1F
    cmp byte [bx + 0x38], bl                 ; 38 5F 38
    sbb al, 0x39                             ; 1C 39
    out 0x39, ax                             ; E7 39
    push ds                                  ; 1E
    mov bp, 0xa721                           ; BD 21 A7
    db 0FFh                           ; FF
    mov dx, 0xa324                           ; BA 24 A3
    db 0FFh, 0C0h                     ; inc ax
    sub dh, byte [di - 0x2401]               ; 2A B5 FF DB
    sub word [bx + si - 0x22e3], si          ; 29 B0 1D DD
    cmp al, 0x3e                             ; 3C 3E
    db 0FFh                           ; FF
    ficomp word [bp - 0x58]                  ; DE 5E A8
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    push word [bx + si]                      ; FF 30
    xor word [bp + si], si                   ; 31 32
    xor si, word [si]                        ; 33 34
    xor ax, 0x3736                           ; 35 36 37
    cmp byte [bx + di], bh                   ; 38 39
    db 0DBh, 0BDh, 0FFh, 0FFh         ; fstp xword [di - 1]
    sbb si, word [bx + di]                   ; 1B 31
    xor dh, byte [bp + di]                   ; 32 33
    xor al, 0x35                             ; 34 35
    db 036h, 037h                     ; aaa
    cmp byte [bx + di], bh                   ; 38 39
    xor bl, bl                               ; 30 DB
    mov bx, 0x908                            ; BB 08 09
    inc cx                                   ; 41
    pop dx                                   ; 5A
    inc bp                                   ; 45
    push dx                                  ; 52
    push sp                                  ; 54
    pop cx                                   ; 59
    push bp                                  ; 55
    dec cx                                   ; 49
    dec di                                   ; 4F
    push ax                                  ; 50
    fidivr word [bp + si + 0x110d]           ; DE BA 0D 11
    push cx                                  ; 51
    push bx                                  ; 53
    inc sp                                   ; 44
    inc si                                   ; 46
    inc di                                   ; 47
    dec ax                                   ; 48
    dec dx                                   ; 4A
    dec bx                                   ; 4B
    dec sp                                   ; 4C
    dec bp                                   ; 4D
    db 0DCh                           ; DC
    fist word [bx + si]                      ; DF 10
    rcl byte [bx + 0x58], 0x43               ; C0 57 58 43
    push si                                  ; 56
    inc dx                                   ; 42
    dec si                                   ; 4E
    mov sp, 0xbfbe                           ; BC BE BF
    mov bp, 0x6a10                           ; BD 10 6A
    adc ah, byte [bx + si]                   ; 12 20
    adc al, 0x70                             ; 14 70
    db 071h, 072h                     ; jno 0x49a
    db 073h, 074h                     ; jae 0x49e
    db 075h, 076h                     ; jne 0x4a2
    db 077h, 078h                     ; ja 0x4a6
    db 079h, 090h                     ; jns 0x3c0
    xchg cx, ax                              ; 91
    and al, 0x26                             ; 24 26
    and word [di + 0x25], bp                 ; 21 6D 25
    or al, 0x27                              ; 0C 27
    imul sp, word [bp + di], 0x28            ; 6B 23 28
    and ch, byte [di]                        ; 22 2D
    db 02Eh                           ; 2E
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    fnstsw word [bp + si + 0x7b]             ; DD 7A 7B
    db 067h, 068h, 069h, 06Dh         ; push 0x6d69
    db 064h, 065h, 066h, 06Bh, 061h, 062h, 063h ; imul esp, dword gs:[bx + di + 0x62], 0x63
    pushaw                                   ; 60
    db 06Eh                           ; outsb dx, byte [si]
    test al, 0x5e                            ; A8 5E
    inc word [bx + si]                       ; FF 00
    popaw                                    ; 61
    db 0E0h, 0E1h                     ; loopne 0x438
    db 0E2h, 0E4h                     ; loop 0x43d
    db 065h, 0E8h, 0E9h, 0EAh         ; call 0xffffef46
    db 0EBh, 069h                     ; jmp 0x4c8
    in al, dx                                ; EC
    in ax, dx                                ; ED
    out dx, al                               ; EE
    out dx, ax                               ; EF
    db 06Fh                           ; outsw dx, word [si]
    db 0F2h, 0F3h, 0F4h               ; hlt
    div byte [di - 7]                        ; F6 75 F9
    cli                                      ; FA
    sti                                      ; FB
    cld                                      ; FC
    db 079h, 0FFh                     ; jns 0x46e
    std                                      ; FD
    db 0FFh                           ; FF
    inc word [bx + di - 0x40]                ; FF 41 C0
    rol dx, 0xc4                             ; C1 C2 C4
    inc bp                                   ; 45
    enter -0x3537, -0x35                     ; C8 C9 CA CB
    dec cx                                   ; 49
    int3                                     ; CC
    int 0xce                                 ; CD CE
    iret                                     ; CF
    dec di                                   ; 4F
    rcl bl, cl                               ; D2 D3
    aam 0xd6                                 ; D4 D6
    push bp                                  ; 55
    db 0D9h, 0DAh                     ; fstpnce st(2), st(0)
    db 0DBh, 0DCh                     ; fcmovnu st(0), st(4)
    pop cx                                   ; 59
    db 0FFh                           ; FF
    db 0DDh                           ; DD
    db 0FFh                           ; FF
    jmp word [bx + si]                       ; FF 20
    pushaw                                   ; 60
    mov ah, 0x5e                             ; B4 5E
    test al, 0xff                            ; A8 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx]                            ; FF 07
    or byte [bx + di], cl                    ; 08 09
    inc word [si]                            ; FF 04
    add ax, 0xff06                           ; 05 06 FF
    add word [bp + si], ax                   ; 01 02
    db 003h                           ; 03