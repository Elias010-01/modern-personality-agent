; MSMOUSE2/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + di], al                   ; 00 01
    add ax, word [bx + si]                   ; 03 00
    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push ds                                  ; 1E
    mov ax, cs                               ; 8C C8
    mov ds, ax                               ; 8E D8
    db 0E8h, 024h, 000h               ; call 0x52
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Fh                     ; je 0x41
    mov dx, 3                                ; BA 03 00
    push si                                  ; 56
    push di                                  ; 57
    push bp                                  ; 55
    push es                                  ; 06
    db 0FFh, 01Eh, 016h, 000h         ; lcall [0x16]
    pop es                                   ; 07
    pop bp                                   ; 5D
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop ds                                   ; 1F
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    iret                                     ; CF
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di + 0xe16], cl           ; 00 8B 16 0E
    add ah, ch                               ; 00 EC
    db 08Ah, 0D0h                     ; mov dl, al
    and dl, 0xf8                             ; 80 E2 F8
    cmp dl, 0x80                             ; 80 FA 80
    db 074h, 003h                     ; je 0x64
    db 0EBh, 059h                     ; jmp 0xbc
    nop                                      ; 90
    db 033h, 0D2h                     ; xor dx, dx
    mov word [0x48], dx                      ; 89 16 48 00
    not ax                                   ; F7 D0
    mov cl, 4                                ; B1 04
    db 0E8h, 092h, 000h               ; call 0x103
    db 074h, 00Eh                     ; je 0x81
    db 077h, 007h                     ; ja 0x7c
    or byte [0x48], 4                        ; 80 0E 48 00 04
    db 0EBh, 005h                     ; jmp 0x81
    or byte [0x48], 2                        ; 80 0E 48 00 02
    mov cl, 1                                ; B1 01
    db 0E8h, 07Dh, 000h               ; call 0x103
    db 074h, 00Eh                     ; je 0x96
    db 077h, 007h                     ; ja 0x91
    or byte [0x48], 0x10                     ; 80 0E 48 00 10
    db 0EBh, 005h                     ; jmp 0x96
    or byte [0x48], 8                        ; 80 0E 48 00 08
    mov cl, 2                                ; B1 02
    db 0E8h, 068h, 000h               ; call 0x103
    db 074h, 00Eh                     ; je 0xab
    db 077h, 007h                     ; ja 0xa6
    or byte [0x48], 0x40                     ; 80 0E 48 00 40
    db 0EBh, 005h                     ; jmp 0xab
    or byte [0x48], 0x20                     ; 80 0E 48 00 20
    db 033h, 0C0h                     ; xor ax, ax
    mov word [0x4e], ax                      ; A3 4E 00
    mov word [0x4c], ax                      ; A3 4C 00
    mov byte [0x50], 1                       ; C6 06 50 00 01
    db 033h, 0C0h                     ; xor ax, ax
    db 0EBh, 03Fh                     ; jmp 0xfb
    cmp byte [0x50], 0                       ; 80 3E 50 00 00
    db 074h, 0F5h                     ; je 0xb8
    mov bx, 0x4c                             ; BB 4C 00
    test byte [0x50], 1                      ; F6 06 50 00 01
    db 075h, 003h                     ; jne 0xd0
    mov bx, 0x4e                             ; BB 4E 00
    db 098h                           ; cwde
    add word [bx], ax                        ; 01 07
    inc byte [0x50]                          ; FE 06 50 00
    cmp byte [0x50], 5                       ; 80 3E 50 00 05
    db 072h, 0DAh                     ; jb 0xb8
    mov cx, word [0x4e]                      ; 8B 0E 4E 00
    neg cx                                   ; F7 D9
    mov bx, word [0x4c]                      ; 8B 1E 4C 00
    mov byte [0x50], 0                       ; C6 06 50 00 00
    db 08Bh, 0C3h                     ; mov ax, bx
    db 00Bh, 0C1h                     ; or ax, cx
    db 074h, 005h                     ; je 0xf8
    or byte [0x48], 1                        ; 80 0E 48 00 01
    mov ax, word [0x48]                      ; A1 48 00
    push ax                                  ; 50
    mov al, 0x20                             ; B0 20
    out 0x20, al                             ; E6 20
    sti                                      ; FB
    pop ax                                   ; 58
    ret                                      ; C3
    db 032h, 0EDh                     ; xor ch, ch
    db 08Ah, 0D0h                     ; mov dl, al
    db 023h, 0D1h                     ; and dx, cx
    not cx                                   ; F7 D1
    and cx, word [0x4a]                      ; 23 0E 4A 00
    db 00Bh, 0D1h                     ; or dx, cx
    xchg word [0x4a], dx                     ; 87 16 4A 00
    cmp word [0x4a], dx                      ; 39 16 4A 00
    ret                                      ; C3
    clc                                      ; F8
    add cl, byte [bp + di]                   ; 02 0B
    db 0F7h                           ; F7