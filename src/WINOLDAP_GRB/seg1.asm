; WINOLDAP_GRB/seg1.asm
; Semantic reconstruction - verified byte-exact
BITS 16

    db 0EBh, 02Eh                     ; jmp 0x30
    nop                                      ; 90
    db 0EBh, 038h                     ; jmp 0x3d
    nop                                      ; 90
    db 0EBh, 07Fh                     ; jmp 0x87
    nop                                      ; 90
    db 0E9h, 087h, 000h               ; jmp 0x93
    db 0E9h, 080h, 003h               ; jmp 0x38f
    db 0E9h, 092h, 003h               ; jmp 0x3a4
    db 0E9h, 000h, 004h               ; jmp 0x415
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 001h                     ; add byte [bx + di], al
    db 001h, 000h                     ; add word [bx + si], ax
    db 0B8h, 000h, 020h               ; mov ax, 0x2000
    db 03Dh, 001h, 000h               ; cmp ax, 1
    db 0B8h, 008h, 008h               ; mov ax, 0x808
    db 074h, 003h                     ; je 0x3b
    db 0B8h, 010h, 040h               ; mov ax, 0x4010
    db 099h                           ; cdq
    db 0CBh                           ; retf
    db 089h, 03Eh, 017h, 000h         ; mov word [0x17], di
    db 08Ch, 006h, 019h, 000h         ; mov word [0x19], es
    db 003h, 0C7h                     ; add ax, di
    db 0A3h, 015h, 000h               ; mov word [0x15], ax
    db 0B8h, 009h, 035h               ; mov ax, 0x3509
    db 0CDh, 021h                     ; int 0x21
    db 089h, 01Eh, 01Eh, 000h         ; mov word [0x1e], bx
    db 08Ch, 006h, 020h, 000h         ; mov word [0x20], es
    db 0BAh, 05Ch, 001h               ; mov dx, 0x15c
    db 0B8h, 009h, 025h               ; mov ax, 0x2509
    db 0CDh, 021h                     ; int 0x21
    db 080h, 03Eh, 01Ch, 000h, 000h   ; cmp byte [0x1c], 0
    db 075h, 020h                     ; jne 0x86
    db 01Eh                           ; push ds
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0F6h, 006h, 096h, 004h, 010h   ; test byte [0x496], 0x10
    db 01Fh                           ; pop ds
    db 074h, 00Eh                     ; je 0x81
    db 0B4h, 091h                     ; mov ah, 0x91
    db 0CDh, 016h                     ; int 0x16
    db 0F6h, 0C4h, 080h               ; test ah, 0x80
    db 075h, 005h                     ; jne 0x81
    db 0C6h, 006h, 01Dh, 000h, 001h   ; mov byte [0x1d], 1
    db 0C6h, 006h, 01Ch, 000h, 001h   ; mov byte [0x1c], 1
    db 0CBh                           ; retf
    db 01Eh                           ; push ds
    db 0C5h, 016h, 01Eh, 000h         ; lds dx, [0x1e]
    db 0B8h, 009h, 025h               ; mov ax, 0x2509
    db 0CDh, 021h                     ; int 0x21
    db 01Fh                           ; pop ds
    db 0CBh                           ; retf
    db 091h                           ; xchg cx, ax
    db 0B4h, 00Fh                     ; mov ah, 0xf
    db 0CDh, 010h                     ; int 0x10
    db 03Ch, 007h                     ; cmp al, 7
    db 074h, 004h                     ; je 0xa0
    db 03Ch, 004h                     ; cmp al, 4
    db 073h, 03Bh                     ; jae 0xdb
    db 00Bh, 0C9h                     ; or cx, cx
    db 08Ah, 0ECh                     ; mov ch, ah
    db 074h, 023h                     ; je 0xc9
    db 033h, 0D2h                     ; xor dx, dx
    db 0B4h, 002h                     ; mov ah, 2
    db 0CDh, 010h                     ; int 0x10
    db 0B4h, 008h                     ; mov ah, 8
    db 0CDh, 010h                     ; int 0x10
    db 03Ch, 020h                     ; cmp al, 0x20
    db 075h, 015h                     ; jne 0xc9
    db 080h, 0C2h, 002h               ; add dl, 2
    db 03Ah, 0D5h                     ; cmp dl, ch
    db 072h, 0EDh                     ; jb 0xa8
    db 0FEh, 0C6h                     ; inc dh
    db 08Ah, 0D6h                     ; mov dl, dh
    db 080h, 0E2h, 001h               ; and dl, 1
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 0E1h                     ; jb 0xa8
    db 0EBh, 012h                     ; jmp 0xdb
    db 0B6h, 016h                     ; mov dh, 0x16
    db 0BEh, 0DCh, 000h               ; mov si, 0xdc
    db 0E8h, 06Bh, 000h               ; call 0x13c
    db 0E8h, 068h, 000h               ; call 0x13c
    db 0E8h, 065h, 000h               ; call 0x13c
    db 033h, 0C0h                     ; xor ax, ax
    db 0CDh, 016h                     ; int 0x16
    db 0CBh                           ; retf
    db 0DAh, 0C4h                     ; fcmovb st(0), st(4)
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h, 0BFh, 0B3h, 020h         ; les di, [bx + 0x20b3]
    push ax                                  ; 50
    db 072h, 065h                     ; jb 0x166
    db 073h, 073h                     ; jae 0x176
    db 020h, 061h, 06Eh               ; and byte [bx + di + 0x6e], ah
    db 079h, 020h                     ; jns 0x128
    db 06Bh, 065h, 079h, 020h         ; imul sp, word [di + 0x79], 0x20
    db 074h, 06Fh                     ; je 0x17d
    db 020h, 063h, 06Fh               ; and byte [bp + di + 0x6f], ah
    db 06Eh                           ; outsb dx, byte [si]
    db 074h, 069h                     ; je 0x17d
    db 06Eh                           ; outsb dx, byte [si]
    db 075h, 065h                     ; jne 0x17c
    db 02Eh, 02Eh, 02Eh, 020h, 0B3h, 0C0h, 0C4h ; and byte cs:[bp + di - 0x3b40], dh
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0C4h                           ; C4
    db 0D9h, 051h, 08Ah               ; fst dword [bx + di - 0x76]
    db 0D5h, 0B9h                     ; aad 0xb9
    db 020h, 000h                     ; and byte [bx + si], al
    db 02Ah, 0D1h                     ; sub dl, cl
    push cx                                  ; 51
    db 0B4h, 002h                     ; mov ah, 2
    db 0CDh, 010h                     ; int 0x10
    db 0ACh                           ; lodsb al, byte [si]
    db 0B3h, 00Fh                     ; mov bl, 0xf
    db 0B9h, 001h, 000h               ; mov cx, 1
    db 0B4h, 009h                     ; mov ah, 9
    db 0CDh, 010h                     ; int 0x10
    db 0FEh, 0C2h                     ; inc dl
    pop cx                                   ; 59
    db 0E2h, 0ECh                     ; loop 0x144
    db 0FEh, 0C6h                     ; inc dh
    pop cx                                   ; 59
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    push ax                                  ; 50
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0F6h, 006h, 017h, 004h, 008h   ; test byte [0x417], 8
    db 075h, 007h                     ; jne 0x170
    pop ax                                   ; 58
    db 01Fh                           ; pop ds
    db 02Eh, 0FFh, 02Eh, 01Eh, 000h   ; ljmp cs:[0x1e]
    db 0E4h, 060h                     ; in al, 0x60
    db 03Ch, 037h                     ; cmp al, 0x37
    db 074h, 00Ch                     ; je 0x182
    db 02Eh, 080h, 03Eh, 01Dh, 000h, 000h ; cmp byte cs:[0x1d], 0
    db 074h, 0EBh                     ; je 0x169
    db 03Ch, 054h                     ; cmp al, 0x54
    db 075h, 0E7h                     ; jne 0x169
    pushf                                    ; 9C
    db 02Eh, 0FFh, 01Eh, 01Eh, 000h   ; lcall cs:[0x1e]
    sti                                      ; FB
    push bp                                  ; 55
    db 006h                           ; push es
    push si                                  ; 56
    push di                                  ; 57
    push dx                                  ; 52
    push cx                                  ; 51
    push bx                                  ; 53
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    cld                                      ; FC
    db 0B0h, 001h                     ; mov al, 1
    db 086h, 006h, 01Bh, 000h         ; xchg byte [0x1b], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 01Dh                     ; jne 0x1ba
    db 0B4h, 00Fh                     ; mov ah, 0xf
    db 0CDh, 010h                     ; int 0x10
    db 08Bh, 0F0h                     ; mov si, ax
    db 03Ch, 007h                     ; cmp al, 7
    db 074h, 00Bh                     ; je 0x1b2
    db 077h, 00Ch                     ; ja 0x1b5
    db 03Ch, 004h                     ; cmp al, 4
    db 072h, 005h                     ; jb 0x1b2
    db 0E8h, 0ADh, 000h               ; call 0x25d
    db 0EBh, 003h                     ; jmp 0x1b5
    db 0E8h, 00Fh, 000h               ; call 0x1c4
    db 0C6h, 006h, 01Bh, 000h, 000h   ; mov byte [0x1b], 0
    pop bx                                   ; 5B
    pop cx                                   ; 59
    pop dx                                   ; 5A
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 007h                           ; pop es
    pop bp                                   ; 5D
    pop ax                                   ; 58
    db 01Fh                           ; pop ds
    iret                                     ; CF
    db 0B4h, 003h                     ; mov ah, 3
    db 0CDh, 010h                     ; int 0x10
    db 08Bh, 0CEh                     ; mov cx, si
    db 08Bh, 0F2h                     ; mov si, dx
    db 0C4h, 03Eh, 017h, 000h         ; les di, [0x17]
    db 026h, 0C7h, 005h, 001h, 000h   ; mov word es:[di], 1
    db 026h, 0C7h, 045h, 002h, 000h, 000h ; mov word es:[di + 2], 0
    db 083h, 0C7h, 004h               ; add di, 4
    db 033h, 0D2h                     ; xor dx, dx
    db 0B8h, 00Dh, 00Ah               ; mov ax, 0xa0d
    db 0ABh                           ; stosw word es:[di], ax
    db 0E8h, 05Dh, 000h               ; call 0x244
    db 03Ch, 0FFh                     ; cmp al, 0xff
    db 074h, 004h                     ; je 0x1ef
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 002h                     ; jne 0x1f1
    db 0B0h, 020h                     ; mov al, 0x20
    db 0AAh                           ; stosb byte es:[di], al
    db 0FEh, 0C2h                     ; inc dl
    db 03Ah, 0D5h                     ; cmp dl, ch
    db 072h, 0ECh                     ; jb 0x1e4
    db 026h, 080h, 07Dh, 0FFh, 020h   ; cmp byte es:[di - 1], 0x20
    db 075h, 003h                     ; jne 0x202
    dec di                                   ; 4F
    db 0EBh, 0F6h                     ; jmp 0x1f8
    db 0FEh, 0C6h                     ; inc dh
    db 032h, 0D2h                     ; xor dl, dl
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 0D5h                     ; jb 0x1e0
    db 0B8h, 00Dh, 00Ah               ; mov ax, 0xa0d
    db 083h, 0EFh, 002h               ; sub di, 2
    db 026h, 039h, 005h               ; cmp word es:[di], ax
    db 074h, 0F8h                     ; je 0x20e
    db 083h, 0C7h, 002h               ; add di, 2
    db 0ABh                           ; stosw word es:[di], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0AAh                           ; stosb byte es:[di], al
    db 033h, 0D2h                     ; xor dx, dx
    db 0E8h, 022h, 000h               ; call 0x244
    db 0FEh, 0C2h                     ; inc dl
    db 03Ah, 0D5h                     ; cmp dl, ch
    db 072h, 0F7h                     ; jb 0x21f
    db 0B2h, 000h                     ; mov dl, 0
    db 0FEh, 0C6h                     ; inc dh
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 0EEh                     ; jb 0x21f
    db 08Bh, 0D6h                     ; mov dx, si
    db 0B4h, 002h                     ; mov ah, 2
    db 0CDh, 010h                     ; int 0x10
    db 0C4h, 01Eh, 017h, 000h         ; les bx, [0x17]
    db 083h, 0EFh, 004h               ; sub di, 4
    db 026h, 089h, 03Eh, 002h, 000h   ; mov word es:[2], di
    db 0C3h                           ; ret
    push cx                                  ; 51
    db 0B4h, 002h                     ; mov ah, 2
    db 0CDh, 010h                     ; int 0x10
    db 0B4h, 008h                     ; mov ah, 8
    db 0CDh, 010h                     ; int 0x10
    push ax                                  ; 50
    db 080h, 0F4h, 077h               ; xor ah, 0x77
    db 08Ah, 0DCh                     ; mov bl, ah
    db 0B9h, 001h, 000h               ; mov cx, 1
    db 0B4h, 009h                     ; mov ah, 9
    db 0CDh, 010h                     ; int 0x10
    pop ax                                   ; 58
    pop cx                                   ; 59
    db 0C3h                           ; ret
    db 0E8h, 0E7h, 000h               ; call 0x347
    db 0C7h, 006h, 022h, 000h, 0FFh, 0FFh ; mov word [0x22], 0xffff
    db 0C7h, 006h, 024h, 000h, 0FFh, 0FFh ; mov word [0x24], 0xffff
    db 033h, 0DBh                     ; xor bx, bx
    db 089h, 01Eh, 026h, 000h         ; mov word [0x26], bx
    db 089h, 01Eh, 028h, 000h         ; mov word [0x28], bx
    db 033h, 0C9h                     ; xor cx, cx
    db 0E8h, 0DFh, 000h               ; call 0x35a
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 028h                     ; je 0x2a8
    db 03Bh, 01Eh, 024h, 000h         ; cmp bx, word [0x24]
    db 073h, 004h                     ; jae 0x28a
    db 089h, 01Eh, 024h, 000h         ; mov word [0x24], bx
    db 03Bh, 01Eh, 028h, 000h         ; cmp bx, word [0x28]
    db 076h, 004h                     ; jbe 0x294
    db 089h, 01Eh, 028h, 000h         ; mov word [0x28], bx
    db 03Bh, 00Eh, 022h, 000h         ; cmp cx, word [0x22]
    db 073h, 004h                     ; jae 0x29e
    db 089h, 00Eh, 022h, 000h         ; mov word [0x22], cx
    db 03Bh, 00Eh, 026h, 000h         ; cmp cx, word [0x26]
    db 076h, 004h                     ; jbe 0x2a8
    db 089h, 00Eh, 026h, 000h         ; mov word [0x26], cx
    db 083h, 0C1h, 010h               ; add cx, 0x10
    db 081h, 0F9h, 080h, 002h         ; cmp cx, 0x280
    db 072h, 0C7h                     ; jb 0x278
    inc bx                                   ; 43
    db 081h, 0FBh, 0C8h, 000h         ; cmp bx, 0xc8
    db 072h, 0BEh                     ; jb 0x276
    db 083h, 03Eh, 024h, 000h, 0FFh   ; cmp word [0x24], -1
    db 075h, 001h                     ; jne 0x2c0
    db 0C3h                           ; ret
    db 0FFh, 006h, 028h, 000h         ; inc word [0x28]
    db 083h, 006h, 026h, 000h, 010h   ; add word [0x26], 0x10
    db 0C4h, 03Eh, 017h, 000h         ; les di, [0x17]
    db 0B8h, 003h, 000h               ; mov ax, 3
    db 0ABh                           ; stosw word es:[di], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0ABh                           ; stosw word es:[di], ax
    db 0A1h, 026h, 000h               ; mov ax, word [0x26]
    db 02Bh, 006h, 022h, 000h         ; sub ax, word [0x22]
    db 0ABh                           ; stosw word es:[di], ax
    db 0A1h, 028h, 000h               ; mov ax, word [0x28]
    db 02Bh, 006h, 024h, 000h         ; sub ax, word [0x24]
    db 0ABh                           ; stosw word es:[di], ax
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0ABh                           ; stosw word es:[di], ax
    db 0ABh                           ; stosw word es:[di], ax
    db 0BFh, 010h, 000h               ; mov di, 0x10
    db 08Bh, 01Eh, 024h, 000h         ; mov bx, word [0x24]
    db 08Bh, 00Eh, 022h, 000h         ; mov cx, word [0x22]
    db 0E8h, 063h, 000h               ; call 0x35a
    db 0ABh                           ; stosw word es:[di], ax
    db 03Bh, 03Eh, 015h, 000h         ; cmp di, word [0x15]
    db 073h, 012h                     ; jae 0x310
    db 083h, 0C1h, 010h               ; add cx, 0x10
    db 03Bh, 00Eh, 026h, 000h         ; cmp cx, word [0x26]
    db 072h, 0EDh                     ; jb 0x2f4
    inc bx                                   ; 43
    db 03Bh, 01Eh, 028h, 000h         ; cmp bx, word [0x28]
    db 072h, 0E2h                     ; jb 0x2f0
    db 0EBh, 009h                     ; jmp 0x319
    db 02Bh, 01Eh, 024h, 000h         ; sub bx, word [0x24]
    db 026h, 089h, 01Eh, 006h, 000h   ; mov word es:[6], bx
    db 0C4h, 01Eh, 017h, 000h         ; les bx, [0x17]
    db 083h, 0EFh, 003h               ; sub di, 3
    db 026h, 089h, 03Eh, 002h, 000h   ; mov word es:[2], di
    db 0B8h, 0F0h, 007h               ; mov ax, 0x7f0
    db 0BBh, 080h, 002h               ; mov bx, 0x280
    db 026h, 0F7h, 026h, 004h, 000h   ; mul word es:[4]
    db 0F7h, 0F3h                     ; div bx
    db 026h, 0A3h, 00Ch, 000h         ; mov word es:[0xc], ax
    db 0B8h, 0F4h, 005h               ; mov ax, 0x5f4
    db 0BBh, 0C8h, 000h               ; mov bx, 0xc8
    db 026h, 0F7h, 026h, 006h, 000h   ; mul word es:[6]
    db 0F7h, 0F3h                     ; div bx
    db 026h, 0A3h, 00Eh, 000h         ; mov word es:[0xe], ax
    db 01Eh                           ; push ds
    db 08Bh, 00Eh, 02Eh, 000h         ; mov cx, word [0x2e]
    db 08Eh, 01Eh, 02Ch, 000h         ; mov ds, word [0x2c]
    db 033h, 0F6h                     ; xor si, si
    db 0F7h, 014h                     ; not word [si]
    inc si                                   ; 46
    inc si                                   ; 46
    db 0E2h, 0FAh                     ; loop 0x352
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    push di                                  ; 57
    db 006h                           ; push es
    push bx                                  ; 53
    push cx                                  ; 51
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 08Bh, 0F9h                     ; mov di, cx
    db 08Bh, 0C3h                     ; mov ax, bx
    db 08Ah, 00Eh, 02Ah, 000h         ; mov cl, byte [0x2a]
    db 0D3h, 0E8h                     ; shr ax, cl
    db 0BAh, 050h, 000h               ; mov dx, 0x50
    db 0F7h, 0E2h                     ; mul dx
    db 003h, 0F8h                     ; add di, ax
    db 08Bh, 0C3h                     ; mov ax, bx
    db 022h, 006h, 02Bh, 000h         ; and al, byte [0x2b]
    db 0B1h, 00Dh                     ; mov cl, 0xd
    db 0D3h, 0E0h                     ; shl ax, cl
    db 003h, 0F8h                     ; add di, ax
    db 08Eh, 006h, 02Ch, 000h         ; mov es, word [0x2c]
    db 026h, 08Bh, 005h               ; mov ax, word es:[di]
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 007h                           ; pop es
    pop di                                   ; 5F
    db 0C3h                           ; ret
    db 000h, 000h                     ; add byte [bx + si], al
    db 03Dh, 001h, 000h               ; cmp ax, 1
    db 0B8h, 01Fh, 010h               ; mov ax, 0x101f
    db 074h, 003h                     ; je 0x39a
    db 0B8h, 01Fh, 040h               ; mov ax, 0x401f
    db 099h                           ; cdq
    db 0CBh                           ; retf
    cld                                      ; FC
    db 02Dh, 01Fh, 000h               ; sub ax, 0x1f
    db 0A3h, 08Dh, 003h               ; mov word [0x38d], ax
    db 0C3h                           ; ret
    db 0E8h, 0F5h, 0FFh               ; call 0x39c
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0BEh, 049h, 004h               ; mov si, 0x449
    db 0B9h, 00Fh, 000h               ; mov cx, 0xf
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    db 0B9h, 000h, 0B0h               ; mov cx, 0xb000
    db 0BEh, 000h, 000h               ; mov si, 0
    db 026h, 08Ah, 004h               ; mov al, byte es:[si]
    db 03Ch, 007h                     ; cmp al, 7
    db 074h, 02Ch                     ; je 0x3ec
    db 077h, 04Eh                     ; ja 0x410
    db 0B0h, 00Eh                     ; mov al, 0xe
    db 0E8h, 0E1h, 000h               ; call 0x4a8
    db 0B9h, 000h, 0B8h               ; mov cx, 0xb800
    db 03Dh, 040h, 01Fh               ; cmp ax, 0x1f40
    db 077h, 01Dh                     ; ja 0x3ec
    db 0D1h, 0E0h                     ; shl ax, 1
    db 026h, 02Bh, 006h, 005h, 000h   ; sub ax, word es:[5]
    db 0D1h, 0E8h                     ; shr ax, 1
    db 026h, 0F6h, 036h, 001h, 000h   ; div byte es:[1]
    db 086h, 0C4h                     ; xchg ah, al
    db 033h, 0DBh                     ; xor bx, bx
    db 026h, 08Ah, 01Eh, 019h, 000h   ; mov bl, byte es:[0x19]
    db 0D1h, 0E3h                     ; shl bx, 1
    db 026h, 089h, 047h, 007h         ; mov word es:[bx + 7], ax
    db 08Eh, 0D9h                     ; mov ds, cx
    db 02Eh, 08Bh, 00Eh, 08Dh, 003h   ; mov cx, word cs:[0x38d]
    db 026h, 03Bh, 00Eh, 003h, 000h   ; cmp cx, word es:[3]
    db 072h, 016h                     ; jb 0x410
    db 033h, 0F6h                     ; xor si, si
    db 0BFh, 01Eh, 000h               ; mov di, 0x1e
    db 081h, 0F9h, 000h, 040h         ; cmp cx, 0x4000
    db 073h, 005h                     ; jae 0x40a
    db 026h, 08Bh, 036h, 005h, 000h   ; mov si, word es:[5]
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    clc                                      ; F8
    db 0CBh                           ; retf
    db 0E8h, 0AEh, 000h               ; call 0x4c1
    stc                                      ; F9
    db 0CBh                           ; retf
    db 0E8h, 084h, 0FFh               ; call 0x39c
    db 006h                           ; push es
    db 01Fh                           ; pop ds
    db 08Bh, 0F7h                     ; mov si, di
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0C0h                     ; mov es, ax
    db 0BFh, 049h, 004h               ; mov di, 0x449
    db 0B9h, 00Fh, 000h               ; mov cx, 0xf
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    db 033h, 0C0h                     ; xor ax, ax
    db 0A0h, 000h, 000h               ; mov al, byte [0]
    db 0CDh, 010h                     ; int 0x10
    db 0B8h, 000h, 0B0h               ; mov ax, 0xb000
    db 080h, 03Eh, 000h, 000h, 007h   ; cmp byte [0], 7
    db 074h, 002h                     ; je 0x43b
    db 0B4h, 0B8h                     ; mov ah, 0xb8
    db 0BEh, 01Eh, 000h               ; mov si, 0x1e
    db 08Eh, 0C0h                     ; mov es, ax
    db 033h, 0FFh                     ; xor di, di
    db 02Eh, 08Bh, 00Eh, 08Dh, 003h   ; mov cx, word cs:[0x38d]
    db 081h, 0F9h, 000h, 040h         ; cmp cx, 0x4000
    db 073h, 004h                     ; jae 0x451
    db 08Bh, 03Eh, 005h, 000h         ; mov di, word [5]
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    db 08Bh, 00Eh, 017h, 000h         ; mov cx, word [0x17]
    db 0B4h, 001h                     ; mov ah, 1
    db 0CDh, 010h                     ; int 0x10
    mov al, byte [0x19]                      ; A0 19 00
    db 08Ah, 0C8h                     ; mov cl, al
    mov ah, 5                                ; B4 05
    int 0x10                                 ; CD 10
    db 033h, 0DBh                     ; xor bx, bx
    db 08Ah, 0D9h                     ; mov bl, cl
    shl bx, 1                                ; D1 E3
    mov dx, word [bx + 7]                    ; 8B 57 07
    db 08Ah, 0F9h                     ; mov bh, cl
    mov ah, 2                                ; B4 02
    int 0x10                                 ; CD 10
    cmp byte [0], 5                          ; 80 3E 00 00 05
    db 077h, 023h                     ; ja 0x49f
    db 08Ah, 01Eh, 01Dh, 000h         ; mov bl, byte [0x1d]
    db 0B7h, 000h                     ; mov bh, 0
    push bx                                  ; 53
    db 080h, 0E3h, 01Fh               ; and bl, 0x1f
    db 0B4h, 00Bh                     ; mov ah, 0xb
    db 0CDh, 010h                     ; int 0x10
    pop bx                                   ; 5B
    db 080h, 03Eh, 000h, 000h, 005h   ; cmp byte [0], 5
    db 075h, 00Eh                     ; jne 0x4a0
    db 080h, 0E3h, 020h               ; and bl, 0x20
    db 0B1h, 005h                     ; mov cl, 5
    db 0D3h, 0EBh                     ; shr bx, cl
    db 0FEh, 0C7h                     ; inc bh
    db 0B4h, 00Bh                     ; mov ah, 0xb
    db 0CDh, 010h                     ; int 0x10
    db 0CBh                           ; retf
    db 0B8h, 003h, 010h               ; mov ax, 0x1003
    db 033h, 0DBh                     ; xor bx, bx
    db 0CDh, 010h                     ; int 0x10
    db 0CBh                           ; retf
    db 08Ah, 0E0h                     ; mov ah, al
    db 0E8h, 00Eh, 000h               ; call 0x4bb
    db 0ECh                           ; in al, dx
    push ax                                  ; 50
    db 08Ah, 0C4h                     ; mov al, ah
    db 0FEh, 0C0h                     ; inc al
    db 0E8h, 005h, 000h               ; call 0x4bb
    db 0ECh                           ; in al, dx
    pop dx                                   ; 5A
    db 08Ah, 0E2h                     ; mov ah, dl
    db 0C3h                           ; ret
    db 0BAh, 0D4h, 003h               ; mov dx, 0x3d4
    db 0EEh                           ; out dx, al
    inc dx                                   ; 42
    db 0C3h                           ; ret
    db 0B0h, 0B6h                     ; mov al, 0xb6
    db 0E6h, 043h                     ; out 0x43, al
    db 0B8h, 033h, 005h               ; mov ax, 0x533
    db 0E6h, 042h                     ; out 0x42, al
    db 08Ah, 0C4h                     ; mov al, ah
    out 0x42, al                             ; E6 42
    db 0EBh, 000h                     ; jmp 0x4d0
    db 0E4h, 061h                     ; in al, 0x61
    db 08Ah, 0E0h                     ; mov ah, al
    db 00Ch, 003h                     ; or al, 3
    db 0E6h, 061h                     ; out 0x61, al
    db 0B9h, 000h, 024h               ; mov cx, 0x2400
    db 0E2h, 0FEh                     ; loop 0x4db
    db 0B9h, 033h, 006h               ; mov cx, 0x633
    db 08Ah, 0C1h                     ; mov al, cl
    db 0E6h, 042h                     ; out 0x42, al
    db 08Ah, 0C5h                     ; mov al, ch
    db 0E6h, 042h                     ; out 0x42, al
    db 0B9h, 000h, 034h               ; mov cx, 0x3400
    db 0E2h, 0FEh                     ; loop 0x4eb
    db 08Ah, 0C4h                     ; mov al, ah
    db 0E6h, 061h                     ; out 0x61, al
    db 0C3h                           ; ret