; ATTMOUSE/seg2.asm
; Semantic data - verified byte-exact
BITS 16

    add byte [bx + si], al                   ; 00 00
    add al, byte [bx + si]                   ; 02 00
    xor al, byte [bx + si]                   ; 32 00
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
    adc dh, byte [bx + 0x78]                 ; 12 77 78
    db 079h, 000h                     ; jns 0x21
    adc word [si], bx                        ; 11 1C
    push bx                                  ; 53
    add word [bp + di + 0x4d], cx            ; 01 4B 4D
    dec ax                                   ; 48
    push ax                                  ; 50
    add al, byte [si]                        ; 02 04
    add al, byte [bx + si]                   ; 02 00
    add byte [bx + si + 0x1e], dl            ; 00 50 1E
    mov ax, cs                               ; 8C C8
    mov ds, ax                               ; 8E D8
    in al, 0x21                              ; E4 21
    or al, 2                                 ; 0C 02
    out 0x21, al                             ; E6 21
    mov al, 0x20                             ; B0 20
    out 0x20, al                             ; E6 20
    in al, 0x60                              ; E4 60
    sti                                      ; FB
    cmp byte [0x2b], 1                       ; 80 3E 2B 00 01
    db 072h, 031h                     ; jb 0x79
    db 074h, 01Fh                     ; je 0x69
    cmp al, 0xfe                             ; 3C FE
    db 075h, 046h                     ; jne 0x94
    dec byte [0x2b]                          ; FE 0E 2B 00
    cli                                      ; FA
    in al, 0x21                              ; E4 21
    and al, 0xfd                             ; 24 FD
    out 0x21, al                             ; E6 21
    in al, 0x61                              ; E4 61
    db 08Ah, 0E0h                     ; mov ah, al
    or al, 0x80                              ; 0C 80
    out 0x61, al                             ; E6 61
    xchg al, ah                              ; 86 E0
    out 0x61, al                             ; E6 61
    pop ds                                   ; 1F
    pop ax                                   ; 58
    sti                                      ; FB
    iret                                     ; CF
    dec byte [0x2b]                          ; FE 0E 2B 00
    test al, 0x80                            ; A8 80
    db 074h, 002h                     ; je 0x73
    inc al                                   ; FE C0
    db 098h                           ; cwde
    mov word [0x2c], ax                      ; A3 2C 00
    db 0EBh, 0D9h                     ; jmp 0x52
    mov byte [0x2b], 2                       ; C6 06 2B 00 02
    test al, 0x80                            ; A8 80
    db 074h, 002h                     ; je 0x84
    inc al                                   ; FE C0
    db 098h                           ; cwde
    neg ax                                   ; F7 D8
    push bx                                  ; 53
    push cx                                  ; 51
    db 08Bh, 0C8h                     ; mov cx, ax
    mov bx, word [0x2c]                      ; 8B 1E 2C 00
    mov ax, 1                                ; B8 01 00
    db 0EBh, 03Fh                     ; jmp 0xd3
    db 08Ah, 0E0h                     ; mov ah, al
    and ah, 0x7f                             ; 80 E4 7F
    cmp ah, 0x77                             ; 80 FC 77
    db 074h, 02Ah                     ; je 0xc8
    cmp ah, 0x79                             ; 80 FC 79
    db 074h, 01Ch                     ; je 0xbf
    cmp ah, 0x78                             ; 80 FC 78
    db 074h, 00Eh                     ; je 0xb6
    cli                                      ; FA
    in al, 0x21                              ; E4 21
    and al, 0xfd                             ; 24 FD
    out 0x21, al                             ; E6 21
    pop ds                                   ; 1F
    pop ax                                   ; 58
    db 02Eh, 0FFh, 02Eh, 018h, 000h   ; ljmp cs:[0x18]
    test al, 0x80                            ; A8 80
    mov ax, 0x20                             ; B8 20 00
    db 074h, 014h                     ; je 0xd1
    db 0EBh, 010h                     ; jmp 0xcf
    test al, 0x80                            ; A8 80
    mov ax, 8                                ; B8 08 00
    db 074h, 00Bh                     ; je 0xd1
    db 0EBh, 007h                     ; jmp 0xcf
    test al, 0x80                            ; A8 80
    mov ax, 2                                ; B8 02 00
    db 074h, 002h                     ; je 0xd1
    shl ax, 1                                ; D1 E0
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    push bp                                  ; 55
    push es                                  ; 06
    push ds                                  ; 1E
    mov dx, word [2]                         ; 8B 16 02 00
    db 0FFh, 01Eh, 014h, 000h         ; lcall [0x14]
    pop ds                                   ; 1F
    pop es                                   ; 07
    pop bp                                   ; 5D
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 0E9h, 066h, 0FFh               ; jmp 0x52
    dec bp                                   ; 4D
    db 06Fh                           ; outsw dx, word [si]
    db 075h, 073h                     ; jne 0x163
    db 065h, 036h, 033h, 030h         ; xor si, word ss:[bx + si]
    xor byte [bx + si], al                   ; 30 00
    db 075h, 073h                     ; jne 0x16b
    add byte gs:[bp + si + 0x75], ah         ; 65 00 62 75
    db 074h, 074h                     ; je 0x172
    db 06Fh                           ; outsw dx, word [si]
    db 06Eh                           ; outsb dx, byte [si]
    db 073h                           ; 73