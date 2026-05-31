; TOSH/seg3.asm
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
    mov al, byte [0x105]                     ; A0 05 01
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
    add byte [si + 0x3c00], dh               ; 00 B4 00 3C
    add byte [bp + 0x7c00], bh               ; 00 BE 00 7C
    add sp, bp                               ; 01 EC
    or ax, si                                ; 09 F0
    pop es                                   ; 07
    pop ax                                   ; 58
    add ah, byte [bx + si - 6]               ; 02 60 FA
    cmp byte [bp + di + 0x60], ah            ; 38 63 60
    dec di                                   ; 4F
    pop ax                                   ; 58
    add ah, byte [bx + si - 6]               ; 02 60 FA
    db 0E8h, 003h, 020h               ; call 0x2056
    add bx, word [bx + si + 2]               ; 03 58 02
    pushaw                                   ; 60
    cli                                      ; FA
    adc byte [bx], ah                        ; 10 27
    inc ax                                   ; 40
    pop ds                                   ; 1F
    pop ax                                   ; 58
    add ah, byte [bx + si - 6]               ; 02 60 FA
    inc ax                                   ; 40
    cmp byte [bx + si], al                   ; 38 00
    sub ax, 0x258                            ; 2D 58 02
    pushaw                                   ; 60
    cli                                      ; FA
    cmp al, 0                                ; 3C 00
    mov ah, 0                                ; B4 00
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
    add byte [bx + si + 0x5805], ah          ; 00 A0 05 58
    add al, byte [bx + di]                   ; 02 01
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
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], al                   ; 00 03
    add byte [si], bh                        ; 00 3C
    add byte [si - 0x4200], dh               ; 00 B4 00 BE
    add byte [si + 1], bh                    ; 00 7C 01
    db 0F0h                           ; F0
    pop es                                   ; 07
    in al, dx                                ; EC
    or word [bx + si - 0x57fb], sp           ; 09 A0 05 A8
    std                                      ; FD
    pushaw                                   ; 60
    dec di                                   ; 4F
    cmp byte [bp + di - 0x60], ah            ; 38 63 A0
    add ax, 0xfda8                           ; 05 A8 FD
    and byte [bp + di], al                   ; 20 03
    db 0E8h, 003h, 0A0h               ; call 0xffffa0c0
    add ax, 0xfda8                           ; 05 A8 FD
    inc ax                                   ; 40
    pop ds                                   ; 1F
    adc byte [bx], ah                        ; 10 27
    mov al, byte [0xa805]                    ; A0 05 A8
    std                                      ; FD
    add byte [di], ch                        ; 00 2D
    inc ax                                   ; 40
    cmp byte [bx + si - 0x57fb], ah          ; 38 A0 05 A8
    std                                      ; FD
    mov ah, 0                                ; B4 00
    cmp al, 0                                ; 3C 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    sbb bx, word [bp + si]                   ; 1B 1A
    dec cx                                   ; 49
    sbb bp, word [bp + si]                   ; 1B 2A
    xor al, byte [bx + si]                   ; 32 00
    sbb bx, word [bp + si]                   ; 1B 1A
    dec cx                                   ; 49
    sbb bp, word [bp + si]                   ; 1B 2A
    xor al, byte [bx + si]                   ; 32 00
    add byte [bx + di + 0x63], ch            ; 00 69 63
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 06Eh                     ; jne 0x162
    db 074h, 072h                     ; je 0x168
    db 079h, 000h                     ; jns 0xf8
    db 069h, 06Eh, 074h, 06Ch, 000h   ; imul bp, word [bp + 0x74], 0x6c
    add byte [bp + di], bl                   ; 00 1B
    cmp ax, word [bx + si]                   ; 3B 00
    add byte [bx + si], dh                   ; 00 30
    xor byte [bx + si], dh                   ; 30 30
    xor byte [bx + si], al                   ; 30 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    push si                                  ; 56
    inc ax                                   ; 40
    inc ax                                   ; 40
    inc cx                                   ; 41
    and byte [bx + si], al                   ; 20 00
    sbb di, word [bp + di]                   ; 1B 3B
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si + 0x74], ah                 ; 00 64 74
    dec bp                                   ; 4D
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 07Ch, 0BEh                     ; jl 0xe4
    cmp al, 0xb4                             ; 3C B4
    inc bx                                   ; 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x19e
    imul sp, word [di + 0x72], 0x4300        ; 69 65 72 00 43
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 072h                     ; jne 0x1a6
    imul sp, word [di + 0x72], 0x4520        ; 69 65 72 20 45
    db 078h, 070h                     ; js 0x1ab
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 045h, 06Ch ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x1c0
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add cx, word [bx + si]                   ; 03 08
    adc al, byte [bx + si]                   ; 12 00
    add al, 0                                ; 04 00
    add byte [bx + di], al                   ; 00 01
    add cx, word [bx + si]                   ; 03 08
    and al, 0                                ; 24 00
    add al, 0                                ; 04 00
    add byte [bp + si], al                   ; 00 02
    add cx, word [bx + si]                   ; 03 08
    adc al, byte [bx + si]                   ; 12 00
    add al, 0                                ; 04 00
    add byte [bp + di], al                   ; 00 03
    add cx, word [bx + si]                   ; 03 08
    and al, 0                                ; 24 00
    add al, 0x28                             ; 04 28
    add word [bx + si], si                   ; 01 30
    add word [bx + di + 1], ax               ; 01 41 01
    inc di                                   ; 47
    add word [si + 0x6f], si                 ; 01 74 6F
    db 073h, 068h                     ; jae 0x1ea
    add byte [bx + si], al                   ; 00 00
    xor byte [bx + si], dh                   ; 30 30
    xor byte [bx + si], dh                   ; 30 30
    mov dh, 1                                ; B6 01
    and byte [bx + si], al                   ; 20 00
    sbb di, word [bp + di]                   ; 1B 3B
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 049h, 000h               ; sbb cx, word [bx + di]
    db 01Bh, 04Ah, 000h               ; sbb cx, word [bp + si]
    or ax, 0x1b00                            ; 0D 00 1B
    sub dh, byte [bx + si]                   ; 2A 30
    db 01Bh, 05Bh, 000h               ; sbb bx, word [bp + di]
    sbb bx, word [di + 0x1b]                 ; 1B 5D 1B
    sub dh, byte [bp + si]                   ; 2A 32
    add byte [bp + di], bl                   ; 00 1B
    pop bp                                   ; 5D
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bx + si], ax                   ; 31 00
    sbb bp, word [bp + si]                   ; 1B 2A
    xor byte [bp + di], bl                   ; 30 1B
    pop bx                                   ; 5B
    sbb bx, word [di + 0x1b]                 ; 1B 5D 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bx + si]                   ; 2A 30
    sbb bx, word [bp + di + 0x1b]            ; 1B 5B 1B
    and word [bp + di], bx                   ; 21 1B
    and bl, byte [bp + di]                   ; 22 1B
    pop bp                                   ; 5D
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb sp, word [bx + di]                   ; 1B 21
    sbb sp, word [bp + si]                   ; 1B 22
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bp + si]                   ; 2A 32
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bp + si]                   ; 2A 32
    sbb sp, word [bx + di]                   ; 1B 21
    sbb sp, word [bp + si]                   ; 1B 22
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bx, word [bx]                        ; 1B 1F
    or bx, word [bp + di]                    ; 0B 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    and word [bp + di], bx                   ; 21 1B
    pop ds                                   ; 1F
    or bx, word [bp + di]                    ; 0B 1B
    and bl, byte [bp + di]                   ; 22 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bp, word [bp + si]                   ; 1B 2A
    xor word [bp + di], bx                   ; 31 1B
    and word [bp + di], bx                   ; 21 1B
    and bl, byte [bp + di]                   ; 22 1B
    sub dh, byte [bx + di]                   ; 2A 31
    sbb bx, word [bp + si]                   ; 1B 1A
    dec cx                                   ; 49
    sbb ax, word [bp + 0x1b]                 ; 1B 46 1B
    push ds                                  ; 1E
    sbb bx, word [bx]                        ; 1B 1F
    sbb cx, word [bx + di + 0x1b]            ; 1B 49 1B
    dec dx                                   ; 4A
    sbb cx, word [bx + di + 0x1b]            ; 1B 49 1B
    dec dx                                   ; 4A
    sbb ax, word [si + 0x1b]                 ; 1B 44 1B
    push bp                                  ; 55
    sbb dx, word [di + 0x1b]                 ; 1B 55 1B
    inc sp                                   ; 44
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    adc al, 0                                ; 14 00
    cli                                      ; FA
    add ax, 0x294                            ; 05 94 02
    sub ax, 0x1e00                           ; 2D 00 1E
    add byte [si + 0x1502], dl               ; 00 94 02 15
    add byte [di], dl                        ; 00 15
    add al, dl                               ; 00 D0
    add ax, 0x2be                            ; 05 BE 02
    sbb byte [bx + si], al                   ; 18 00
    xor ax, word [bx + si]                   ; 33 00
    mov si, 0x2a02                           ; BE 02 2A
    add byte [0xcd00], dl                    ; 00 16 00 CD
    add ax, 0x2d0                            ; 05 D0 02
    push ss                                  ; 16
    add byte [si], bh                        ; 00 3C
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [si], dl                        ; 00 14
    add byte [si - 0x5fe], dl                ; 00 94 02 FA
    db 005h, 01Eh, 000h               ; add ax, 0x1e
    sub ax, 0x9400                           ; 2D 00 94
    add dl, byte [di]                        ; 02 15
    add byte [di], dl                        ; 00 15
    add byte [bp - 0x2ffe], bh               ; 00 BE 02 D0
    db 005h, 033h, 000h               ; add ax, 0x33
    sbb byte [bx + si], al                   ; 18 00
    mov si, 0x2a02                           ; BE 02 2A
    add byte [0xd000], dl                    ; 00 16 00 D0
    db 002h, 0CDh                     ; add cl, ch
    db 005h, 03Ch, 000h               ; add ax, 0x3c
    push ss                                  ; 16
    add al, dl                               ; 00 D0
    add dh, byte [bp + di]                   ; 02 33
    add byte [si + 0x101], dl                ; 00 94 01 01
    xchg si, ax                              ; 96
    add word [bx + di], ax                   ; 01 01
    db 098h                           ; cwde
    add word [bx + di], ax                   ; 01 01
    db 09Ah, 001h, 001h, 09Ch, 001h   ; lcall 0x19c, 0x101
    add bl, byte [bx + 0x201]                ; 02 9F 01 02
    mov byte [0x101], al                     ; A2 01 01
    db 0A4h                           ; movsb byte es:[di], byte [si]
    add word [di], ax                        ; 01 05
    db 0AAh                           ; stosb byte es:[di], al
    add word [di], ax                        ; 01 05
    mov al, 1                                ; B0 01
    add ax, 0x8889                           ; 05 89 88
    add byte [bx + si], al                   ; 00 00
    sub byte [bx + si], al                   ; 28 00
    mov al, byte [0x505]                     ; A0 05 05
    add byte [bx + di], al                   ; 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    sbb al, 0                                ; 1C 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 2], ch               ; 00 68 02
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 088h, 088h, 000h, 000h         ; mov byte [bx + si], cl
    mov al, byte [0x2805]                    ; A0 05 28
    add byte [si + 0x100], dh                ; 00 B4 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    sbb al, 0                                ; 1C 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [2], bh                         ; 00 3E 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], ah                   ; 00 20
    add byte [0xb400], ch                    ; 00 2E 00 B4
    add byte [bp + di + 0x2e00], ah          ; 00 A3 00 2E
    add byte [bx + si + 0x7c00], dh          ; 00 B0 00 7C
    add byte [bx + di - 0x4200], ch          ; 00 A9 00 BE
    add byte [bp + di + 0x6100], ch          ; 00 AB 00 61
    pop di                                   ; 5F
    cmp al, 0x3d                             ; 3C 3D
    db 07Eh, 000h                     ; jle 0x35a
    add byte cs:[bp + si + 0x2d00], ch       ; 2E 00 AA 00 2D
    add byte [bp + 0x2b00], ah               ; 00 A6 00 2B
    pop di                                   ; 5F
    add byte cs:[0xa000], ch                 ; 2E 00 2E 00 A0
    add byte [di - 0x5100], ah               ; 00 A5 00 AF
    add byte [bx + 0x2c00], ah               ; 00 A7 00 2C
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    pop di                                   ; 5F
    db 03Eh, 03Dh, 0ACh, 000h         ; cmp ax, 0xac
    db 0AEh                           ; scasb al, byte es:[di]
    add byte [di + 0x2e00], ch               ; 00 AD 00 2E
    add byte [bx + di - 0x5c], al            ; 00 41 A4
    inc cx                                   ; 41
    mov al, byte [0x5e41]                    ; A0 41 5E
    inc cx                                   ; 41
    db 07Eh, 0B1h                     ; jle 0x33a
    add byte [bx + di - 0x5a], al            ; 00 41 A6
    inc cx                                   ; 41
    add byte [bp + di + 0x2c], al            ; 00 43 2C
    inc bp                                   ; 45
    db 0A4h                           ; movsb byte es:[di], byte [si]
    inc bp                                   ; 45
    mov al, byte [0x5e45]                    ; A0 45 5E
    inc bp                                   ; 45
    mov si, 0xa449                           ; BE 49 A4
    dec cx                                   ; 49
    mov al, byte [0x5e49]                    ; A0 49 5E
    dec cx                                   ; 49
    mov si, 0x2d44                           ; BE 44 2D
    dec si                                   ; 4E
    db 07Eh, 04Fh                     ; jle 0x3f4
    db 0A4h                           ; movsb byte es:[di], byte [si]
    dec di                                   ; 4F
    mov al, byte [0x5e4f]                    ; A0 4F 5E
    dec di                                   ; 4F
    db 07Eh, 0B2h                     ; jle 0x35f
    add byte [0x3000], ch                    ; 00 2E 00 30
    das                                      ; 2F
    push bp                                  ; 55
    db 0A4h                           ; movsb byte es:[di], byte [si]
    push bp                                  ; 55
    mov al, byte [0x5e55]                    ; A0 55 5E
    push bp                                  ; 55
    mov si, 0xa059                           ; BE 59 A0
    db 070h, 062h                     ; jo 0x420
    mov cx, 0xa100                           ; B9 00 A1
    add byte [bx + di - 0x60], ah            ; 00 61 A0
    popaw                                    ; 61
    pop si                                   ; 5E
    popaw                                    ; 61
    db 07Eh, 0B6h                     ; jle 0x37f
    add byte [bx + di - 0x5a], ah            ; 00 61 A6
    popaw                                    ; 61
    add byte [bp + si - 0x4300], ah          ; 00 A2 00 BD
    add byte [bp + di + 0x6500], bh          ; 00 BB 00 65
    pop si                                   ; 5E
    db 065h, 0BEh, 069h, 0A4h         ; mov si, 0xa469
    imul sp, word [bx + si + 0x5e69], 0xbe69 ; 69 A0 69 5E 69 BE
    add byte cs:[bp + 0x7e], ch              ; 2E 00 6E 7E
    db 06Fh                           ; outsw dx, word [si]
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 06Fh                           ; outsw dx, word [si]
    mov al, byte [0x5e6f]                    ; A0 6F 5E
    db 06Fh                           ; outsw dx, word [si]
    db 07Eh, 0B7h                     ; jle 0x3a4
    add byte [0x6f00], ch                    ; 00 2E 00 6F
    das                                      ; 2F
    mov sp, 0x7500                           ; BC 00 75
    mov al, byte [0x5e75]                    ; A0 75 5E
    mov ax, 0x7900                           ; B8 00 79
    daa                                      ; 27
    db 070h, 062h                     ; jo 0x460
    db 079h, 0BEh                     ; jns 0x3be