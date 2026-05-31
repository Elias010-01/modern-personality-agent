; WIN/seg1.asm
; Semantic data - verified byte-exact
BITS 16

    jmp 0x1c1                                ; E9 BE 01
    add byte [di], dh                        ; 00 35
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    dec cx                                   ; 49
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 065h                     ; jae 0x72
    db 072h, 074h                     ; jb 0x83
    and byte [si + 0x4f], al                 ; 20 44 4F
    push bx                                  ; 53
    and al, 0x49                             ; 24 49
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 065h                     ; jae 0x7d
    db 072h, 074h                     ; jb 0x8e
    and byte [bx + di + 0x70], al            ; 20 41 70
    db 070h, 06Ch                     ; jo 0x8b
    imul sp, word [bp + di + 0x61], 0x6974   ; 69 63 61 74 69
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    and al, 0x49                             ; 24 49
    db 06Eh                           ; outsb dx, byte [si]
    db 073h, 065h                     ; jae 0x90
    db 072h, 074h                     ; jb 0xa1
    and byte [bx + 0x69], dl                 ; 20 57 69
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0xa8
    and byte [bp + di + 0x74], dl            ; 20 53 74
    popaw                                    ; 61
    db 072h, 074h                     ; jb 0xaf
    db 075h, 070h                     ; jne 0xad
    and al, 0x20                             ; 24 20
    imul si, word fs:[bp + di + 0x6b], 0x6920 ; 64 69 73 6B 20 69
    db 06Eh                           ; outsb dx, byte [si]
    and byte [si + 0x72], ah                 ; 20 64 72
    imul si, word [bp + 0x65], 0x7820        ; 69 76 65 20 78
    cmp cl, byte [di]                        ; 3A 0D
    or dl, byte [bx + si + 0x72]             ; 0A 50 72
    db 065h, 073h, 073h               ; jae 0xc9
    and byte [bx + di + 0x6e], ah            ; 20 61 6E
    db 079h, 020h                     ; jns 0x7b
    imul sp, word [di + 0x79], 0x20          ; 6B 65 79 20
    db 077h, 068h                     ; ja 0xc9
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    and byte [bp + si + 0x65], dh            ; 20 72 65
    popaw                                    ; 61
    db 064h, 079h, 020h               ; jns 0x8a
    and al, 0xd                              ; 24 0D
    or cl, byte [di]                         ; 0A 0D
    or ah, byte [si]                         ; 0A 24
    push ax                                  ; 50
    db 072h, 06Fh                     ; jb 0xe2
    db 067h, 072h, 061h               ; jb 0xd7
    db 06Dh                           ; insw word es:[di], dx
    and byte [si + 0x6f], dh                 ; 20 74 6F
    db 06Fh                           ; outsw dx, word [si]
    and byte [bp + si + 0x69], ah            ; 20 62 69
    and byte [edi + ebp*2 + 0x20], dh        ; 67 20 74 6F 20
    imul esi, dword [si + 0x20], 0x6d206e69  ; 66 69 74 20 69 6E 20 6D
    db 065h, 06Dh                     ; insw word es:[di], dx
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 079h                     ; jb 0x109
    add byte [bp + 0x6f], cl                 ; 00 4E 6F
    db 074h, 020h                     ; je 0xb5
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 067h                     ; jne 0x101
    push 0x6420                              ; 68 20 64
    imul si, word [bp + di + 0x6b], 0x7320   ; 69 73 6B 20 73
    db 070h, 061h                     ; jo 0x105
    arpl word [di + 0x20], sp                ; 63 65 20
    db 066h, 06Fh                     ; outsd dx, dword [si]
    db 072h, 020h                     ; jb 0xcb
    db 073h, 063h                     ; jae 0x110
    db 072h, 065h                     ; jb 0x114
    db 065h, 06Eh                     ; outsb dx, byte gs:[si]
    and byte [di + 0x78], ah                 ; 20 65 78
    arpl word [bx + si + 0x61], bp           ; 63 68 61
    db 06Eh                           ; outsb dx, byte [si]
    db 067h, 065h, 000h, 043h, 061h   ; add byte gs:[ebx + 0x61], al
    db 06Eh                           ; outsb dx, byte [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 06Fh                           ; outsw dx, word [si]
    db 074h, 020h                     ; je 0xe2
    imul ebp, dword [bp + 0x64], 0x6e695720  ; 66 69 6E 64 20 57 69 6E
    db 064h, 06Fh                     ; outsw dx, word fs:[si]
    db 077h, 073h                     ; ja 0x141
    and byte [bp + di + 0x74], dh            ; 20 73 74
    popaw                                    ; 61
    db 072h, 074h                     ; jb 0x148
    db 075h, 070h                     ; jne 0x146
    and byte [bp + 0x69], ah                 ; 20 66 69
    db 06Ch                           ; insb byte es:[di], dx
    db 065h, 073h, 000h               ; jae 0xdd
    inc cx                                   ; 41
    cmp bl, byte [si + 0x43]                 ; 3A 5C 43
    dec di                                   ; 4F
    dec bp                                   ; 4D
    dec bp                                   ; 4D
    inc cx                                   ; 41
    dec si                                   ; 4E
    inc sp                                   ; 44
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    add byte [bp + di + 0x4f], al            ; 00 43 4F
    dec bp                                   ; 4D
    push bx                                  ; 53
    push ax                                  ; 50
    inc bp                                   ; 45
    inc bx                                   ; 43
    cmp ax, 0x5000                           ; 3D 00 50
    inc cx                                   ; 41
    push sp                                  ; 54
    dec ax                                   ; 48
    cmp ax, 0x5700                           ; 3D 00 57
    dec cx                                   ; 49
    dec si                                   ; 4E
    xor word [bx + si], si                   ; 31 30
    xor byte [0x4942], ch                    ; 30 2E 42 49
    dec si                                   ; 4E
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
    add byte [si + 0x78], bl                 ; 00 5C 78
    arpl word [bx + si + 0x67], bp           ; 63 68 67
    db 02Eh, 024h, 024h               ; and al, 0x24
    and al, 0                                ; 24 00
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
    add byte [si + 0x890], bh                ; 00 BC 90 08
    db 0E8h, 083h, 004h               ; call 0x64a
    db 0E8h, 019h, 004h               ; call 0x5e3
    mov word [0x100], 0x27a                  ; C7 06 00 01 7A 02
    mov ah, 0x30                             ; B4 30
    int 0x21                                 ; CD 21
    mov byte [0x262], al                     ; A2 62 02
    db 0E8h, 0CCh, 003h               ; call 0x5a6
    mov ax, 0x5758                           ; B8 58 57
    mov word [0x263], ax                     ; A3 63 02
    mov byte [0x281], 0                      ; C6 06 81 02 00
    db 0E8h, 032h, 001h               ; call 0x31a
    pushf                                    ; 9C
    push ax                                  ; 50
    db 0E8h, 058h, 004h               ; call 0x645
    pop ax                                   ; 58
    popf                                     ; 9D
    db 073h, 029h                     ; jae 0x21a
    cmp byte [0x269], 0                      ; 80 3E 69 02 00
    db 075h, 011h                     ; jne 0x209
    cmp al, 8                                ; 3C 08
    db 075h, 005h                     ; jne 0x201
    db 0E8h, 0DFh, 000h               ; call 0x2de
    int 0x20                                 ; CD 20
    mov si, 0x1bb                            ; BE BB 01
    db 0E8h, 0DAh, 000h               ; call 0x2e1
    int 0x20                                 ; CD 20
    cmp al, 8                                ; 3C 08
    db 075h, 005h                     ; jne 0x212
    db 0E8h, 044h, 003h               ; call 0x554
    db 0EBh, 0C5h                     ; jmp 0x1d7
    db 0E8h, 0C5h, 001h               ; call 0x3da
    db 0E8h, 0E2h, 000h               ; call 0x2fa
    db 0EBh, 0BDh                     ; jmp 0x1d7
    mov byte [0x269], 1                      ; C6 06 69 02 01
    cmp byte [0x281], 0                      ; 80 3E 81 02 00
    db 075h, 003h                     ; jne 0x229
    db 0E9h, 096h, 000h               ; jmp 0x2bf
    db 0E8h, 075h, 002h               ; call 0x4a1
    mov ax, word [0x27e]                     ; A1 7E 02
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Fh                     ; je 0x242
    mov si, 0                                ; BE 00 00
    db 0E8h, 08Ch, 002h               ; call 0x4c5
    db 0E8h, 099h, 002h               ; call 0x4d5
    mov si, 3                                ; BE 03 00
    db 0E8h, 083h, 002h               ; call 0x4c5
    mov dx, 0x281                            ; BA 81 02
    db 0E8h, 02Eh, 001h               ; call 0x376
    db 073h, 022h                     ; jae 0x26c
    db 03Dh, 002h, 000h               ; cmp ax, 2
    db 075h, 00Bh                     ; jne 0x25a
    mov dx, 0x114                            ; BA 14 01
    mov si, 0x281                            ; BE 81 02
    db 0E8h, 0A5h, 000h               ; call 0x2fd
    db 0EBh, 0E8h                     ; jmp 0x242
    db 03Dh, 008h, 000h               ; cmp ax, 8
    db 075h, 00Ch                     ; jne 0x26b
    cmp byte [0x262], 3                      ; 80 3E 62 02 03
    db 073h, 005h                     ; jae 0x26b
    db 0E8h, 0EBh, 002h               ; call 0x554
    db 0EBh, 0D7h                     ; jmp 0x242
    stc                                      ; F9
    mov word [0x80], 0xd00                   ; C7 06 80 00 00 0D
    pushf                                    ; 9C
    cmp word [0x27e], 0                      ; 83 3E 7E 02 00
    db 074h, 006h                     ; je 0x280
    mov si, 6                                ; BE 06 00
    db 0E8h, 045h, 002h               ; call 0x4c5
    popf                                     ; 9D
    db 073h, 006h                     ; jae 0x289
    db 0E8h, 058h, 000h               ; call 0x2de
    db 0E9h, 051h, 0FFh               ; jmp 0x1da
    db 0E8h, 0BBh, 002h               ; call 0x547
    mov si, 9                                ; BE 09 00
    db 08Bh, 0C6h                     ; mov ax, si
    db 0E3h, 002h                     ; jcxz 0x295
    db 033h, 0C0h                     ; xor ax, ax
    test byte [0x280], 0x10                  ; F6 06 80 02 10
    db 075h, 003h                     ; jne 0x29f
    db 0E8h, 026h, 002h               ; call 0x4c5
    db 0E8h, 06Eh, 002h               ; call 0x510
    pushf                                    ; 9C
    push cx                                  ; 51
    db 0E8h, 053h, 002h               ; call 0x4fa
    db 0E8h, 09Bh, 003h               ; call 0x645
    pop cx                                   ; 59
    popf                                     ; 9D
    db 072h, 006h                     ; jb 0x2b4
    mov ax, 0x5747                           ; B8 47 57
    db 0E9h, 029h, 0FFh               ; jmp 0x1dd
    db 0E3h, 006h                     ; jcxz 0x2bc
    mov si, 0x191                            ; BE 91 01
    db 0E8h, 025h, 000h               ; call 0x2e1
    db 0E9h, 01Bh, 0FFh               ; jmp 0x1da
    mov dx, 0x258                            ; BA 58 02
    mov ah, 0x41                             ; B4 41
    int 0x21                                 ; CD 21
    mov si, 0x6e3                            ; BE E3 06
    db 0E8h, 011h, 001h               ; call 0x3dd
    db 08Bh, 0D6h                     ; mov dx, si
    mov ah, 0x3b                             ; B4 3B
    int 0x21                                 ; CD 21
    mov ah, 0x4d                             ; B4 4D
    int 0x21                                 ; CD 21
    mov ah, 0x4c                             ; B4 4C
    int 0x21                                 ; CD 21
    cmp al, 8                                ; 3C 08
    db 075h, 003h                     ; jne 0x2e1
    mov si, 0x170                            ; BE 70 01
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 008h                     ; je 0x2ee
    db 08Ah, 0D0h                     ; mov dl, al
    mov ah, 2                                ; B4 02
    int 0x21                                 ; CD 21
    db 0EBh, 0F3h                     ; jmp 0x2e1
    mov dl, 0xd                              ; B2 0D
    db 0E8h, 002h, 000h               ; call 0x2f5
    mov dl, 0xa                              ; B2 0A
    mov ah, 2                                ; B4 02
    int 0x21                                 ; CD 21
    ret                                      ; C3
    mov dx, 0x127                            ; BA 27 01
    mov ax, word [si]                        ; 8B 04
    mov byte [0x14d], al                     ; A2 4D 01
    mov ah, 9                                ; B4 09
    int 0x21                                 ; CD 21
    mov dx, 0x13e                            ; BA 3E 01
    mov ah, 9                                ; B4 09
    int 0x21                                 ; CD 21
    mov ax, 0xc08                            ; B8 08 0C
    int 0x21                                 ; CD 21
    mov dx, 0x16b                            ; BA 6B 01
    mov ah, 9                                ; B4 09
    int 0x21                                 ; CD 21
    ret                                      ; C3
    cld                                      ; FC
    push ss                                  ; 16
    pop es                                   ; 07
    mov ax, word [0x263]                     ; A1 63 02
    mov word [0xfe], ax                      ; A3 FE 00
    mov si, 0x1fb                            ; BE FB 01
    mov cx, 0xd                              ; B9 0D 00
    cmp byte [0x269], 0                      ; 80 3E 69 02 00
    db 074h, 00Eh                     ; je 0x33e
    mov si, 0x206                            ; BE 06 02
    db 08Bh, 0FEh                     ; mov di, si
    mov cx, 0xffff                           ; B9 FF FF
    db 033h, 0C0h                     ; xor ax, ax
    db 0F2h, 0AEh                     ; repne scasb al, byte es:[di]
    not cx                                   ; F7 D1
    mov di, 0x80                             ; BF 80 00
    db 033h, 0C0h                     ; xor ax, ax
    mov al, byte [di]                        ; 8A 05
    db 002h, 0C1h                     ; add al, cl
    db 005h, 003h, 000h               ; add ax, 3
    db 02Dh, 07Eh, 000h               ; sub ax, 0x7e
    db 07Eh, 002h                     ; jle 0x351
    sub byte [di], al                        ; 28 05
    db 033h, 0C0h                     ; xor ax, ax
    mov al, byte [di]                        ; 8A 05
    inc di                                   ; 47
    db 003h, 0F8h                     ; add di, ax
    mov al, 0xd                              ; B0 0D
    db 0AAh                           ; stosb byte es:[di], al
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0AAh                           ; stosb byte es:[di], al
    cmp byte [0x269], 0                      ; 80 3E 69 02 00
    db 075h, 00Ch                     ; jne 0x371
    mov ah, 0x19                             ; B4 19
    int 0x21                                 ; CD 21
    add al, 0x41                             ; 04 41
    mov ah, 0x3a                             ; B4 3A
    db 0ABh                           ; stosw word es:[di], ax
    sub cx, 2                                ; 83 E9 02
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    mov dx, 0x206                            ; BA 06 02
    mov ax, ds                               ; 8C D8
    mov es, ax                               ; 8E C0
    mov word [0x26c], 0x80                   ; C7 06 6C 02 80 00
    mov word [0x26e], ds                     ; 8C 1E 6E 02
    mov word [0x270], 0x5c                   ; C7 06 70 02 5C 00
    mov word [0x272], ds                     ; 8C 1E 72 02
    mov word [0x274], 0x6c                   ; C7 06 74 02 6C 00
    mov word [0x276], ds                     ; 8C 1E 76 02
    mov si, 0x81                             ; BE 81 00
    mov di, 0x5c                             ; BF 5C 00
    mov ax, 0x2901                           ; B8 01 29
    int 0x21                                 ; CD 21
    mov di, 0x6c                             ; BF 6C 00
    mov ax, 0x2901                           ; B8 01 29
    int 0x21                                 ; CD 21
    mov bx, 0x26a                            ; BB 6A 02
    push ds                                  ; 1E
    pop es                                   ; 07
    mov ax, word [0x2c]                      ; A1 2C 00
    mov word [bx], ax                        ; 89 07
    push ds                                  ; 1E
    push dx                                  ; 52
    push es                                  ; 06
    push bx                                  ; 53
    db 0E8h, 02Bh, 000h               ; call 0x3e7
    ret                                      ; C3
    db 0E8h, 01Ah, 000h               ; call 0x3da
    push si                                  ; 56
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FBh                     ; jne 0x3c1
    mov cl, 0x5c                             ; B1 5C
    dec si                                   ; 4E
    cmp byte [si], cl                        ; 38 0C
    db 075h, 0FBh                     ; jne 0x3c8
    mov byte [si], 0                         ; C6 04 00
    pop dx                                   ; 5A
    mov ah, 0x3b                             ; B4 3B
    int 0x21                                 ; CD 21
    mov byte [si], cl                        ; 88 0C
    db 08Bh, 0F2h                     ; mov si, dx
    ret                                      ; C3
    mov si, 0x206                            ; BE 06 02
    mov dl, byte [si]                        ; 8A 14
    sub dl, 0x41                             ; 80 EA 41
    mov ah, 0xe                              ; B4 0E
    int 0x21                                 ; CD 21
    ret                                      ; C3
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    sub sp, 0x54                             ; 83 EC 54
    push ds                                  ; 1E
    cld                                      ; FC
    lds si, [bp + 8]                         ; C5 76 08
    push ss                                  ; 16
    pop es                                   ; 07
    lea di, [bp - 0x52]                      ; 8D 7E AE
    db 08Bh, 0DFh                     ; mov bx, di
    db 0ACh                           ; lodsb al, byte [si]
    cmp al, 0x2f                             ; 3C 2F
    db 074h, 008h                     ; je 0x406
    cmp al, 0x5c                             ; 3C 5C
    db 074h, 004h                     ; je 0x406
    cmp al, 0x3a                             ; 3C 3A
    db 075h, 003h                     ; jne 0x409
    db 08Bh, 0DFh                     ; mov bx, di
    inc bx                                   ; 43
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0EBh                     ; jne 0x3f9
    mov word [bp - 0x54], bx                 ; 89 5E AC
    lds dx, [bp + 8]                         ; C5 56 08
    les bx, [bp + 4]                         ; C4 5E 04
    db 0E8h, 068h, 000h               ; call 0x482
    db 073h, 05Fh                     ; jae 0x47b
    cmp al, 2                                ; 3C 02
    db 074h, 004h                     ; je 0x424
    cmp al, 3                                ; 3C 03
    db 075h, 056h                     ; jne 0x47a
    db 0E8h, 05Bh, 001h               ; call 0x582
    db 075h, 051h                     ; jne 0x47a
    les di, [bp + 8]                         ; C4 7E 08
    cmp byte [si + 1], 0x3a                  ; 80 7C 01 3A
    db 074h, 009h                     ; je 0x43b
    mov ah, 0x19                             ; B4 19
    int 0x21                                 ; CD 21
    add al, 0x41                             ; 04 41
    mov ah, 0x3a                             ; B4 3A
    db 0ABh                           ; stosw word es:[di], ax
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    cmp al, 0x3b                             ; 3C 3B
    db 074h, 005h                     ; je 0x446
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0F6h                     ; jne 0x43b
    dec si                                   ; 4E
    mov al, 0x5c                             ; B0 5C
    cmp byte es:[di - 2], al                 ; 26 38 45 FE
    db 075h, 001h                     ; jne 0x44f
    dec di                                   ; 4F
    mov byte es:[di - 1], al                 ; 26 88 45 FF
    push ds                                  ; 1E
    push si                                  ; 56
    push ss                                  ; 16
    pop ds                                   ; 1F
    mov si, word [bp - 0x54]                 ; 8B 76 AC
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x45a
    lds dx, [bp + 8]                         ; C5 56 08
    les bx, [bp + 4]                         ; C4 5E 04
    db 0E8h, 019h, 000h               ; call 0x482
    pop si                                   ; 5E
    pop ds                                   ; 1F
    db 073h, 00Eh                     ; jae 0x47b
    cmp al, 2                                ; 3C 02
    db 074h, 004h                     ; je 0x475
    cmp al, 3                                ; 3C 03
    db 075h, 005h                     ; jne 0x47a
    cmp byte [si], 0                         ; 80 3C 00
    db 075h, 0AFh                     ; jne 0x429
    stc                                      ; F9
    pop ds                                   ; 1F
    db 08Bh, 0E5h                     ; mov sp, bp
    pop bp                                   ; 5D
    ret 8                                    ; C2 08 00
    clc                                      ; F8
    push ds                                  ; 1E
    push bp                                  ; 55
    mov word cs:[0x105], ss                  ; 2E 8C 16 05 01
    mov word cs:[0x107], sp                  ; 2E 89 26 07 01
    mov ax, 0x4b00                           ; B8 00 4B
    int 0x21                                 ; CD 21
    mov ss, word cs:[0x105]                  ; 2E 8E 16 05 01
    mov sp, word cs:[0x107]                  ; 2E 8B 26 07 01
    pop bp                                   ; 5D
    pop ds                                   ; 1F
    ret                                      ; C3
    push es                                  ; 06
    push ds                                  ; 1E
    mov bx, word [0x27c]                     ; 8B 1E 7C 02
    db 08Bh, 0CBh                     ; mov cx, bx
    mov ah, 0x48                             ; B4 48
    int 0x21                                 ; CD 21
    mov es, ax                               ; 8E C0
    xchg word [0x27a], ax                    ; 87 06 7A 02
    mov ds, ax                               ; 8E D8
    db 033h, 0F6h                     ; xor si, si
    db 033h, 0FFh                     ; xor di, di
    shl cx, 1                                ; D1 E1
    shl cx, 1                                ; D1 E1
    shl cx, 1                                ; D1 E1
    cld                                      ; FC
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    pop ds                                   ; 1F
    pop es                                   ; 07
    ret                                      ; C3
    push ds                                  ; 1E
    mov word [0x278], si                     ; 89 36 78 02
    mov ds, word [0x27a]                     ; 8E 1E 7A 02
    db 036h, 0FFh, 01Eh, 078h, 002h   ; lcall ss:[0x278]
    pop ds                                   ; 1F
    ret                                      ; C3
    push ax                                  ; 50
    db 005h, 00Fh, 000h               ; add ax, 0xf
    mov cl, 4                                ; B1 04
    shr ax, cl                               ; D3 E8
    db 08Bh, 0D8h                     ; mov bx, ax
    mov ah, 0x48                             ; B4 48
    int 0x21                                 ; CD 21
    db 072h, 014h                     ; jb 0x4f9
    mov es, ax                               ; 8E C0
    db 033h, 0FFh                     ; xor di, di
    db 033h, 0C0h                     ; xor ax, ax
    mov word [0x265], ax                     ; A3 65 02
    mov word [0x267], es                     ; 8C 06 67 02
    db 0ABh                           ; stosw word es:[di], ax
    db 0ABh                           ; stosw word es:[di], ax
    pop ax                                   ; 58
    db 033h, 0D2h                     ; xor dx, dx
    db 08Bh, 0FAh                     ; mov di, dx
    ret                                      ; C3
    mov cx, word [0x267]                     ; 8B 0E 67 02
    db 0E3h, 003h                     ; jcxz 0x503
    db 0E8h, 006h, 000h               ; call 0x509
    mov cx, word [0x27a]                     ; 8B 0E 7A 02
    db 0E3h, 006h                     ; jcxz 0x50f
    mov es, cx                               ; 8E C1
    mov ah, 0x49                             ; B4 49
    int 0x21                                 ; CD 21
    ret                                      ; C3
    db 0E8h, 034h, 000h               ; call 0x547
    db 0E3h, 029h                     ; jcxz 0x53e
    push ds                                  ; 1E
    db 0E8h, 0C1h, 0FEh               ; call 0x3da
    mov dx, 0x258                            ; BA 58 02
    db 033h, 0C9h                     ; xor cx, cx
    mov ah, 0x3c                             ; B4 3C
    int 0x21                                 ; CD 21
    db 072h, 016h                     ; jb 0x53a
    db 08Bh, 0D8h                     ; mov bx, ax
    lds dx, [0x265]                          ; C5 16 65 02
    db 08Bh, 0FAh                     ; mov di, dx
    mov cx, word [di + 2]                    ; 8B 4D 02
    add cx, 4                                ; 83 C1 04
    mov ah, 0x40                             ; B4 40
    int 0x21                                 ; CD 21
    mov ah, 0x3e                             ; B4 3E
    int 0x21                                 ; CD 21
    pop ds                                   ; 1F
    mov cl, 1                                ; B1 01
    ret                                      ; C3
    mov dx, 0x258                            ; BA 58 02
    mov ah, 0x41                             ; B4 41
    int 0x21                                 ; CD 21
    stc                                      ; F9
    ret                                      ; C3
    les di, [0x265]                          ; C4 3E 65 02
    mov cx, es                               ; 8C C1
    db 0E3h, 004h                     ; jcxz 0x553
    mov cx, word es:[di + 2]                 ; 26 8B 4D 02
    ret                                      ; C3
    mov di, 0x1ec                            ; BF EC 01
    mov cx, 8                                ; B9 08 00
    db 0E8h, 02Bh, 000h               ; call 0x588
    db 074h, 005h                     ; je 0x564
    push cs                                  ; 0E
    pop ds                                   ; 1F
    mov si, 0x1dd                            ; BE DD 01
    mov di, ds                               ; 8C DF
    mov ax, word [si]                        ; 8B 04
    mov byte cs:[0x14d], al                  ; 2E A2 4D 01
    mov ds, di                               ; 8E DF
    db 08Bh, 0D6h                     ; mov dx, si
    mov ax, 0x4300                           ; B8 00 43
    int 0x21                                 ; CD 21
    push cs                                  ; 0E
    pop ds                                   ; 1F
    db 073h, 008h                     ; jae 0x581
    mov dx, 0x109                            ; BA 09 01
    db 0E8h, 083h, 0FDh               ; call 0x302
    db 0EBh, 0EBh                     ; jmp 0x56c
    ret                                      ; C3
    mov di, 0x1f5                            ; BF F5 01
    mov cx, 5                                ; B9 05 00
    push ss                                  ; 16
    pop es                                   ; 07
    mov ds, word es:[0x2c]                   ; 26 8E 1E 2C 00
    db 033h, 0F6h                     ; xor si, si
    push cx                                  ; 51
    push di                                  ; 57
    db 0F3h, 0A6h                     ; repe cmpsb byte [si], byte es:[di]
    pop di                                   ; 5F
    pop cx                                   ; 59
    db 074h, 00Ch                     ; je 0x5a5
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FBh                     ; jne 0x599
    cmp byte [si], 0                         ; 80 3C 00
    db 075h, 0EEh                     ; jne 0x591
    db 00Bh, 0C9h                     ; or cx, cx
    ret                                      ; C3
    cld                                      ; FC
    push ds                                  ; 1E
    pop es                                   ; 07
    mov di, 0x206                            ; BF 06 02
    mov ah, 0x19                             ; B4 19
    int 0x21                                 ; CD 21
    add al, 0x41                             ; 04 41
    db 0AAh                           ; stosb byte es:[di], al
    mov ax, 0x5c3a                           ; B8 3A 5C
    db 0ABh                           ; stosw word es:[di], ax
    db 08Bh, 0F7h                     ; mov si, di
    db 033h, 0D2h                     ; xor dx, dx
    mov ah, 0x47                             ; B4 47
    int 0x21                                 ; CD 21
    mov si, 0x206                            ; BE 06 02
    mov di, 0x6e3                            ; BF E3 06
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x5c5
    mov al, 0x5c                             ; B0 5C
    cmp byte [si - 2], al                    ; 38 44 FE
    db 075h, 001h                     ; jne 0x5d3
    dec si                                   ; 4E
    mov byte [si - 1], al                    ; 88 44 FF
    db 08Bh, 0FEh                     ; mov di, si
    mov si, 0x1fb                            ; BE FB 01
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x5db
    clc                                      ; F8
    ret                                      ; C3
    add ax, 0x89f                            ; 05 9F 08
    mov cl, 4                                ; B1 04
    shr ax, cl                               ; D3 E8
    db 08Bh, 0D8h                     ; mov bx, ax
    push ss                                  ; 16
    pop es                                   ; 07
    mov ah, 0x4a                             ; B4 4A
    int 0x21                                 ; CD 21
    mov bx, 0xffff                           ; BB FF FF
    mov ah, 0x48                             ; B4 48
    int 0x21                                 ; CD 21
    cmp bx, word cs:[0x103]                  ; 2E 3B 1E 03 01
    db 073h, 009h                     ; jae 0x609
    db 0E8h, 042h, 000h               ; call 0x645
    db 0E8h, 0D8h, 0FCh               ; call 0x2de
    db 0E9h, 0B6h, 0FCh               ; jmp 0x2bf
    cmp word cs:[0x81], 0x2120               ; 2E 81 3E 81 00 20 21
    db 075h, 032h                     ; jne 0x644
    sub bx, word cs:[0x103]                  ; 2E 2B 1E 03 01
    mov byte cs:[0x82], 0x20                 ; 2E C6 06 82 00 20
    db 033h, 0C0h                     ; xor ax, ax
    mov al, byte cs:[0x83]                   ; 2E A0 83 00
    sub al, 0x30                             ; 2C 30
    cmp al, 9                                ; 3C 09
    db 077h, 017h                     ; ja 0x640
    mov byte cs:[0x83], 0x20                 ; 2E C6 06 83 00 20
    mov cl, 0xc                              ; B1 0C
    shl ax, cl                               ; D3 E0
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 003h                     ; jne 0x63a
    mov ax, 0x400                            ; B8 00 04
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 073h, 006h                     ; jae 0x644
    db 02Bh, 0D8h                     ; sub bx, ax
    mov ah, 0x48                             ; B4 48
    int 0x21                                 ; CD 21
    ret                                      ; C3
    mov di, 7                                ; BF 07 00
    db 0EBh, 00Dh                     ; jmp 0x657
    mov di, 4                                ; BF 04 00
    cmp byte [0x80], 0                       ; 80 3E 80 00 00
    db 074h, 003h                     ; je 0x657
    db 033h, 0C0h                     ; xor ax, ax
    ret                                      ; C3
    push ds                                  ; 1E
    mov si, cs                               ; 8C CE
    mov ax, 0x89f                            ; B8 9F 08
    mov cl, 4                                ; B1 04
    shr ax, cl                               ; D3 E8
    db 003h, 0F0h                     ; add si, ax
    mov ds, si                               ; 8E DE
    db 033h, 0C0h                     ; xor ax, ax
    db 033h, 0F6h                     ; xor si, si
    cmp word [si], 0x4f4c                    ; 81 3C 4C 4F
    db 075h, 00Fh                     ; jne 0x67e
    cmp word [si + 2], 0x4f47                ; 81 7C 02 47 4F
    db 075h, 008h                     ; jne 0x67e
    push cs                                  ; 0E
    mov ax, 0x77e                            ; B8 7E 07
    push ax                                  ; 50
    push ds                                  ; 1E
    push di                                  ; 57
    retf                                     ; CB
    pop ds                                   ; 1F
    ret                                      ; C3
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
    dec sp                                   ; 4C
    dec di                                   ; 4F
    inc di                                   ; 47
    dec di                                   ; 4F
    db 0E9h, 0C6h, 000h               ; jmp 0x85d
    db 033h, 0C0h                     ; xor ax, ax
    mov es, ax                               ; 8E C0
    mov al, byte [0x19]                      ; A0 19 00
    mov byte es:[0x410], al                  ; 26 A2 10 04
    mov al, byte [0x18]                      ; A0 18 00
    int 0x10                                 ; CD 10
    retf                                     ; CB
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    add byte [bx + si - 0x5ffb], ah          ; 00 A0 05 A0
    db 005h, 000h, 000h               ; add ax, 0
    db 000h, 040h, 000h               ; add byte [bx + si], al
    mov ax, 0xe1f                            ; B8 1F 0E
    dec bp                                   ; 4D
    imul sp, word [bp + di + 0x72], 0x736f   ; 69 63 72 6F 73
    db 06Fh                           ; outsw dx, word [si]
    db 066h, 074h, 020h               ; je 0x7e2
    push di                                  ; 57
    imul bp, word [bp + 0x64], 0x776f        ; 69 6E 64 6F 77
    db 073h, 000h                     ; jae 0x7ca
    and word [bx], cx                        ; 21 0F
    push si                                  ; 56
    db 065h, 072h, 073h               ; jb 0x843
    imul bp, word [bx + 0x6e], 0x3120        ; 69 6F 6E 20 31
    xor byte cs:[bp + di], dh                ; 2E 30 33
    add byte [di], al                        ; 00 05
    pop ss                                   ; 17
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 070h, 079h                     ; jo 0x858
    db 072h, 069h                     ; jb 0x84a
    db 067h, 068h, 074h, 020h         ; push 0x2074
    sub byte [bp + di + 0x29], ah            ; 28 63 29
    and byte [di + 0x69], cl                 ; 20 4D 69
    arpl word [bp + si + 0x6f], si           ; 63 72 6F
    db 073h, 06Fh                     ; jae 0x85f
    db 066h, 074h, 020h               ; je 0x813
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 070h                     ; jb 0x867
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 061h                     ; jb 0x85b
    db 074h, 069h                     ; je 0x865
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    sub al, 0x20                             ; 2C 20
    xor word [bx + di], di                   ; 31 39
    cmp byte [di], dh                        ; 38 35
    sub al, 0x20                             ; 2C 20
    xor word [bx + di], di                   ; 31 39
    cmp byte [0x202e], dh                    ; 38 36 2E 20
    and byte [bx + di + 0x6c], al            ; 20 41 6C
    db 06Ch                           ; insb byte es:[di], dx
    and byte [bp + si + 0x69], dl            ; 20 52 69
    db 067h, 068h, 074h, 073h         ; push 0x7374
    and byte [bp + si + 0x65], dl            ; 20 52 65
    db 073h, 065h                     ; jae 0x881
    db 072h, 076h                     ; jb 0x894
    db 065h, 064h, 02Eh, 000h, 00Dh   ; add byte cs:[di], cl
    sbb byte [di + 0x69], cl                 ; 18 4D 69
    arpl word [bp + si + 0x6f], si           ; 63 72 6F
    db 073h, 06Fh                     ; jae 0x89a
    db 066h, 074h, 020h               ; je 0x84e
    imul si, word [bp + di + 0x20], 0x2061   ; 69 73 20 61 20
    db 072h, 065h                     ; jb 0x89a
    imul si, word [ebx + 0x74], 0x7265       ; 67 69 73 74 65 72
    db 065h, 064h, 020h, 074h, 072h   ; and byte fs:[si + 0x72], dh
    popaw                                    ; 61
    db 064h, 065h, 06Dh               ; insw word es:[di], dx
    popaw                                    ; 61
    db 072h, 06Bh                     ; jb 0x8b2
    and byte [bx + 0x66], ch                 ; 20 6F 66
    and byte [di + 0x69], cl                 ; 20 4D 69
    arpl word [bp + si + 0x6f], si           ; 63 72 6F
    db 073h, 06Fh                     ; jae 0x8c1
    db 066h, 074h, 020h               ; je 0x875
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 072h, 070h                     ; jb 0x8c9
    add byte cs:[bx + si], al                ; 2E 00 00
    add ah, bh                               ; 00 FC
    db 0E8h, 008h, 001h               ; call 0x969
    mov es, word [0x24]                      ; 8E 06 24 00
    db 0E8h, 0B9h, 000h               ; call 0x921
    db 0E8h, 0CAh, 000h               ; call 0x935
    mov dx, word [0x1a]                      ; 8B 16 1A 00
    sub dl, 0x43                             ; 80 EA 43
    sub dx, word [0x20]                      ; 2B 16 20 00
    sub dx, word [0x20]                      ; 2B 16 20 00
    db 003h, 0D2h                     ; add dx, dx
    mov di, word [0x1c]                      ; 8B 3E 1C 00
    db 0E8h, 042h, 000h               ; call 0x8c5
    mov di, word [0x1c]                      ; 8B 3E 1C 00
    add di, word [0x1e]                      ; 03 3E 1E 00
    mov ax, word [0x22]                      ; A1 22 00
    shr ax, 1                                ; D1 E8
    db 003h, 0F8h                     ; add di, ax
    dec di                                   ; 4F
    db 0E8h, 05Dh, 000h               ; call 0x8f3
    dec dx                                   ; 4A
    db 075h, 0E3h                     ; jne 0x87c
    cld                                      ; FC
    mov si, 0x26                             ; BE 26 00
    mov al, byte [si + 1]                    ; 8A 44 01
    cmp al, 0                                ; 3C 00
    db 074h, 005h                     ; je 0x8a9
    db 0E8h, 006h, 000h               ; call 0x8ad
    db 0EBh, 0F4h                     ; jmp 0x89d
    mov ax, 0x1a                             ; B8 1A 00
    retf                                     ; CB
    cld                                      ; FC
    db 0ADh                           ; lodsw ax, word [si]
    db 08Bh, 0D0h                     ; mov dx, ax
    db 033h, 0DBh                     ; xor bx, bx
    mov bl, 0xff                             ; B3 FF
    mov ah, 2                                ; B4 02
    int 0x10                                 ; CD 10
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 006h                     ; je 0x8c4
    mov ah, 0xe                              ; B4 0E
    int 0x10                                 ; CD 10
    db 0EBh, 0F5h                     ; jmp 0x8b9
    ret                                      ; C3
    cld                                      ; FC
    push dx                                  ; 52
    db 032h, 0D2h                     ; xor dl, dl
    mov si, 0x24                             ; BE 24 00
    shr si, 1                                ; D1 EE
    mov cx, word [0x1a]                      ; 8B 0E 1A 00
    shr cx, 1                                ; D1 E9
    mov ax, word es:[di]                     ; 26 8B 05
    xchg ah, al                              ; 86 C4
    ror ax, 1                                ; D1 C8
    ror ax, 1                                ; D1 C8
    db 08Ah, 0F4h                     ; mov dh, ah
    and dh, 0xc0                             ; 80 E6 C0
    and ah, 0x3f                             ; 80 E4 3F
    db 00Ah, 0E2h                     ; or ah, dl
    db 08Ah, 0D6h                     ; mov dl, dh
    xchg ah, al                              ; 86 C4
    db 0ABh                           ; stosw word es:[di], ax
    db 0E2h, 0E6h                     ; loop 0x8d4
    dec si                                   ; 4E
    db 075h, 0DDh                     ; jne 0x8ce
    pop dx                                   ; 5A
    ret                                      ; C3
    std                                      ; FD
    push dx                                  ; 52
    db 032h, 0D2h                     ; xor dl, dl
    mov si, 0x24                             ; BE 24 00
    shr si, 1                                ; D1 EE
    mov cx, word [0x1a]                      ; 8B 0E 1A 00
    shr cx, 1                                ; D1 E9
    mov ax, word es:[di]                     ; 26 8B 05
    xchg ah, al                              ; 86 C4
    rol ax, 1                                ; D1 C0
    rol ax, 1                                ; D1 C0
    db 08Ah, 0F0h                     ; mov dh, al
    and dh, 3                                ; 80 E6 03
    and al, 0xfc                             ; 24 FC
    db 00Ah, 0C2h                     ; or al, dl
    db 08Ah, 0D6h                     ; mov dl, dh
    xchg ah, al                              ; 86 C4
    db 0ABh                           ; stosw word es:[di], ax
    db 0E2h, 0E7h                     ; loop 0x902
    dec si                                   ; 4E
    db 075h, 0DEh                     ; jne 0x8fc
    pop dx                                   ; 5A
    cld                                      ; FC
    ret                                      ; C3
    mov si, 0x20d                            ; BE 0D 02
    mov al, 0x12                             ; B0 12
    mul byte [0x1a]                          ; F6 26 1A 00
    db 08Bh, 0F8h                     ; mov di, ax
    add di, word [0x20]                      ; 03 3E 20 00
    mov bx, 0x12                             ; BB 12 00
    db 0EBh, 020h                     ; jmp 0x955
    mov al, 0x12                             ; B0 12
    mul byte [0x1a]                          ; F6 26 1A 00
    mov bx, word [0x1a]                      ; 8B 1E 1A 00
    sub bl, 0x43                             ; 80 EB 43
    db 003h, 0C3h                     ; add ax, bx
    mov bx, word [0x22]                      ; 8B 1E 22 00
    shr bx, 1                                ; D1 EB
    db 003h, 0C3h                     ; add ax, bx
    db 08Bh, 0F8h                     ; mov di, ax
    sub di, word [0x20]                      ; 2B 3E 20 00
    mov bx, 0x12                             ; BB 12 00
    mov ax, word [0x1a]                      ; A1 1A 00
    db 02Dh, 043h, 000h               ; sub ax, 0x43
    mov cx, 0x43                             ; B9 43 00
    mov cx, 0x43                             ; B9 43 00
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 003h, 0F8h                     ; add di, ax
    dec bx                                   ; 4B
    db 075h, 0F3h                     ; jne 0x95b
    ret                                      ; C3
    mov ah, 0xf                              ; B4 0F
    int 0x10                                 ; CD 10
    mov byte [0x18], al                      ; A2 18 00
    db 033h, 0C0h                     ; xor ax, ax
    mov es, ax                               ; 8E C0
    mov al, byte es:[0x410]                  ; 26 A0 10 04
    mov byte [0x19], al                      ; A2 19 00
    not al                                   ; F6 D0
    test al, 0x30                            ; A8 30
    db 075h, 008h                     ; jne 0x989
    not al                                   ; F6 D0
    and al, 0xef                             ; 24 EF
    mov byte es:[0x410], al                  ; 26 A2 10 04
    mov ax, 6                                ; B8 06 00
    int 0x10                                 ; CD 10
    mov ax, 0x1000                           ; B8 00 10
    mov bh, 1                                ; B7 01
    int 0x10                                 ; CD 10
    mov ax, 0x1001                           ; B8 01 10
    mov bh, 1                                ; B7 01
    int 0x10                                 ; CD 10
    ret                                      ; C3
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
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0xf                  ; C0 00 0F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0F0h                     ; push ax
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    cld                                      ; FC
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    cld                                      ; FC
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    sar byte [bx], 0xff                      ; C0 3F FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    ud0                                      ; 0F FF
    db 0F3h, 0FFh, 0C3h               ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    aas                                      ; 3F
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    ud0                                      ; 0F FF
    db 0F0h                           ; F0
    db 0FFh                           ; FF
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 3                    ; C0 00 03
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    sar byte [bx], 0xfc                      ; C0 3F FC
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    lock add byte [bx], cl                   ; F0 00 0F
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bp + di]                       ; FF 03
    add byte [si], cl                        ; 00 0C
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0F0h                     ; push ax
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    dec word [si]                            ; FF 0C
    xor bl, al                               ; 30 C3
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    dec word [si]                            ; FF 0C
    xor ax, word [bp + di]                   ; 33 03
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bp + di]                       ; FF 03
    add byte [si], cl                        ; 00 0C
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    rol byte [bx + si], 3                    ; C0 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    rol byte [bx + si], 0                    ; C0 00 00
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
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
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
    aas                                      ; 3F
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add bh, bh                               ; 00 FF
    cld                                      ; FC
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0F3h                     ; push bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    aas                                      ; 3F
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    sar byte [bx], 0xff                      ; C0 3F FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    aas                                      ; 3F
    inc word [bx + si]                       ; FF 00
    ud0                                      ; 0F FF
    ret                                      ; C3
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0F0h                           ; F0
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    ud0                                      ; 0F FF
    sar byte [bx], 0xff                      ; C0 3F FF
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    lock add byte [bx], cl                   ; F0 00 0F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    db 0F0h                           ; F0
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx], bh                        ; 00 3F
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    rol byte [bx + si], 0                    ; C0 00 00
    db 003h, 0FFh                     ; add di, di
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    inc word [bx + si]                       ; FF 00
    aas                                      ; 3F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bp + di]                       ; FF 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx], cl                        ; 00 0F
    db 0FFh, 0C0h                     ; inc ax
    ud0                                      ; 0F FF
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 003h, 0FFh                     ; add di, di
    lock add byte [bp + di], al              ; F0 00 03
    db 0FFh, 0C0h                     ; inc ax
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    db 0C0h, 030h, 03Fh               ; sal byte [bx + si], 0x3f
    cld                                      ; FC
    add byte [bx], cl                        ; 00 0F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    db 003h, 0FFh                     ; add di, di
    ret                                      ; C3
    db 0FFh, 0C0h                     ; inc ax
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    db 0FFh, 0F0h                     ; push ax
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    db 003h, 0FFh                     ; add di, di
    cld                                      ; FC
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0C0h                     ; inc ax
    ud0                                      ; 0F FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    dec word [si]                            ; FF 0C
    aas                                      ; 3F
    add di, word [bx]                        ; 03 3F
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx], bh                        ; 00 3F
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add bh, bh                               ; 00 FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh, 0C0h                     ; inc ax
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    dec word [si]                            ; FF 0C
    aas                                      ; 3F
    add di, word [bx]                        ; 03 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bp + di], al                   ; 00 03
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    dec word [si]                            ; FF 0C
    xor bl, al                               ; 30 C3
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    aas                                      ; 3F
    rol byte [bx + si], 3                    ; C0 00 03
    db 0FFh, 0C3h                     ; inc bx
    db 0FFh, 0C0h                     ; inc ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    db 003h, 0FFh                     ; add di, di
    rol byte [bx + si], 0                    ; C0 00 00
    aas                                      ; 3F
    cld                                      ; FC
    add byte [bx + si], al                   ; 00 00
    ud0                                      ; 0F FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], bh                        ; 00 3F
    db 0FFh                           ; FF
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh, 0F0h                     ; push ax
    add byte [bx + si], al                   ; 00 00
    add bh, bh                               ; 00 FF
    lock add byte [bx + si], al              ; F0 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    inc word [bx + si]                       ; FF 00
    db 0C0h, 030h, 000h               ; sal byte [bx + si], 0
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
    db 0FFh, 0F0h                     ; push ax
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