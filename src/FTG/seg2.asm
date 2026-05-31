; FTG/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
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
    inc word [bx + si]                       ; FF 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si + 0x2e], dl            ; 00 50 2E
    cmp byte [0x19], 0                       ; 80 3E 19 00 00
    db 074h, 03Ah                     ; je 0x79
    dec byte cs:[0x29]                       ; 2E FE 0E 29 00
    db 075h, 033h                     ; jne 0x79
    mov byte cs:[0x19], 0                    ; 2E C6 06 19 00 00
    mov byte cs:[0x29], 2                    ; 2E C6 06 29 00 02
    push ds                                  ; 1E
    push es                                  ; 06
    push si                                  ; 56
    push di                                  ; 57
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    mov ax, cs                               ; 8C C8
    mov ds, ax                               ; 8E D8
    db 0E8h, 024h, 000h               ; call 0x84
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 008h                     ; je 0x6c
    mov dx, word [2]                         ; 8B 16 02 00
    db 0FFh, 01Eh, 02Ah, 000h         ; lcall [0x2a]
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop es                                   ; 07
    pop ds                                   ; 1F
    mov byte cs:[0x19], 0xff                 ; 2E C6 06 19 00 FF
    mov al, 0x20                             ; B0 20
    out 0xa0, al                             ; E6 A0
    db 0EBh, 001h                     ; jmp 0x80
    nop                                      ; 90
    out 0x20, al                             ; E6 20
    pop ax                                   ; 58
    iret                                     ; CF
    mov ah, 4                                ; B4 04
    pushf                                    ; 9C
    db 0FFh, 01Eh, 032h, 000h         ; lcall [0x32]
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 00Eh                     ; jne 0x9d
    mov ax, 0x8005                           ; B8 05 80
    mov bx, word [0x23]                      ; 8B 1E 23 00
    mov cx, word [0x25]                      ; 8B 0E 25 00
    db 0E9h, 096h, 000h               ; jmp 0x133
    mov dx, 0x8005                           ; BA 05 80
    test al, 2                               ; A8 02
    db 074h, 003h                     ; je 0xa7
    xor dl, 6                                ; 80 F2 06
    push dx                                  ; 52
    mov dx, word [0x34]                      ; 8B 16 34 00
    mov es, dx                               ; 8E C2
    mov di, word [0x32]                      ; 8B 3E 32 00
    mov di, word es:[di + 0x41]              ; 26 8B 7D 41
    mov al, byte es:[di]                     ; 26 8A 05
    cmp al, byte [0x18]                      ; 3A 06 18 00
    db 074h, 044h                     ; je 0x103
    mov byte [0x18], al                      ; A2 18 00
    mov al, byte es:[di + 0x12]              ; 26 8A 45 12
    mov byte [0x1a], al                      ; A2 1A 00
    push bx                                  ; 53
    push cx                                  ; 51
    mov bx, word es:[di + 5]                 ; 26 8B 5D 05
    mov ax, 0xffff                           ; B8 FF FF
    db 033h, 0D2h                     ; xor dx, dx
    div bx                                   ; F7 F3
    mov word [0x1b], ax                      ; A3 1B 00
    mov cl, 6                                ; B1 06
    shl dx, cl                               ; D3 E2
    db 08Bh, 0C2h                     ; mov ax, dx
    db 033h, 0D2h                     ; xor dx, dx
    div bx                                   ; F7 F3
    mov word [0x1f], ax                      ; A3 1F 00
    mov bx, word es:[di + 0xb]               ; 26 8B 5D 0B
    mov ax, 0xffff                           ; B8 FF FF
    db 033h, 0D2h                     ; xor dx, dx
    div bx                                   ; F7 F3
    mov word [0x1d], ax                      ; A3 1D 00
    mov cl, 6                                ; B1 06
    shl dx, cl                               ; D3 E2
    db 08Bh, 0C2h                     ; mov ax, dx
    db 033h, 0D2h                     ; xor dx, dx
    div bx                                   ; F7 F3
    mov word [0x21], ax                      ; A3 21 00
    pop cx                                   ; 59
    pop bx                                   ; 5B
    cmp byte [0x1a], 0                       ; 80 3E 1A 00 00
    db 074h, 002h                     ; je 0x10c
    xchg cl, ch                              ; 86 E9
    push cx                                  ; 51
    mov ax, word [0x1b]                      ; A1 1B 00
    mul bx                                   ; F7 E3
    push ax                                  ; 50
    mov ax, word [0x1f]                      ; A1 1F 00
    mul bx                                   ; F7 E3
    mov cl, 6                                ; B1 06
    shr ax, cl                               ; D3 E8
    pop bx                                   ; 5B
    db 003h, 0D8h                     ; add bx, ax
    pop cx                                   ; 59
    mov ax, word [0x1d]                      ; A1 1D 00
    mul cx                                   ; F7 E1
    push ax                                  ; 50
    mov ax, word [0x21]                      ; A1 21 00
    mul cx                                   ; F7 E1
    mov cl, 6                                ; B1 06
    shr ax, cl                               ; D3 E8
    pop cx                                   ; 59
    db 003h, 0C8h                     ; add cx, ax
    pop ax                                   ; 58
    cmp word [0x27], ax                      ; 39 06 27 00
    db 074h, 006h                     ; je 0x13f
    mov word [0x27], ax                      ; A3 27 00
    db 0EBh, 012h                     ; jmp 0x150
    nop                                      ; 90
    db 025h, 0F9h, 0FFh               ; and ax, 0xfff9
    cmp bx, word [0x23]                      ; 3B 1E 23 00
    db 075h, 008h                     ; jne 0x150
    cmp cx, word [0x25]                      ; 3B 0E 25 00
    db 075h, 002h                     ; jne 0x150
    db 033h, 0C0h                     ; xor ax, ax
    mov word [0x23], bx                      ; 89 1E 23 00
    mov word [0x25], cx                      ; 89 0E 25 00
    ret                                      ; C3