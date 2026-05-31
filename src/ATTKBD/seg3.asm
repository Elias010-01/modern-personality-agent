; ATTKBD/seg3.asm
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
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x1e], dl            ; 00 50 1E
    db 033h, 0C0h                     ; xor ax, ax
    mov ds, ax                               ; 8E D8
    in al, 0x60                              ; E4 60
    cmp al, 0xf0                             ; 3C F0
    db 073h, 03Fh                     ; jae 0x71
    test al, 0x80                            ; A8 80
    db 075h, 042h                     ; jne 0x78
    test byte [0x418], 8                     ; F6 06 18 04 08
    db 075h, 034h                     ; jne 0x71
    cmp byte [0x449], 4                      ; 80 3E 49 04 04
    db 072h, 02Dh                     ; jb 0x71
    mov ah, byte [0x417]                     ; 8A 26 17 04
    cmp al, 0x45                             ; 3C 45
    db 074h, 004h                     ; je 0x50
    cmp al, 0x3a                             ; 3C 3A
    db 075h, 005h                     ; jne 0x55
    test ah, 4                               ; F6 C4 04
    db 075h, 01Ch                     ; jne 0x71
    cmp al, 0x53                             ; 3C 53
    db 074h, 00Dh                     ; je 0x66
    cmp al, 0x46                             ; 3C 46
    db 074h, 009h                     ; je 0x66
    cmp al, 0x37                             ; 3C 37
    db 075h, 017h                     ; jne 0x78
    test ah, 3                               ; F6 C4 03
    db 075h, 00Bh                     ; jne 0x71
    mov ah, byte [0x417]                     ; 8A 26 17 04
    not ah                                   ; F6 D4
    test ah, 0xc                             ; F6 C4 0C
    db 075h, 007h                     ; jne 0x78
    pop ds                                   ; 1F
    pop ax                                   ; 58
    db 02Eh, 0FFh, 02Eh, 00Ch, 000h   ; ljmp cs:[0xc]
    push bx                                  ; 53
    push ax                                  ; 50
    in al, 0x61                              ; E4 61
    db 08Ah, 0E0h                     ; mov ah, al
    or al, 0x80                              ; 0C 80
    out 0x61, al                             ; E6 61
    xchg al, ah                              ; 86 E0
    out 0x61, al                             ; E6 61
    pop ax                                   ; 58
    mov ah, 0x80                             ; B4 80
    db 022h, 0E0h                     ; and ah, al
    db 032h, 0C4h                     ; xor al, ah
    push ax                                  ; 50
    mov al, 0x20                             ; B0 20
    out 0x20, al                             ; E6 20
    pop ax                                   ; 58
    db 0E8h, 0F8h, 000h               ; call 0x18e
    cmp al, 0x54                             ; 3C 54
    db 075h, 022h                     ; jne 0xbc
    db 00Ah, 0E4h                     ; or ah, ah
    db 078h, 003h                     ; js 0xa1
    db 0E9h, 0CCh, 000h               ; jmp 0x16d
    mov ax, word [0xa]                       ; A1 0A 00
    mov word cs:[0x1e], ax                   ; 2E A3 1E 00
    cmp ax, 0xf000                           ; 3D 00 F0
    db 074h, 0F1h                     ; je 0x9e
    mov ax, word [8]                         ; A1 08 00
    mov word cs:[0x1c], ax                   ; 2E A3 1C 00
    pop bx                                   ; 5B
    pop ds                                   ; 1F
    pop ax                                   ; 58
    db 02Eh, 0FFh, 02Eh, 01Ch, 000h   ; ljmp cs:[0x1c]
    cmp al, 0x60                             ; 3C 60
    db 075h, 007h                     ; jne 0xc7
    mov byte cs:[0x25], al                   ; 2E A2 25 00
    db 0E9h, 0ACh, 000h               ; jmp 0x173
    cmp byte cs:[0x24], 0                    ; 2E 80 3E 24 00 00
    db 074h, 003h                     ; je 0xd2
    db 0E9h, 0A1h, 000h               ; jmp 0x173
    inc byte cs:[0x24]                       ; 2E FE 06 24 00
    sti                                      ; FB
    db 08Bh, 0D8h                     ; mov bx, ax
    cmp byte cs:[0x20], 0                    ; 2E 80 3E 20 00 00
    db 074h, 017h                     ; je 0xf9
    cmp byte cs:[0x25], 0                    ; 2E 80 3E 25 00 00
    db 074h, 00Fh                     ; je 0xf9
    mov byte cs:[0x25], 0                    ; 2E C6 06 25 00 00
    cmp al, 0x35                             ; 3C 35
    db 075h, 005h                     ; jne 0xf9
    mov al, 0x6f                             ; B0 6F
    db 0EBh, 070h                     ; jmp 0x168
    nop                                      ; 90
    test byte [0x417], 4                     ; F6 06 17 04 04
    db 074h, 019h                     ; je 0x119
    cmp al, 0x46                             ; 3C 46
    db 075h, 015h                     ; jne 0x119
    mov byte cs:[0x23], 0                    ; 2E C6 06 23 00 00
    db 0E8h, 06Ah, 000h               ; call 0x177
    mov al, 3                                ; B0 03
    cmp byte cs:[0x23], 0                    ; 2E 80 3E 23 00 00
    db 075h, 051h                     ; jne 0x168
    db 0EBh, 054h                     ; jmp 0x16d
    db 033h, 0DBh                     ; xor bx, bx
    db 08Ah, 0D8h                     ; mov bl, al
    mov al, 0xff                             ; B0 FF
    cmp bl, 0x59                             ; 80 FB 59
    db 073h, 044h                     ; jae 0x168
    mov al, byte cs:[bx + 0x2ce]             ; 2E 8A 87 CE 02
    db 032h, 0FFh                     ; xor bh, bh
    cmp bl, 0x47                             ; 80 FB 47
    db 072h, 038h                     ; jb 0x168
    cmp bl, 0x53                             ; 80 FB 53
    db 077h, 033h                     ; ja 0x168
    test byte [0x417], 0x20                  ; F6 06 17 04 20
    db 074h, 02Ch                     ; je 0x168
    test byte [0x417], 3                     ; F6 06 17 04 03
    db 075h, 00Dh                     ; jne 0x150
    db 08Ah, 0C7h                     ; mov al, bh
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 01Fh                     ; jne 0x168
    mov al, byte cs:[bx + 0x2e0]             ; 2E 8A 87 E0 02
    db 0EBh, 018h                     ; jmp 0x168
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
    db 02Eh, 0FFh, 01Eh, 018h, 000h   ; lcall cs:[0x18]
    mov byte cs:[0x24], 0                    ; 2E C6 06 24 00 00
    pop bx                                   ; 5B
    pop ds                                   ; 1F
    pop ax                                   ; 58
    iret                                     ; CF
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
    inc byte cs:[0x23]                       ; 2E FE 06 23 00
    iret                                     ; CF
    mov bl, 2                                ; B3 02
    cmp al, 0x2a                             ; 3C 2A
    db 074h, 012h                     ; je 0x1a6
    mov bl, 1                                ; B3 01
    cmp al, 0x36                             ; 3C 36
    db 074h, 00Ch                     ; je 0x1a6
    mov bl, 4                                ; B3 04
    cmp al, 0x1d                             ; 3C 1D
    db 074h, 006h                     ; je 0x1a6
    mov bl, 8                                ; B3 08
    cmp al, 0x38                             ; 3C 38
    db 075h, 00Fh                     ; jne 0x1b5
    db 00Ah, 0E4h                     ; or ah, ah
    db 079h, 007h                     ; jns 0x1b1
    not bl                                   ; F6 D3
    and byte [0x417], bl                     ; 20 1E 17 04
    ret                                      ; C3
    or byte [0x417], bl                      ; 08 1E 17 04
    ret                                      ; C3
    add ax, word [bp + di]                   ; 03 03
    add ax, word [bp + di]                   ; 03 03
    or byte [bx + si], cl                    ; 08 08
    or byte [bx + 9], bh                     ; 08 7F 09
    or word [bx + di], cx                    ; 09 09
    dec word [di]                            ; FF 0D
    or ax, 0xa0d                             ; 0D 0D 0A
    sbb bx, word [bp + di]                   ; 1B 1B
    sbb bx, word [bp + di]                   ; 1B 1B
    and byte [bx + si], ah                   ; 20 20
    and byte [bx + si], ah                   ; 20 20
    sub cx, word [di]                        ; 2B 0D
    or ax, 0x300a                            ; 0D 0A 30
    xor byte [bx + di], ch                   ; 30 29
    push word [bx + di]                      ; FF 31
    xor word [bx + di], sp                   ; 31 21
    push word [bp + si]                      ; FF 32
    xor al, byte [bx + si - 0x80]            ; 32 40 80
    xor si, word [bp + di]                   ; 33 33
    db 023h, 0FFh                     ; and di, di
    xor al, 0x34                             ; 34 34
    and al, 0xff                             ; 24 FF
    xor ax, 0x2535                           ; 35 35 25
    push word [0x5e36]                       ; FF 36 36 5E
    sahf                                     ; 9E
    aaa                                      ; 37
    aaa                                      ; 37
    db 026h                           ; 26
    db 0FFh                           ; FF
    cmp byte [bx + si], bh                   ; 38 38
    db 02Ah, 0FFh                     ; sub bh, bh
    cmp word [bx + di], di                   ; 39 39
    sub bh, bh                               ; 28 FF
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
    db 070h, 050h                     ; jo 0x289
    adc byte [bx + di + 0x71], dl            ; 10 51 71
    push cx                                  ; 51
    adc word [bp + si + 0x72], dx            ; 11 52 72
    push dx                                  ; 52
    adc dl, byte [bp + di + 0x73]            ; 12 53 73
    push bx                                  ; 53
    adc dx, word [si + 0x74]                 ; 13 54 74
    push sp                                  ; 54
    adc al, 0x55                             ; 14 55
    db 075h, 055h                     ; jne 0x2a2
    adc ax, 0x7656                           ; 15 56 76
    push si                                  ; 56
    push ss                                  ; 16
    push di                                  ; 57
    db 077h, 057h                     ; ja 0x2ac
    pop ss                                   ; 17
    pop ax                                   ; 58
    db 078h, 058h                     ; js 0x2b1
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
    mov sp, 0x3c2c                           ; BC 2C 3C
    db 0FFh                           ; FF
    mov bp, 0x5f2d                           ; BD 2D 5F
    lahf                                     ; 9F
    mov si, 0x3e2e                           ; BE 2E 3E
    db 0FFh                           ; FF
    mov dx, 0x3a3b                           ; BA 3B 3A
    db 0FFh                           ; FF
    mov di, 0x3f2f                           ; BF 2F 3F
    db 0FFh, 0C0h                     ; inc ax
    pushaw                                   ; 60
    db 07Eh, 0FFh                     ; jle 0x2a9
    fistp dword [bp + di + 0x7b]             ; DB 5B 7B
    db 01Bh, 0DCh                     ; sbb bx, sp
    pop sp                                   ; 5C
    db 07Ch, 01Ch                     ; jl 0x2ce
    fstp qword [di + 0x7d]                   ; DD 5D 7D
    sbb ax, 0x27de                           ; 1D DE 27
    db 022h, 0FFh                     ; and bh, bh
    push 0x2a                                ; 6A 2A
    db 02Ah, 0FFh                     ; sub bh, bh
    db 06Dh                           ; insw word es:[di], dx
    sub ax, 0xff2d                           ; 2D 2D FF
    imul bp, word [bp + di], 0x2b            ; 6B 2B 2B
    db 0FFh, 06Fh, 02Fh               ; ljmp [bx + 0x2f]
    das                                      ; 2F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 01Bh                     ; lcall [bp + di]
    xor word [bp + si], si                   ; 31 32
    xor si, word [si]                        ; 33 34
    xor ax, 0x3736                           ; 35 36 37
    cmp byte [bx + di], bh                   ; 38 39
    xor byte [di + 0x8bb], bh                ; 30 BD BB 08
    or word [bx + di + 0x57], dx             ; 09 51 57
    inc bp                                   ; 45
    push dx                                  ; 52
    push sp                                  ; 54
    pop cx                                   ; 59
    push bp                                  ; 55
    dec cx                                   ; 49
    dec di                                   ; 4F
    push ax                                  ; 50
    db 0DBh, 0DDh                     ; fcmovnu st(0), st(5)
    or ax, 0x4111                            ; 0D 11 41
    push bx                                  ; 53
    inc sp                                   ; 44
    inc si                                   ; 46
    inc di                                   ; 47
    dec ax                                   ; 48
    dec dx                                   ; 4A
    dec bx                                   ; 4B
    dec sp                                   ; 4C
    mov dx, 0xc0de                           ; BA DE C0
    adc ah, bl                               ; 10 DC
    pop dx                                   ; 5A
    pop ax                                   ; 58
    inc bx                                   ; 43
    push si                                  ; 56
    inc dx                                   ; 42
    dec si                                   ; 4E
    dec bp                                   ; 4D
    mov sp, 0xbfbe                           ; BC BE BF
    adc byte [bp + si + 0x12], ch            ; 10 6A 12
    and byte [si], dl                        ; 20 14
    db 070h, 071h                     ; jo 0x37c
    db 072h, 073h                     ; jb 0x380
    db 074h, 075h                     ; je 0x384
    db 076h, 077h                     ; jbe 0x388
    db 078h, 079h                     ; js 0x38c
    nop                                      ; 90
    xchg cx, ax                              ; 91
    and al, 0x26                             ; 24 26
    and word [di + 0x25], bp                 ; 21 6D 25
    or al, 0x27                              ; 0C 27
    imul sp, word [bp + di], 0x28            ; 6B 23 28
    and ch, byte [di]                        ; 22 2D
    db 02Eh                           ; 2E
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 07Ah, 07Bh                     ; jp 0x3a2
    db 067h, 068h, 069h, 06Dh         ; push 0x6d69
    db 064h, 065h, 066h, 06Bh, 061h, 062h, 063h ; imul esp, dword gs:[bx + di + 0x62], 0x63
    pushaw                                   ; 60
    db 06Eh                           ; outsb dx, byte [si]
    pop es                                   ; 07
    or byte [bx + di], cl                    ; 08 09
    inc word [si]                            ; FF 04
    add ax, 0xff06                           ; 05 06 FF
    add word [bp + si], ax                   ; 01 02
    db 003h                           ; 03