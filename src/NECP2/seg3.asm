; NECP2/seg3.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 000h, 000h               ; add ax, 0
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bp + si], ax                   ; 01 02
    add dh, bh                               ; 00 FE
    add bl, cl                               ; 00 CB
    add byte [bx + si + 2], bl               ; 00 58 02
    db 0C0h, 003h, 001h               ; rol byte [bp + di], 1
    add byte [bx + di], al                   ; 00 01
    add byte [bx + di], dl                   ; 00 11
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + si], al                   ; 00 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], cl                   ; 00 08
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    add byte [bp + di], al                   ; 00 03
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    cmp al, 0                                ; 3C 00
    xchg byte [bx + si], al                  ; 86 00
    or al, 1                                 ; 0C 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    or word [si], di                         ; 09 3C
    add byte [bx + si + 0x64ff], cl          ; 00 88 FF 64
    db 000h, 064h, 000h               ; add byte [si], ah
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    db 0E8h, 003h, 0E8h               ; call 0xffffe85e
    add di, word [si]                        ; 03 3C
    add byte [bx + si - 0x5f01], cl          ; 00 88 FF A0
    add ax, 0x5a0                            ; 05 A0 05
    cmp al, 0                                ; 3C 00
    mov bh, bh                               ; 88 FF
    cmp al, 0                                ; 3C 00
    db 078h, 000h                     ; js 0x6c
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di], al                   ; 00 01
    add al, byte [bx + si]                   ; 02 00
    retf                                     ; CB
    add dh, bh                               ; 00 FE
    add al, al                               ; 00 C0
    add bx, word [bx + si + 2]               ; 03 58 02
    add word [bx + si], ax                   ; 01 00
    add word [bx + si], ax                   ; 01 00
    adc word [bx + si], ax                   ; 11 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or byte [bx + si], al                    ; 08 00
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add ax, word [bx + si]                   ; 03 00
    cmp al, 0                                ; 3C 00
    db 078h, 000h                     ; js 0xa4
    xchg byte [bx + si], al                  ; 86 00
    or al, 1                                 ; 0C 01
    inc byte [bx + si]                       ; FE 00
    inc byte [bx + si]                       ; FE 00
    db 078h, 000h                     ; js 0xae
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    in al, dx                                ; EC
    or sp, bp                                ; 09 EC
    db 009h, 078h, 000h               ; or word [bx + si], di
    db 0C4h                           ; C4
    db 0FFh, 064h, 000h               ; jmp word [si]
    db 064h, 000h, 078h, 000h         ; add byte fs:[bx + si], bh
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    db 0E8h, 003h, 0E8h               ; call 0xffffe8c6
    db 003h, 078h, 000h               ; add di, word [bx + si]
    db 0C4h                           ; C4
    jmp word [bx + si - 0x5ffb]              ; FF A0 05 A0
    db 005h, 078h, 000h               ; add ax, 0x78
    db 0C4h                           ; C4
    db 0FFh                           ; FF
    db 078h, 000h                     ; js 0xd2
    cmp al, 0                                ; 3C 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb sp, word [bp + di]                   ; 1B 23
    inc cx                                   ; 41
    sbb di, word [bx]                        ; 1B 3F
    xor word [bx + si], ax                   ; 31 00
    sbb si, word [0xc00]                     ; 1B 36 00 0C
    add byte [bp + di], bl                   ; 00 1B
    db 023h, 041h, 000h               ; and ax, word [bx + di]
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x164
    db 074h, 072h                     ; je 0x16a
    db 079h, 000h                     ; jns 0xfa
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    or al, 0x86                              ; 0C 86
    cmp al, 0x78                             ; 3C 78
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4320   ; 69 63 61 20 43
    db 06Fh                           ; outsw dx, word [si]
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x18e
    db 065h, 073h, 073h               ; jae 0x192
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    db 063h, 061h, 000h               ; arpl word [bx + di], sp
    push ax                                  ; 50
    imul sp, word [bp + di + 0x61], 0x4520   ; 69 63 61 20 45
    db 078h, 070h                     ; js 0x19f
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x1ac
    db 065h, 073h, 073h               ; jae 0x1b0
    db 065h, 064h, 000h, 050h, 069h   ; add byte fs:[bx + si + 0x69], dl
    arpl word [bx + di + 0x20], sp           ; 63 61 20
    inc bp                                   ; 45
    db 078h, 070h                     ; js 0x1b8
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 045h, 06Ch ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x1cd
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    or word [bx], ax                         ; 09 07
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add word [bp + di], ax                   ; 01 03
    or word [si], cx                         ; 09 0C
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, byte [bp + di]                   ; 02 03
    or word [0x400], cx                      ; 09 0E 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, word [bp + di]                   ; 03 03
    or word [bx + si], bx                    ; 09 18
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add al, 3                                ; 04 03
    or word [bp + si], cx                    ; 09 0A
    add byte [si], al                        ; 00 04
    add byte [bx + si], al                   ; 00 00
    add ax, 0x903                            ; 05 03 09
    adc al, 0                                ; 14 00
    add al, 0x12                             ; 04 12
    add word [bp + si], sp                   ; 01 22
    add word [bx], sp                        ; 01 27
    add word [bx + si + 1], ax               ; 01 40 01
    dec si                                   ; 4E
    add word [si + 1], dx                    ; 01 54 01
    db 06Eh                           ; outsb dx, byte [si]
    arpl word gs:[bx + si + 0x32], si        ; 65 63 70 32
    add dl, cl                               ; 00 CA
    add word [bx + si], sp                   ; 01 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    inc di                                   ; 47
    add byte [bp + di], bl                   ; 00 1B
    dec ax                                   ; 48
    add byte [bp + di], bl                   ; 00 1B
    db 02Dh, 031h, 000h               ; sub ax, 0x31
    sbb bp, word [di]                        ; 1B 2D
    xor byte [bx + si], al                   ; 30 00
    or ax, 0x1b00                            ; 0D 00 1B
    aas                                      ; 3F
    aaa                                      ; 37
    add byte [bp + di], bl                   ; 00 1B
    aas                                      ; 3F
    xor word [bx + si], ax                   ; 31 00
    sbb di, word [bx]                        ; 1B 3F
    xor ax, word [bx + si]                   ; 33 00
    movlps xmm3, qword [bp + di]             ; 0F 12 1B
    aas                                      ; 3F
    xor word [bp + di], bx                   ; 31 1B
    aas                                      ; 3F
    xor word [bp + di], bx                   ; 31 1B
    aas                                      ; 3F
    xor word [bx], cx                        ; 31 0F
    push cs                                  ; 0E
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    adc al, 0xf                              ; 14 0F
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc bl, byte [bp + di]                   ; 12 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0xf]             ; 1B 48 0F
    push cs                                  ; 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x1b                             ; 14 1B
    aas                                      ; 3F
    xor bx, word [bp + di]                   ; 33 1B
    aas                                      ; 3F
    xor word [bp + di], bx                   ; 31 1B
    aas                                      ; 3F
    xor cx, word [0x1b14]                    ; 33 0E 14 1B
    aas                                      ; 3F
    xor word [bp + di], bx                   ; 31 1B
    aas                                      ; 3F
    xor al, 0x1b                             ; 34 1B
    inc di                                   ; 47
    sbb cx, word [bx + si + 0x1b]            ; 1B 48 1B
    aas                                      ; 3F
    xor word [bp + di], bx                   ; 31 1B
    aas                                      ; 3F
    xor al, 0xe                              ; 34 0E
    sbb ax, word [bx + 0x1b]                 ; 1B 47 1B
    dec ax                                   ; 48
    adc al, 0x1b                             ; 14 1B
    aas                                      ; 3F
    xor bl, byte [bp + di]                   ; 32 1B
    aas                                      ; 3F
    sbb di, word ss:[bx]                     ; 36 1B 3F
    xor bl, byte [bp + di]                   ; 32 1B
    aas                                      ; 3F
    db 036h, 00Eh                     ; push cs
    adc al, 0x1b                             ; 14 1B
    aas                                      ; 3F
    xor bl, byte [bp + di]                   ; 32 1B
    inc ax                                   ; 40
    sbb ax, word [bp + di + 0x1b]            ; 1B 43 1B
    dec dx                                   ; 4A
    sbb cx, word [si + 0x1b]                 ; 1B 4C 1B
    inc bp                                   ; 45
    sbb ax, word [bp + 0x1b]                 ; 1B 46 1B
    xor al, 0x1b                             ; 34 1B
    xor ax, 0x4b1b                           ; 35 1B 4B
    sbb cx, word [bp + di + 0x1b]            ; 1B 4B 1B
    push bx                                  ; 53
    xor byte [bp + di], bl                   ; 30 1B
    push sp                                  ; 54
    sbb dx, word [bp + di + 0x31]            ; 1B 53 31
    db 01Bh, 054h, 000h               ; sbb dx, word [si]
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 094h, 014h, 000h         ; add byte [si + 0x14], dl
    cld                                      ; FC
    add dx, word [si + 0x1e02]               ; 03 94 02 1E
    add byte [0x9400], bl                    ; 00 1E 00 94
    add dl, byte [di]                        ; 02 15
    add byte [di], dl                        ; 00 15
    add al, ah                               ; 00 E0
    add di, word [si + 0xf02]                ; 03 BC 02 0F
    add byte [bp + si], dh                   ; 00 32
    add byte [si + 0x2902], bh               ; 00 BC 02 29
    add byte [0xde00], dl                    ; 00 16 00 DE
    db 003h, 0D0h                     ; add dx, ax
    add cl, byte [bx]                        ; 02 0F
    add byte [si], bh                        ; 00 3C
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [si], dl                        ; 00 14
    add byte [si - 0x3fe], dl                ; 00 94 02 FC
    add bx, word [0x1e00]                    ; 03 1E 00 1E
    add byte [si + 0x1502], dl               ; 00 94 02 15
    add byte [di], dl                        ; 00 15
    add byte [si - 0x1ffe], bh               ; 00 BC 02 E0
    add si, word [bp + si]                   ; 03 32
    add byte [bx], cl                        ; 00 0F
    add byte [si + 0x2902], bh               ; 00 BC 02 29
    add byte [0xd000], dl                    ; 00 16 00 D0
    db 002h, 0DEh                     ; add bl, dh
    add di, word [si]                        ; 03 3C
    add byte [bx], cl                        ; 00 0F
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [bp + di], bl                   ; 00 1B
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    sbb dx, word [bp]                        ; 1B 56 00
    add byte [bp + di], bl                   ; 00 1B
    dec dx                                   ; 4A
    add byte [bp + si], cl                   ; 00 0A
    add ax, word [si]                        ; 03 04
    db 0ACh                           ; lodsb al, byte [si]
    add word [bx + si], ax                   ; 01 00
    db 0ADh                           ; lodsw ax, word [si]
    add word [bx + si], ax                   ; 01 00
    db 0AEh                           ; scasb al, byte es:[di]
    add word [bp + si], ax                   ; 01 02
    mov cl, 1                                ; B1 01
    add dh, byte [si + 0x301]                ; 02 B4 01 03
    mov ax, 0x301                            ; B8 01 03
    mov sp, 0x101                            ; BC 01 01
    mov si, 0x301                            ; BE 01 03
    ret 0x301                                ; C2 01 03
    mov byte [bx + di], 3                    ; C6 01 03
    db 089h, 088h, 000h, 000h         ; mov word [bx + si], cx
    sub byte [bx + si], al                   ; 28 00
    rol byte [bp + di], 5                    ; C0 03 05
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add al, al                               ; 00 C0
    adc al, byte [bx + si]                   ; 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 082h, 002h, 000h         ; add byte [bp + si + 2], al
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add al, al                               ; 00 C0
    add bp, word [bx + si]                   ; 03 28
    db 000h, 078h, 000h               ; add byte [bx + si], bh
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    rcl byte [bp + si], 0                    ; C0 12 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 2], bl               ; 00 58 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb dx, word [bp + si + 0x6e]            ; 1B 52 6E
    arpl word [bp + di], bx                  ; 63 1B
    push dx                                  ; 52
    add byte [bx + si], al                   ; 00 00
    and byte [bx + si], al                   ; 20 00
    db 0ADh                           ; lodsw ax, word [si]
    add byte [bp + di - 0x6400], bl          ; 00 9B 00 9C
    add byte [bx + si], dh                   ; 00 30
    pop ax                                   ; 58
    popf                                     ; 9D
    db 000h, 07Ch, 000h               ; add byte [si], bh
    adc ax, 0x2200                           ; 15 00 22
    add byte [0xa600], ch                    ; 00 2E 00 A6
    add byte [bp - 0x5600], ch               ; 00 AE 00 AA
    add byte [di], ch                        ; 00 2D
    add byte [0x2d00], ch                    ; 00 2E 00 2D
    add al, bh                               ; 00 F8
    add cl, dh                               ; 00 F1
    add ch, bh                               ; 00 FD
    add byte [0x2700], ch                    ; 00 2E 00 27
    add dh, ah                               ; 00 E6
    add byte [0xfe00], ch                    ; 00 2E 00 FE
    add byte [si], ch                        ; 00 2C
    add byte [0xa700], ch                    ; 00 2E 00 A7
    add byte [bx - 0x5400], ch               ; 00 AF 00 AC
    add byte [bp + di + 0x2e00], ch          ; 00 AB 00 2E
    add byte [bx + si + 0x4100], ch          ; 00 A8 00 41
    pushaw                                   ; 60
    inc cx                                   ; 41
    daa                                      ; 27
    inc cx                                   ; 41
    pop si                                   ; 5E
    inc cx                                   ; 41
    db 07Eh, 08Eh                     ; jle 0x347
    add byte [bx - 0x6e00], cl               ; 00 8F 00 92
    add byte [bx + si + 0x4500], al          ; 00 80 00 45
    pushaw                                   ; 60
    nop                                      ; 90
    add byte [di + 0x5e], al                 ; 00 45 5E
    inc bp                                   ; 45
    and cl, byte [bx + di + 0x60]            ; 22 49 60
    dec cx                                   ; 49
    daa                                      ; 27
    dec cx                                   ; 49
    pop si                                   ; 5E
    dec cx                                   ; 49
    and al, byte [si + 0x2d]                 ; 22 44 2D
    db 0A5h                           ; movsw word es:[di], word [si]
    add byte [bx + 0x60], cl                 ; 00 4F 60
    dec di                                   ; 4F
    daa                                      ; 27
    dec di                                   ; 4F
    pop si                                   ; 5E
    dec di                                   ; 4F
    db 07Eh, 099h                     ; jle 0x376
    add byte [0xed00], ch                    ; 00 2E 00 ED
    add byte [di + 0x60], dl                 ; 00 55 60
    push bp                                  ; 55
    daa                                      ; 27
    push bp                                  ; 55
    pop si                                   ; 5E
    db 09Ah, 000h, 059h, 027h, 070h   ; lcall 0x7027, 0x5900
    db 062h                           ; 62
    db 0E1h, 000h                     ; loope 0x3f0
    test word [bx + si], ax                  ; 85 00
    mov al, byte [0x8300]                    ; A0 00 83
    add byte [bx + di + 0x7e], ah            ; 00 61 7E
    test byte [bx + si], al                  ; 84 00
    xchg byte [bx + si], al                  ; 86 00
    xchg cx, ax                              ; 91
    add byte [bx - 0x7600], al               ; 00 87 00 8A
    add byte [di + 0x27], ah                 ; 00 65 27
    mov byte [bx + si], al                   ; 88 00
    mov word [bx + si], ax                   ; 89 00
    lea ax, [bx + si]                        ; 8D 00
    mov ax, word [0x8c00]                    ; A1 00 8C
    add byte [bp + di - 0x1500], cl          ; 00 8B 00 EB
    add byte [si - 0x6b00], ah               ; 00 A4 00 95
    add byte [bp + si - 0x6d00], ah          ; 00 A2 00 93
    add byte [bx + 0x7e], ch                 ; 00 6F 7E
    xchg sp, ax                              ; 94
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    das                                      ; 2F
    xchg di, ax                              ; 97
    add byte [bp + di - 0x6a00], ah          ; 00 A3 00 96
    add byte [bx + di + 0x7900], al          ; 00 81 00 79
    daa                                      ; 27
    db 070h, 062h                     ; jo 0x490
    db 098h                           ; cwde