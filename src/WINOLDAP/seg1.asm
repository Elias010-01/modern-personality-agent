; WINOLDAP/seg1.asm
; Semantic reconstruction - verified byte-exact
BITS 16

    db 074h, 074h                     ; je 0x76
    db 079h, 000h                     ; jns 4
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    push si                                  ; 56
    push di                                  ; 57
    cld                                      ; FC
    db 08Bh, 076h, 00Ah               ; mov si, word [bp + 0xa]
    db 00Bh, 0F6h                     ; or si, si
    db 074h, 026h                     ; je 0x37
    db 0B9h, 046h, 000h               ; mov cx, 0x46
    db 0BFh, 03Ah, 002h               ; mov di, 0x23a
    push si                                  ; 56
    push di                                  ; 57
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Eh, 046h, 008h               ; mov es, word [bp + 8]
    db 026h, 080h, 03Eh, 080h, 000h, 000h ; cmp byte es:[0x80], 0
    db 075h, 00Ah                     ; jne 0x34
    db 0C4h, 01Eh, 040h, 002h         ; les bx, [0x240]
    db 089h, 05Eh, 006h               ; mov word [bp + 6], bx
    db 08Ch, 046h, 008h               ; mov word [bp + 8], es
    db 0EBh, 075h                     ; jmp 0xab
    nop                                      ; 90
    db 0E8h, 01Bh, 038h               ; call 0x3855
    db 0BEh, 024h, 000h               ; mov si, 0x24
    db 0B8h, 000h, 000h               ; mov ax, 0
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A3h, 03Ah, 002h               ; mov word [0x23a], ax
    db 089h, 044h, 010h               ; mov word [si + 0x10], ax
    db 0B8h, 004h, 000h               ; mov ax, 4
    push ax                                  ; 50
    db 09Ah, 042h, 000h, 000h, 000h   ; lcall 0, 0x42
    db 0A3h, 03Ch, 002h               ; mov word [0x23c], ax
    db 0B8h, 00Ah, 000h               ; mov ax, 0xa
    push ax                                  ; 50
    db 09Ah, 051h, 000h, 000h, 000h   ; lcall 0, 0x51
    db 0A3h, 03Eh, 002h               ; mov word [0x23e], ax
    db 08Ch, 05Ch, 00Ah               ; mov word [si + 0xa], ds
    db 033h, 0FFh                     ; xor di, di
    db 0B8h, 000h, 07Fh               ; mov ax, 0x7f00
    push di                                  ; 57
    push di                                  ; 57
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 089h, 044h, 00Eh               ; mov word [si + 0xe], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 089h, 044h, 00Ch               ; mov word [si + 0xc], ax
    db 0B9h, 044h, 002h               ; mov cx, 0x244
    db 0BBh, 03Ch, 000h               ; mov bx, 0x3c
    db 0B8h, 008h, 000h               ; mov ax, 8
    db 01Eh                           ; push ds
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push cx                                  ; 51
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0B8h, 000h, 000h               ; mov ax, 0
    db 089h, 044h, 016h               ; mov word [si + 0x16], ax
    db 08Ch, 04Ch, 018h               ; mov word [si + 0x18], cs
    db 0C7h, 044h, 002h, 0D8h, 002h   ; mov word [si + 2], 0x2d8
    db 08Ch, 04Ch, 004h               ; mov word [si + 4], cs
    db 0C7h, 004h, 003h, 000h         ; mov word [si], 3
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C4h, 076h, 006h               ; les si, [bp + 6]
    db 089h, 036h, 040h, 002h         ; mov word [0x240], si
    db 08Ch, 006h, 042h, 002h         ; mov word [0x242], es
    db 0E8h, 0ECh, 027h               ; call 0x28a5
    db 0FFh, 036h, 0EAh, 001h         ; push word [0x1ea]
    db 0FFh, 036h, 0E8h, 001h         ; push word [0x1e8]
    db 0E8h, 02Ah, 028h               ; call 0x28ee
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 003h                     ; jne 0xcb
    db 0E9h, 0EEh, 000h               ; jmp 0x1b9
    db 0E8h, 033h, 00Dh               ; call 0xe01
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A3h, 048h, 000h               ; mov word [0x48], ax
    db 0BFh, 091h, 000h               ; mov di, 0x91
    db 0BEh, 000h, 000h               ; mov si, 0
    db 033h, 0C0h                     ; xor ax, ax
    db 0BAh, 0FCh, 000h               ; mov dx, 0xfc
    db 033h, 0DBh                     ; xor bx, bx
    db 0B9h, 064h, 000h               ; mov cx, 0x64
    db 00Eh                           ; push cs
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    push dx                                  ; 52
    push ax                                  ; 50
    push bx                                  ; 53
    push bx                                  ; 53
    push bx                                  ; 53
    push cx                                  ; 51
    push bx                                  ; 53
    push bx                                  ; 53
    db 016h                           ; push ss
    push bx                                  ; 53
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A3h, 044h, 000h               ; mov word [0x44], ax
    db 0E8h, 0C5h, 000h               ; call 0x1c5
    db 033h, 0FFh                     ; xor di, di
    push ax                                  ; 50
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A3h, 046h, 000h               ; mov word [0x46], ax
    db 0E8h, 0B6h, 000h               ; call 0x1c5
    db 08Bh, 046h, 004h               ; mov ax, word [bp + 4]
    db 0A3h, 04Ah, 000h               ; mov word [0x4a], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0F6h, 006h, 0F8h, 000h, 020h   ; test byte [0xf8], 0x20
    db 074h, 003h                     ; je 0x121
    db 0A1h, 08Fh, 000h               ; mov ax, word [0x8f]
    db 03Ch, 010h                     ; cmp al, 0x10
    db 073h, 002h                     ; jae 0x127
    db 0B0h, 010h                     ; mov al, 0x10
    db 03Ah, 0E0h                     ; cmp ah, al
    db 073h, 002h                     ; jae 0x12d
    db 0B4h, 010h                     ; mov ah, 0x10
    db 033h, 0C9h                     ; xor cx, cx
    db 02Ah, 0E0h                     ; sub ah, al
    db 08Ah, 0CCh                     ; mov cl, ah
    inc cx                                   ; 41
    db 0D1h, 0E1h                     ; shl cx, 1
    db 089h, 00Eh, 078h, 001h         ; mov word [0x178], cx
    db 08Bh, 0F9h                     ; mov di, cx
    db 0D1h, 0E7h                     ; shl di, 1
    db 032h, 0E4h                     ; xor ah, ah
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0A3h, 07Ah, 001h               ; mov word [0x17a], ax
    push di                                  ; 57
    db 033h, 0DBh                     ; xor bx, bx
    db 0E8h, 084h, 000h               ; call 0x1d1
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 075h, 006h                     ; jne 0x15a
    db 0E8h, 0B7h, 000h               ; call 0x20e
    db 0BBh, 0A0h, 00Fh               ; mov bx, 0xfa0
    pop di                                   ; 5F
    db 033h, 0C0h                     ; xor ax, ax
    db 089h, 01Eh, 07Ch, 001h         ; mov word [0x17c], bx
    db 003h, 0FBh                     ; add di, bx
    db 074h, 00Bh                     ; je 0x170
    push ax                                  ; 50
    push ax                                  ; 50
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 055h, 000h               ; call 0x1c5
    db 0A3h, 0EAh, 003h               ; mov word [0x3ea], ax
    db 0A3h, 07Eh, 001h               ; mov word [0x17e], ax
    db 08Eh, 0C0h                     ; mov es, ax
    db 08Bh, 0CFh                     ; mov cx, di
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0B8h, 020h, 007h               ; mov ax, 0x720
    db 033h, 0FFh                     ; xor di, di
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 080h, 03Eh, 0E7h, 002h, 0FFh   ; cmp byte [0x2e7], 0xff
    db 075h, 003h                     ; jne 0x18d
    db 0E8h, 02Dh, 00Dh               ; call 0xeba
    db 0BEh, 0E8h, 002h               ; mov si, 0x2e8
    db 0BFh, 0FAh, 000h               ; mov di, 0xfa
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0B8h, 001h, 029h               ; mov ax, 0x2901
    db 0CDh, 021h                     ; int 0x21
    db 0BFh, 006h, 001h               ; mov di, 0x106
    db 0B8h, 001h, 029h               ; mov ax, 0x2901
    db 0CDh, 021h                     ; int 0x21
    db 08Ch, 0D9h                     ; mov cx, ds
    db 0C4h, 016h, 0E8h, 001h         ; les dx, [0x1e8]
    db 0BBh, 062h, 001h               ; mov bx, 0x162
    db 0B0h, 080h                     ; mov al, 0x80
    db 0E8h, 081h, 01Bh               ; call 0x1d31
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0B4h, 04Ch                     ; mov ah, 0x4c
    db 0CDh, 021h                     ; int 0x21
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 08Bh, 0E5h                     ; mov sp, bp
    pop bp                                   ; 5D
    db 0C2h, 00Ah, 000h               ; ret 0xa
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 007h                     ; jne 0x1d0
    db 0B0h, 008h                     ; mov al, 8
    db 0E8h, 0E9h, 02Ah               ; call 0x2cb7
    db 0EBh, 0E0h                     ; jmp 0x1b0
    db 0C3h                           ; ret
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    db 083h, 0ECh, 026h               ; sub sp, 0x26
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0F8h                     ; mov di, ax
    push di                                  ; 57
    db 0FFh, 036h, 03Eh, 002h         ; push word [0x23e]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0DCh                     ; mov bx, sp
    push di                                  ; 57
    db 016h                           ; push ss
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0DCh                     ; mov bx, sp
    db 036h, 08Bh, 047h, 00Ah         ; mov ax, word ss:[bx + 0xa]
    db 0A3h, 01Ch, 000h               ; mov word [0x1c], ax
    db 036h, 08Bh, 007h               ; mov ax, word ss:[bx]
    db 0A3h, 01Ah, 000h               ; mov word [0x1a], ax
    db 083h, 0C4h, 026h               ; add sp, 0x26
    db 0C3h                           ; ret
    db 0FEh, 0C8h                     ; dec al
    db 08Ah, 0E0h                     ; mov ah, al
    db 0FEh, 0CCh                     ; dec ah
    db 0A3h, 0EDh, 003h               ; mov word [0x3ed], ax
    db 0E8h, 07Ch, 01Ah               ; call 0x1c96
    db 033h, 0D2h                     ; xor dx, dx
    db 0E8h, 0F0h, 01Ah               ; call 0x1d0f
    db 0B8h, 0F6h, 001h               ; mov ax, 0x1f6
    db 0A3h, 00Ah, 002h               ; mov word [0x20a], ax
    db 0A3h, 00Ch, 002h               ; mov word [0x20c], ax
    db 08Bh, 036h, 046h, 000h         ; mov si, word [0x46]
    db 0B9h, 002h, 001h               ; mov cx, 0x102
    db 033h, 0C0h                     ; xor ax, ax
    db 0BBh, 0FFh, 0FFh               ; mov bx, 0xffff
    push si                                  ; 56
    push ax                                  ; 50
    push ax                                  ; 50
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0B0h, 0F3h                     ; mov al, 0xf3
    db 0E8h, 00Fh, 000h               ; call 0x253
    db 0B0h, 0F2h                     ; mov al, 0xf2
    db 0E8h, 00Ah, 000h               ; call 0x253
    db 0B0h, 0F0h                     ; mov al, 0xf0
    db 0E8h, 005h, 000h               ; call 0x253
    db 0E8h, 0A0h, 009h               ; call 0xbf1
    db 0B0h, 0F1h                     ; mov al, 0xf1
    db 098h                           ; cwde
    db 0B9h, 020h, 000h               ; mov cx, 0x20
    db 02Bh, 0E1h                     ; sub sp, cx
    db 08Bh, 0FCh                     ; mov di, sp
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push ax                                  ; 50
    db 016h                           ; push ss
    push di                                  ; 57
    push cx                                  ; 51
    db 09Ah, 08Bh, 000h, 000h, 000h   ; lcall 0, 0x8b
    pop ax                                   ; 58
    db 0B9h, 000h, 001h               ; mov cx, 0x100
    push si                                  ; 56
    push ax                                  ; 50
    db 016h                           ; push ss
    push di                                  ; 57
    push ax                                  ; 50
    push cx                                  ; 51
    db 09Ah, 03Bh, 002h, 000h, 000h   ; lcall 0, 0x23b
    db 083h, 0C4h, 020h               ; add sp, 0x20
    db 0C3h                           ; ret
    db 00Fh, 000h, 000h               ; sldt word [bx + si]
    db 002h, 001h                     ; add al, byte [bx + di]
    db 002h, 002h                     ; add al, byte [bp + si]
    db 002h, 0FFh                     ; add bh, bh
    db 000h, 002h                     ; add byte [bp + si], al
    db 001h, 006h, 001h, 000h         ; add word [1], ax
    db 001h, 004h                     ; add word [si], ax
    db 001h, 005h                     ; add word [di], ax
    db 001h, 015h                     ; add word [di], dx
    db 001h, 014h                     ; add word [si], dx
    db 001h, 012h                     ; add word [bp + si], dx
    db 001h, 016h, 001h, 005h         ; add word [0x501], dx
    db 000h, 001h                     ; add byte [bx + di], al
    db 004h, 010h                     ; add al, 0x10
    db 000h, 007h                     ; add byte [bx], al
    db 000h, 008h                     ; add byte [bx + si], cl
    db 000h, 013h                     ; add byte [bp + di], dl
    db 000h, 011h                     ; add byte [bx + di], dl
    db 000h, 00Ah                     ; add byte [bp + si], cl
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 08Eh, 003h, 0BEh         ; add byte [bp - 0x41fd], cl
    db 005h, 0D2h, 005h               ; add ax, 0x5d2
    db 0C8h, 005h, 071h, 006h         ; enter 0x7105, 6
    db 011h, 006h, 004h, 006h         ; adc word [0x604], ax
    db 0E0h, 00Fh                     ; loopne 0x2c6
    db 0B3h, 00Fh                     ; mov bl, 0xf
    lahf                                     ; 9F
    db 00Fh, 055h, 012h               ; andnps xmm2, xmmword [bp + si]
    db 078h, 012h                     ; js 0x2d1
    db 076h, 005h                     ; jbe 0x2c6
    db 014h, 003h                     ; adc al, 3
    db 02Dh, 011h, 02Dh               ; sub ax, 0x2d11
    db 011h, 0A9h, 006h, 0D0h         ; adc word [bx + di - 0x2ffa], bp
    db 006h                           ; push es
    db 0E5h, 006h                     ; in ax, 6
    push ax                                  ; 50
    db 032h, 06Ch, 02Ch               ; xor ch, byte [si + 0x2c]
    db 0D5h, 002h                     ; aad 2
    db 095h                           ; xchg bp, ax
    db 005h, 0B0h, 001h               ; add ax, 0x1b0
    db 0C3h                           ; ret
    db 08Ch, 0D8h                     ; mov ax, ds
    nop                                      ; 90
    inc bp                                   ; 45
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 01Eh                           ; push ds
    db 08Eh, 0D8h                     ; mov ds, ax
    push si                                  ; 56
    push di                                  ; 57
    cld                                      ; FC
    db 08Ch, 0C8h                     ; mov ax, cs
    db 08Eh, 0C0h                     ; mov es, ax
    db 08Bh, 046h, 00Ch               ; mov ax, word [bp + 0xc]
    db 02Eh, 0A3h, 0A5h, 002h         ; mov word cs:[0x2a5], ax
    db 0BFh, 079h, 002h               ; mov di, 0x279
    db 0B9h, 017h, 000h               ; mov cx, 0x17
    db 0F2h, 0AFh                     ; repne scasw ax, word es:[di]
    db 08Dh, 05Dh, 02Ch               ; lea bx, [di + 0x2c]
    db 08Bh, 04Eh, 00Ah               ; mov cx, word [bp + 0xa]
    db 0C4h, 07Eh, 006h               ; les di, [bp + 6]
    db 08Bh, 076h, 00Eh               ; mov si, word [bp + 0xe]
    db 02Eh, 0FFh, 017h               ; call word cs:[bx]
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 083h, 0EDh, 002h               ; sub bp, 2
    db 08Bh, 0E5h                     ; mov sp, bp
    db 01Fh                           ; pop ds
    pop bp                                   ; 5D
    dec bp                                   ; 4D
    db 0CAh, 00Ah, 000h               ; retf 0xa
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 0B8h, 060h, 0F0h               ; mov ax, 0xf060
    db 080h, 03Eh, 020h, 000h, 000h   ; cmp byte [0x20], 0
    db 074h, 005h                     ; je 0x326
    db 0E8h, 0D6h, 008h               ; call 0xbfa
    db 0EBh, 003h                     ; jmp 0x329
    db 0E8h, 0CEh, 008h               ; call 0xbf7
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 074h, 003h                     ; je 0x333
    db 0E9h, 03Fh, 002h               ; jmp 0x572
    db 0B8h, 0F1h, 0FFh               ; mov ax, 0xfff1
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 075h, 00Eh                     ; jne 0x34b
    db 0E8h, 0B7h, 008h               ; call 0xbf7
    db 0B8h, 0F2h, 0FFh               ; mov ax, 0xfff2
    db 0E8h, 0B1h, 008h               ; call 0xbf7
    db 0B8h, 0F3h, 0FFh               ; mov ax, 0xfff3
    db 0EBh, 03Dh                     ; jmp 0x388
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 080h, 03Eh, 020h, 000h, 000h   ; cmp byte [0x20], 0
    db 075h, 005h                     ; jne 0x35a
    db 0E8h, 0A2h, 008h               ; call 0xbfa
    db 0EBh, 003h                     ; jmp 0x35d
    db 0E8h, 09Ah, 008h               ; call 0xbf7
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 0B8h, 0F3h, 0FFh               ; mov ax, 0xfff3
    db 08Bh, 00Eh, 0C7h, 002h         ; mov cx, word [0x2c7]
    db 00Bh, 00Eh, 0C5h, 002h         ; or cx, word [0x2c5]
    db 074h, 005h                     ; je 0x372
    db 0E8h, 08Ah, 008h               ; call 0xbfa
    db 0EBh, 003h                     ; jmp 0x375
    db 0E8h, 082h, 008h               ; call 0xbf7
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 0B8h, 0F2h, 0FFh               ; mov ax, 0xfff2
    db 080h, 03Eh, 087h, 002h, 000h   ; cmp byte [0x287], 0
    db 075h, 006h                     ; jne 0x388
    db 0E8h, 075h, 008h               ; call 0xbfa
    db 0E9h, 0EAh, 001h               ; jmp 0x572
    db 0E8h, 06Ch, 008h               ; call 0xbf7
    db 0E9h, 0E4h, 001h               ; jmp 0x572
    db 08Bh, 03Eh, 00Ah, 002h         ; mov di, word [0x20a]
    db 03Bh, 03Eh, 00Ch, 002h         ; cmp di, word [0x20c]
    db 074h, 014h                     ; je 0x3ac
    db 0F6h, 005h, 080h               ; test byte [di], 0x80
    db 074h, 00Fh                     ; je 0x3ac
    db 089h, 03Eh, 00Ch, 002h         ; mov word [0x20c], di
    db 033h, 0FFh                     ; xor di, di
    push si                                  ; 56
    push di                                  ; 57
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0BFh, 018h, 002h               ; mov di, 0x218
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A3h, 01Eh, 000h               ; mov word [0x1e], ax
    db 08Bh, 0F0h                     ; mov si, ax
    db 08Dh, 05Dh, 004h               ; lea bx, [di + 4]
    db 0A1h, 028h, 004h               ; mov ax, word [0x428]
    db 00Bh, 0C0h                     ; or ax, ax
    db 078h, 008h                     ; js 0x3ce
    db 03Dh, 001h, 000h               ; cmp ax, 1
    db 075h, 006h                     ; jne 0x3d1
    db 0E8h, 0C9h, 009h               ; call 0xd97
    db 0E9h, 0B8h, 000h               ; jmp 0x489
    push bx                                  ; 53
    push si                                  ; 56
    db 0FFh, 036h, 03Eh, 002h         ; push word [0x23e]
    db 09Ah, 0E6h, 001h, 000h, 000h   ; lcall 0, 0x1e6
    pop bx                                   ; 5B
    db 08Bh, 007h                     ; mov ax, word [bx]
    db 08Bh, 036h, 016h, 000h         ; mov si, word [0x16]
    db 08Bh, 03Eh, 01Ch, 000h         ; mov di, word [0x1c]
    db 003h, 0C6h                     ; add ax, si
    db 099h                           ; cdq
    db 0F7h, 0FFh                     ; idiv di
    db 0A3h, 040h, 000h               ; mov word [0x40], ax
    db 0F7h, 0E7h                     ; mul di
    db 02Bh, 0C6h                     ; sub ax, si
    db 0A3h, 0ECh, 001h               ; mov word [0x1ec], ax
    db 08Bh, 047h, 002h               ; mov ax, word [bx + 2]
    db 08Bh, 036h, 018h, 000h         ; mov si, word [0x18]
    db 08Bh, 00Eh, 01Ah, 000h         ; mov cx, word [0x1a]
    db 003h, 0C6h                     ; add ax, si
    db 099h                           ; cdq
    db 0F7h, 0F9h                     ; idiv cx
    db 0A3h, 03Eh, 000h               ; mov word [0x3e], ax
    db 0F7h, 0E1h                     ; mul cx
    db 02Bh, 0C6h                     ; sub ax, si
    db 0A3h, 0EEh, 001h               ; mov word [0x1ee], ax
    db 02Bh, 047h, 006h               ; sub ax, word [bx + 6]
    db 0F7h, 0D8h                     ; neg ax
    db 003h, 0C1h                     ; add ax, cx
    dec ax                                   ; 48
    db 099h                           ; cdq
    db 0F7h, 0F9h                     ; idiv cx
    db 0B9h, 019h, 000h               ; mov cx, 0x19
    db 02Bh, 00Eh, 03Eh, 000h         ; sub cx, word [0x3e]
    db 03Bh, 0C1h                     ; cmp ax, cx
    db 07Eh, 002h                     ; jle 0x428
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0A3h, 0F2h, 001h               ; mov word [0x1f2], ax
    db 00Bh, 0C0h                     ; or ax, ax
    db 07Eh, 05Ah                     ; jle 0x489
    db 08Bh, 047h, 004h               ; mov ax, word [bx + 4]
    db 02Bh, 006h, 0ECh, 001h         ; sub ax, word [0x1ec]
    db 003h, 0C7h                     ; add ax, di
    dec ax                                   ; 48
    db 099h                           ; cdq
    db 0F7h, 0FFh                     ; idiv di
    db 0BBh, 050h, 000h               ; mov bx, 0x50
    db 02Bh, 01Eh, 040h, 000h         ; sub bx, word [0x40]
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 07Eh, 002h                     ; jle 0x449
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0A3h, 0F0h, 001h               ; mov word [0x1f0], ax
    db 0A1h, 03Eh, 000h               ; mov ax, word [0x3e]
    db 08Bh, 01Eh, 040h, 000h         ; mov bx, word [0x40]
    db 08Bh, 0D0h                     ; mov dx, ax
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E0h                     ; shl ax, cl
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0D1h, 0E0h                     ; shl ax, 1
    db 003h, 0C1h                     ; add ax, cx
    db 003h, 0D8h                     ; add bx, ax
    db 0D1h, 0E3h                     ; shl bx, 1
    db 08Bh, 0F3h                     ; mov si, bx
    db 08Bh, 00Eh, 0F0h, 001h         ; mov cx, word [0x1f0]
    db 0FFh, 036h, 0ECh, 001h         ; push word [0x1ec]
    push si                                  ; 56
    db 0E8h, 027h, 000h               ; call 0x49a
    pop si                                   ; 5E
    db 08Fh, 006h, 0ECh, 001h         ; pop word [0x1ec]
    db 081h, 0C6h, 0A0h, 000h         ; add si, 0xa0
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 001h, 006h, 0EEh, 001h         ; add word [0x1ee], ax
    db 0FFh, 00Eh, 0F2h, 001h         ; dec word [0x1f2]
    db 075h, 0DEh                     ; jne 0x467
    db 0BFh, 018h, 002h               ; mov di, 0x218
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 0D8h, 000h               ; jmp 0x572
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 026h, 08Bh, 014h               ; mov dx, word es:[si]
    db 080h, 0FEh, 010h               ; cmp dh, 0x10
    db 072h, 043h                     ; jb 0x4e9
    db 080h, 0FEh, 090h               ; cmp dh, 0x90
    db 073h, 03Eh                     ; jae 0x4e9
    push cx                                  ; 51
    db 033h, 0FFh                     ; xor di, di
    db 089h, 03Eh, 0F4h, 001h         ; mov word [0x1f4], di
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 026h, 08Bh, 014h               ; mov dx, word es:[si]
    db 080h, 0FEh, 010h               ; cmp dh, 0x10
    db 072h, 00Bh                     ; jb 0x4c9
    db 080h, 0FEh, 090h               ; cmp dh, 0x90
    db 073h, 006h                     ; jae 0x4c9
    db 0F7h, 0D7h                     ; not di
    db 089h, 03Eh, 0F4h, 001h         ; mov word [0x1f4], di
    db 0FFh, 036h, 01Eh, 000h         ; push word [0x1e]
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0F7h, 0D7h                     ; not di
    db 0FFh, 036h, 01Eh, 000h         ; push word [0x1e]
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 026h, 08Bh, 014h               ; mov dx, word es:[si]
    pop cx                                   ; 59
    db 0E3h, 074h                     ; jcxz 0x55f
    cld                                      ; FC
    db 0BFh, 012h, 001h               ; mov di, 0x112
    db 08Bh, 0D9h                     ; mov bx, cx
    db 026h, 0ADh                     ; lodsw ax, word es:[si]
    db 088h, 005h                     ; mov byte [di], al
    inc di                                   ; 47
    db 03Ah, 0E6h                     ; cmp ah, dh
    db 0E1h, 0F7h                     ; loope 0x4f1
    db 074h, 02Fh                     ; je 0x52b
    db 0BFh, 012h, 001h               ; mov di, 0x112
    inc cx                                   ; 41
    db 02Bh, 0D9h                     ; sub bx, cx
    db 083h, 0EEh, 002h               ; sub si, 2
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0F7h, 0E3h                     ; mul bx
    db 003h, 006h, 0ECh, 001h         ; add ax, word [0x1ec]
    push ax                                  ; 50
    push cx                                  ; 51
    db 0FFh, 036h, 01Eh, 000h         ; push word [0x1e]
    db 0FFh, 036h, 0ECh, 001h         ; push word [0x1ec]
    db 0FFh, 036h, 0EEh, 001h         ; push word [0x1ee]
    db 01Eh                           ; push ds
    push di                                  ; 57
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    pop cx                                   ; 59
    db 08Fh, 006h, 0ECh, 001h         ; pop word [0x1ec]
    db 0EBh, 080h                     ; jmp 0x4ab
    db 02Bh, 0FBh                     ; sub di, bx
    db 0FFh, 036h, 01Eh, 000h         ; push word [0x1e]
    db 0FFh, 036h, 0ECh, 001h         ; push word [0x1ec]
    db 0FFh, 036h, 0EEh, 001h         ; push word [0x1ee]
    db 01Eh                           ; push ds
    push di                                  ; 57
    push bx                                  ; 53
    db 09Ah, 020h, 005h, 000h, 000h   ; lcall 0, 0x520
    db 08Bh, 03Eh, 0F4h, 001h         ; mov di, word [0x1f4]
    db 00Bh, 0FFh                     ; or di, di
    db 074h, 016h                     ; je 0x55f
    db 08Bh, 036h, 01Eh, 000h         ; mov si, word [0x1e]
    push si                                  ; 56
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0DDh, 004h, 000h, 000h   ; lcall 0, 0x4dd
    db 0F7h, 0D7h                     ; not di
    push si                                  ; 56
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0D0h, 004h, 000h, 000h   ; lcall 0, 0x4d0
    db 0C3h                           ; ret
    db 0E8h, 09Fh, 005h               ; call 0xb02
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Bh                     ; je 0x572
    db 08Bh, 0F8h                     ; mov di, ax
    db 0BEh, 001h, 000h               ; mov si, 1
    db 0E8h, 0C5h, 004h               ; call 0xa34
    db 0E8h, 03Ah, 006h               ; call 0xbac
    db 033h, 0C0h                     ; xor ax, ax
    db 099h                           ; cdq
    db 0C3h                           ; ret
    db 080h, 0FDh, 0FFh               ; cmp ch, 0xff
    db 075h, 01Ah                     ; jne 0x595
    db 080h, 0F9h, 0F2h               ; cmp cl, 0xf2
    db 074h, 020h                     ; je 0x5a0
    db 080h, 0F9h, 0F0h               ; cmp cl, 0xf0
    db 074h, 0DBh                     ; je 0x560
    db 080h, 0F9h, 0F1h               ; cmp cl, 0xf1
    db 075h, 003h                     ; jne 0x58d
    db 0E9h, 001h, 005h               ; jmp 0xa8e
    db 080h, 0F9h, 0F3h               ; cmp cl, 0xf3
    db 075h, 003h                     ; jne 0x595
    db 0E9h, 00Eh, 00Bh               ; jmp 0x10a3
    push si                                  ; 56
    push ax                                  ; 50
    push cx                                  ; 51
    db 006h                           ; push es
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 033h, 0FFh                     ; xor di, di
    db 08Eh, 0C7h                     ; mov es, di
    db 006h                           ; push es
    push di                                  ; 57
    db 0C6h, 006h, 086h, 002h, 001h   ; mov byte [0x286], 1
    db 0E8h, 0FEh, 005h               ; call 0xbac
    db 0E8h, 032h, 006h               ; call 0xbe3
    db 0C6h, 006h, 086h, 002h, 002h   ; mov byte [0x286], 2
    db 0E8h, 0DCh, 00Ah               ; call 0x1095
    pop di                                   ; 5F
    db 007h                           ; pop es
    inc di                                   ; 47
    db 0EBh, 005h                     ; jmp 0x5c3
    db 0F6h, 0C1h, 001h               ; test cl, 1
    db 074h, 003h                     ; je 0x5c6
    db 0E8h, 040h, 006h               ; call 0xc06
    db 0EBh, 0AAh                     ; jmp 0x572
    db 0E8h, 008h, 00Bh               ; call 0x10d3
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0EBh, 0A0h                     ; jmp 0x572
    db 006h                           ; push es
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 007h                           ; pop es
    db 0F6h, 006h, 082h, 002h, 080h   ; test byte [0x282], 0x80
    db 075h, 010h                     ; jne 0x5f1
    db 006h                           ; push es
    push di                                  ; 57
    db 0E8h, 0EDh, 00Ah               ; call 0x10d3
    pop di                                   ; 5F
    db 007h                           ; pop es
    db 0FEh, 006h, 086h, 002h         ; inc byte [0x286]
    db 0E8h, 0A6h, 000h               ; call 0x695
    db 078h, 0D2h                     ; js 0x5c3
    db 0E8h, 0B8h, 005h               ; call 0xbac
    db 0E8h, 0ECh, 005h               ; call 0xbe3
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 06Eh, 0FFh               ; jmp 0x572
    db 0BBh, 012h, 000h               ; mov bx, 0x12
    db 0E8h, 08Eh, 000h               ; call 0x698
    db 079h, 089h                     ; jns 0x595
    db 080h, 0F9h, 020h               ; cmp cl, 0x20
    db 074h, 084h                     ; je 0x595
    db 080h, 03Eh, 087h, 002h, 000h   ; cmp byte [0x287], 0
    db 074h, 00Fh                     ; je 0x627
    db 0E8h, 048h, 000h               ; call 0x663
    db 075h, 043h                     ; jne 0x660
    db 0C6h, 006h, 087h, 002h, 000h   ; mov byte [0x287], 0
    db 0E8h, 0C2h, 00Ah               ; call 0x10e7
    db 0EBh, 039h                     ; jmp 0x660
    db 080h, 03Eh, 086h, 002h, 002h   ; cmp byte [0x286], 2
    db 075h, 012h                     ; jne 0x640
    db 0E8h, 032h, 000h               ; call 0x663
    db 075h, 02Dh                     ; jne 0x660
    db 080h, 0F9h, 00Dh               ; cmp cl, 0xd
    db 074h, 003h                     ; je 0x63b
    db 0E9h, 034h, 0FFh               ; jmp 0x56f
    db 0E8h, 095h, 00Ah               ; call 0x10d3
    db 0EBh, 020h                     ; jmp 0x660
    db 0F6h, 006h, 082h, 002h, 080h   ; test byte [0x282], 0x80
    db 075h, 00Ah                     ; jne 0x651
    db 0E8h, 01Eh, 000h               ; call 0x668
    db 075h, 005h                     ; jne 0x651
    db 0E8h, 05Dh, 005h               ; call 0xbac
    db 0EBh, 0EAh                     ; jmp 0x63b
    db 080h, 03Eh, 020h, 000h, 000h   ; cmp byte [0x20], 0
    db 075h, 008h                     ; jne 0x660
    db 089h, 00Eh, 010h, 002h         ; mov word [0x210], cx
    db 089h, 03Eh, 012h, 002h         ; mov word [0x212], di
    db 0E9h, 00Fh, 0FFh               ; jmp 0x572
    db 080h, 0F9h, 00Dh               ; cmp cl, 0xd
    db 074h, 008h                     ; je 0x670
    db 080h, 0F9h, 003h               ; cmp cl, 3
    db 074h, 003h                     ; je 0x670
    db 080h, 0F9h, 01Bh               ; cmp cl, 0x1b
    db 0C3h                           ; ret
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 080h, 03Eh, 012h, 002h, 000h   ; cmp byte [0x212], 0
    db 074h, 003h                     ; je 0x67e
    db 0A1h, 010h, 002h               ; mov ax, word [0x210]
    db 08Ch, 0C2h                     ; mov dx, es
    db 0E8h, 045h, 038h               ; call 0x3ec8
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 00Ah                     ; je 0x692
    db 0E8h, 066h, 00Eh               ; call 0x14f1
    db 00Bh, 0FFh                     ; or di, di
    db 074h, 003h                     ; je 0x692
    db 0E8h, 041h, 012h               ; call 0x18d3
    db 0E9h, 0DDh, 0FEh               ; jmp 0x572
    db 0BBh, 010h, 000h               ; mov bx, 0x10
    push ax                                  ; 50
    push cx                                  ; 51
    db 006h                           ; push es
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0D8h                     ; mov bx, ax
    db 00Bh, 0DBh                     ; or bx, bx
    db 007h                           ; pop es
    pop cx                                   ; 59
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 080h, 03Eh, 020h, 000h, 000h   ; cmp byte [0x20], 0
    db 075h, 003h                     ; jne 0x6b3
    db 0E9h, 0B9h, 025h               ; jmp 0x2c6c
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 0B5h, 001h, 000h, 000h   ; lcall 0, 0x1b5
    db 0FFh, 036h, 0EAh, 003h         ; push word [0x3ea]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 033h, 0C0h                     ; xor ax, ax
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 0A2h, 0FEh               ; jmp 0x572
    db 080h, 03Eh, 020h, 000h, 000h   ; cmp byte [0x20], 0
    db 075h, 00Bh                     ; jne 0x6e2
    db 0C6h, 006h, 023h, 000h, 001h   ; mov byte [0x23], 1
    db 0A1h, 0EDh, 003h               ; mov ax, word [0x3ed]
    db 0E8h, 0B4h, 015h               ; call 0x1c96
    db 0E9h, 08Dh, 0FEh               ; jmp 0x572
    db 0C6h, 006h, 023h, 000h, 000h   ; mov byte [0x23], 0
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 080h, 0FEh               ; jmp 0x572
    db 083h, 0FAh, 001h               ; cmp dx, 1
    db 076h, 035h                     ; jbe 0x72c
    db 08Bh, 01Eh, 0D3h, 002h         ; mov bx, word [0x2d3]
    db 0B0h, 050h                     ; mov al, 0x50
    db 02Ah, 0C3h                     ; sub al, bl
    db 098h                           ; cwde
    db 03Bh, 0D0h                     ; cmp dx, ax
    db 076h, 028h                     ; jbe 0x72c
    db 02Bh, 0D0h                     ; sub dx, ax
    push dx                                  ; 52
    db 08Bh, 0D0h                     ; mov dx, ax
    db 0E8h, 020h, 000h               ; call 0x72c
    pop dx                                   ; 5A
    db 08Ah, 026h, 0D4h, 002h         ; mov ah, byte [0x2d4]
    db 032h, 0C0h                     ; xor al, al
    db 0FEh, 0C4h                     ; inc ah
    db 083h, 0EAh, 050h               ; sub dx, 0x50
    db 072h, 00Ch                     ; jb 0x726
    push ax                                  ; 50
    push dx                                  ; 52
    db 0BAh, 050h, 000h               ; mov dx, 0x50
    db 0E8h, 00Dh, 000h               ; call 0x72f
    pop dx                                   ; 5A
    pop ax                                   ; 58
    db 0EBh, 0EDh                     ; jmp 0x713
    db 083h, 0C2h, 050h               ; add dx, 0x50
    db 075h, 004h                     ; jne 0x72f
    db 0C3h                           ; ret
    db 0A1h, 0D3h, 002h               ; mov ax, word [0x2d3]
    db 08Bh, 036h, 00Ch, 002h         ; mov si, word [0x20c]
    db 03Bh, 036h, 00Ah, 002h         ; cmp si, word [0x20a]
    db 074h, 03Ah                     ; je 0x773
    db 08Bh, 03Eh, 00Eh, 002h         ; mov di, word [0x20e]
    db 0F6h, 005h, 080h               ; test byte [di], 0x80
    db 075h, 031h                     ; jne 0x773
    db 03Ah, 065h, 001h               ; cmp ah, byte [di + 1]
    db 075h, 02Ch                     ; jne 0x773
    db 08Bh, 01Dh                     ; mov bx, word [di]
    db 032h, 0FFh                     ; xor bh, bh
    db 003h, 05Dh, 002h               ; add bx, word [di + 2]
    dec bx                                   ; 4B
    db 08Bh, 0C8h                     ; mov cx, ax
    db 032h, 0EDh                     ; xor ch, ch
    db 003h, 0CAh                     ; add cx, dx
    dec cx                                   ; 49
    db 03Bh, 0D9h                     ; cmp bx, cx
    db 073h, 002h                     ; jae 0x75c
    db 08Bh, 0D9h                     ; mov bx, cx
    db 03Ah, 005h                     ; cmp al, byte [di]
    db 076h, 002h                     ; jbe 0x762
    db 08Ah, 005h                     ; mov al, byte [di]
    db 098h                           ; cwde
    db 02Bh, 0D8h                     ; sub bx, ax
    inc bx                                   ; 43
    db 088h, 005h                     ; mov byte [di], al
    db 089h, 05Dh, 002h               ; mov word [di + 2], bx
    db 0C3h                           ; ret
    db 0E8h, 0E4h, 000h               ; call 0x853
    db 08Bh, 036h, 00Ch, 002h         ; mov si, word [0x20c]
    db 08Bh, 0FEh                     ; mov di, si
    db 0E8h, 0E4h, 001h               ; call 0x95c
    db 03Bh, 036h, 00Ah, 002h         ; cmp si, word [0x20a]
    db 075h, 009h                     ; jne 0x787
    db 0E8h, 0D2h, 000h               ; call 0x853
    db 08Bh, 036h, 00Ch, 002h         ; mov si, word [0x20c]
    db 0EBh, 0ECh                     ; jmp 0x773
    db 089h, 005h                     ; mov word [di], ax
    db 089h, 055h, 002h               ; mov word [di + 2], dx
    db 089h, 03Eh, 00Eh, 002h         ; mov word [0x20e], di
    db 089h, 036h, 00Ch, 002h         ; mov word [0x20c], si
    db 0C3h                           ; ret
    db 0E8h, 0CAh, 000h               ; call 0x862
    db 08Bh, 03Eh, 044h, 000h         ; mov di, word [0x44]
    db 0F6h, 006h, 0F9h, 000h, 010h   ; test byte [0xf9], 0x10
    db 075h, 017h                     ; jne 0x7ba
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 033h, 0DBh                     ; xor bx, bx
    db 0B9h, 0D0h, 007h               ; mov cx, 0x7d0
    db 0B4h, 020h                     ; mov ah, 0x20
    db 026h, 08Ah, 007h               ; mov al, byte es:[bx]
    db 083h, 0C3h, 002h               ; add bx, 2
    db 03Ah, 0E0h                     ; cmp ah, al
    db 0E1h, 0F6h                     ; loope 0x7ae
    db 075h, 005h                     ; jne 0x7bf
    db 0E8h, 0ECh, 0FEh               ; call 0x6a9
    db 0EBh, 027h                     ; jmp 0x7e6
    db 0BEh, 013h, 001h               ; mov si, 0x113
    db 0C6h, 044h, 0FFh, 028h         ; mov byte [si - 1], 0x28
    db 0BBh, 04Dh, 000h               ; mov bx, 0x4d
    push di                                  ; 57
    db 01Eh                           ; push ds
    push si                                  ; 56
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 003h, 0F0h                     ; add si, ax
    db 0C7h, 004h, 029h, 000h         ; mov word [si], 0x29
    db 0BEh, 012h, 001h               ; mov si, 0x112
    push di                                  ; 57
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 0FFh, 0FEh               ; call 0x6e5
    db 0E8h, 023h, 00Dh               ; call 0x150c
    db 0EBh, 0FBh                     ; jmp 0x7e6
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 08Ah, 0D0h                     ; mov dl, al
    db 08Ah, 0C5h                     ; mov al, ch
    db 08Ah, 0E6h                     ; mov ah, dh
    db 08Ah, 0F7h                     ; mov dh, bh
    db 00Ch, 080h                     ; or al, 0x80
    db 08Bh, 036h, 00Ch, 002h         ; mov si, word [0x20c]
    db 08Bh, 03Eh, 00Ah, 002h         ; mov di, word [0x20a]
    db 03Bh, 0F7h                     ; cmp si, di
    db 074h, 046h                     ; je 0x84b
    db 039h, 005h                     ; cmp word [di], ax
    db 075h, 03Ah                     ; jne 0x843
    db 038h, 075h, 003h               ; cmp byte [di + 3], dh
    db 075h, 035h                     ; jne 0x843
    db 08Ah, 04Dh, 002h               ; mov cl, byte [di + 2]
    db 080h, 0F9h, 002h               ; cmp cl, 2
    db 073h, 02Dh                     ; jae 0x843
    db 002h, 0D1h                     ; add dl, cl
    db 080h, 0FAh, 019h               ; cmp dl, 0x19
    db 076h, 002h                     ; jbe 0x81f
    db 0B2h, 019h                     ; mov dl, 0x19
    db 088h, 055h, 002h               ; mov byte [di + 2], dl
    db 08Bh, 015h                     ; mov dx, word [di]
    db 080h, 0E2h, 07Fh               ; and dl, 0x7f
    db 087h, 0F7h                     ; xchg di, si
    db 0E8h, 030h, 001h               ; call 0x95c
    db 03Bh, 0F7h                     ; cmp si, di
    db 074h, 01Eh                     ; je 0x84e
    db 08Bh, 004h                     ; mov ax, word [si]
    db 00Ah, 0C0h                     ; or al, al
    db 078h, 0F3h                     ; js 0x829
    db 03Ah, 0E6h                     ; cmp ah, dh
    db 077h, 0EFh                     ; ja 0x829
    db 03Ah, 0E2h                     ; cmp ah, dl
    db 072h, 0EBh                     ; jb 0x829
    db 0FEh, 04Ch, 001h               ; dec byte [si + 1]
    db 0EBh, 0E6h                     ; jmp 0x829
    db 0E8h, 026h, 0FFh               ; call 0x76c
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0E8h, 025h, 0FFh               ; call 0x773
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 0E8h, 010h, 000h               ; call 0x86a
    db 0E8h, 04Fh, 003h               ; call 0xbac
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    push ax                                  ; 50
    push di                                  ; 57
    db 0E8h, 014h, 000h               ; call 0x87b
    pop di                                   ; 5F
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0A1h, 00Ah, 002h               ; mov ax, word [0x20a]
    db 03Bh, 006h, 00Ch, 002h         ; cmp ax, word [0x20c]
    db 074h, 077h                     ; je 0x8ea
    db 0E8h, 0C0h, 00Ch               ; call 0x1536
    db 075h, 0FBh                     ; jne 0x873
    db 0E8h, 031h, 003h               ; call 0xbac
    db 0B2h, 001h                     ; mov dl, 1
    db 086h, 016h, 022h, 000h         ; xchg byte [0x22], dl
    db 00Ah, 0D2h                     ; or dl, dl
    db 075h, 0E4h                     ; jne 0x869
    db 0C6h, 006h, 014h, 000h, 0FFh   ; mov byte [0x14], 0xff
    db 08Bh, 036h, 00Ah, 002h         ; mov si, word [0x20a]
    db 03Bh, 036h, 00Ch, 002h         ; cmp si, word [0x20c]
    db 074h, 051h                     ; je 0x8e5
    db 08Bh, 014h                     ; mov dx, word [si]
    db 08Bh, 04Ch, 002h               ; mov cx, word [si + 2]
    db 0E8h, 0C0h, 000h               ; call 0x95c
    db 089h, 036h, 00Ah, 002h         ; mov word [0x20a], si
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 074h, 0E3h                     ; je 0x88a
    db 0F6h, 0C2h, 080h               ; test dl, 0x80
    db 075h, 016h                     ; jne 0x8c2
    db 080h, 0FEh, 000h               ; cmp dh, 0
    db 07Ch, 0D9h                     ; jl 0x88a
    db 03Ah, 036h, 014h, 000h         ; cmp dh, byte [0x14]
    db 076h, 006h                     ; jbe 0x8bd
    db 03Ah, 036h, 015h, 000h         ; cmp dh, byte [0x15]
    db 076h, 0CDh                     ; jbe 0x88a
    db 0E8h, 034h, 000h               ; call 0x8f4
    db 0EBh, 0C8h                     ; jmp 0x88a
    db 08Bh, 0C2h                     ; mov ax, dx
    db 08Ah, 0C6h                     ; mov al, dh
    db 02Ah, 0C1h                     ; sub al, cl
    db 0A3h, 014h, 000h               ; mov word [0x14], ax
    db 08Ah, 0C1h                     ; mov al, cl
    db 08Ah, 0FDh                     ; mov bh, ch
    db 033h, 0C9h                     ; xor cx, cx
    db 08Ah, 0EAh                     ; mov ch, dl
    db 080h, 0E5h, 07Fh               ; and ch, 0x7f
    db 0B2h, 04Fh                     ; mov dl, 0x4f
    db 0F6h, 01Eh, 022h, 000h         ; neg byte [0x22]
    db 0E8h, 092h, 000h               ; call 0x971
    db 0F6h, 01Eh, 022h, 000h         ; neg byte [0x22]
    db 0EBh, 0A5h                     ; jmp 0x88a
    db 0C6h, 006h, 022h, 000h, 000h   ; mov byte [0x22], 0
    db 080h, 03Eh, 0ECh, 003h, 000h   ; cmp byte [0x3ec], 0
    db 074h, 06Ah                     ; je 0x95b
    db 0E9h, 0C6h, 013h               ; jmp 0x1cba
    push dx                                  ; 52
    push cx                                  ; 51
    db 08Bh, 0DAh                     ; mov bx, dx
    db 08Ah, 0C7h                     ; mov al, bh
    db 098h                           ; cwde
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E0h                     ; shl ax, cl
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0D1h, 0E0h                     ; shl ax, 1
    db 003h, 0C1h                     ; add ax, cx
    db 032h, 0FFh                     ; xor bh, bh
    db 003h, 0D8h                     ; add bx, ax
    db 0D1h, 0E3h                     ; shl bx, 1
    push bx                                  ; 53
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    db 09Ah, 0DAh, 001h, 000h, 000h   ; lcall 0, 0x1da
    db 0A3h, 01Eh, 000h               ; mov word [0x1e], ax
    db 08Bh, 0F8h                     ; mov di, ax
    push di                                  ; 57
    db 0FFh, 036h, 03Eh, 002h         ; push word [0x23e]
    db 09Ah, 0D8h, 003h, 000h, 000h   ; lcall 0, 0x3d8
    pop si                                   ; 5E
    pop cx                                   ; 59
    pop dx                                   ; 5A
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 0F6h, 0E6h                     ; mul dh
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 0A3h, 0EEh, 001h               ; mov word [0x1ee], ax
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0F6h, 0E2h                     ; mul dl
    db 02Bh, 006h, 016h, 000h         ; sub ax, word [0x16]
    db 0A3h, 0ECh, 001h               ; mov word [0x1ec], ax
    db 0E8h, 04Fh, 0FBh               ; call 0x49a
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 0FFh, 036h, 01Eh, 000h         ; push word [0x1e]
    db 09Ah, 0F7h, 001h, 000h, 000h   ; lcall 0, 0x1f7
    db 0E8h, 05Fh, 013h               ; call 0x1cba
    db 0C3h                           ; ret
    db 083h, 0C6h, 004h               ; add si, 4
    db 081h, 0FEh, 00Ah, 002h         ; cmp si, 0x20a
    db 072h, 003h                     ; jb 0x968
    db 0BEh, 0F6h, 001h               ; mov si, 0x1f6
    db 0C3h                           ; ret
    push ax                                  ; 50
    push bx                                  ; 53
    db 0F6h, 026h, 01Ah, 000h         ; mul byte [0x1a]
    db 0EBh, 008h                     ; jmp 0x979
    push ax                                  ; 50
    push bx                                  ; 53
    db 0F6h, 026h, 01Ah, 000h         ; mul byte [0x1a]
    db 0F7h, 0D8h                     ; neg ax
    db 08Bh, 0D8h                     ; mov bx, ax
    db 0E8h, 0A4h, 000h               ; call 0xa22
    push cx                                  ; 51
    push dx                                  ; 52
    db 0E8h, 06Ah, 000h               ; call 0x9ed
    db 033h, 0C9h                     ; xor cx, cx
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    db 0BFh, 0ECh, 001h               ; mov di, 0x1ec
    push si                                  ; 56
    push cx                                  ; 51
    push bx                                  ; 53
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 019h, 013h               ; call 0x1cba
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push di                                  ; 57
    push si                                  ; 56
    db 0E8h, 0A4h, 0FEh               ; call 0x853
    db 0E8h, 070h, 000h               ; call 0xa22
    db 08Bh, 036h, 03Ah, 002h         ; mov si, word [0x23a]
    db 0F6h, 0C7h, 070h               ; test bh, 0x70
    db 074h, 004h                     ; je 0x9bf
    db 08Bh, 036h, 03Ch, 002h         ; mov si, word [0x23c]
    db 0E8h, 02Bh, 000h               ; call 0x9ed
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 01Ah, 009h, 000h, 000h   ; lcall 0, 0x91a
    db 08Bh, 0F8h                     ; mov di, ax
    db 0B8h, 0ECh, 001h               ; mov ax, 0x1ec
    push di                                  ; 57
    db 01Eh                           ; push ds
    push ax                                  ; 50
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push di                                  ; 57
    db 09Ah, 054h, 009h, 000h, 000h   ; lcall 0, 0x954
    db 0E8h, 0D4h, 012h               ; call 0x1cba
    pop si                                   ; 5E
    pop di                                   ; 5F
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 0F6h, 0E5h                     ; mul ch
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 0A3h, 0EEh, 001h               ; mov word [0x1ee], ax
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 0FEh, 0C6h                     ; inc dh
    db 0F6h, 0E6h                     ; mul dh
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 0A3h, 0F2h, 001h               ; mov word [0x1f2], ax
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0F6h, 0E1h                     ; mul cl
    db 02Bh, 006h, 016h, 000h         ; sub ax, word [0x16]
    db 0A3h, 0ECh, 001h               ; mov word [0x1ec], ax
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0FEh, 0C2h                     ; inc dl
    db 0F6h, 0E2h                     ; mul dl
    db 02Bh, 006h, 016h, 000h         ; sub ax, word [0x16]
    db 0A3h, 0F0h, 001h               ; mov word [0x1f0], ax
    db 0C3h                           ; ret
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 014h, 009h, 000h, 000h   ; lcall 0, 0x914
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 0E8h, 010h, 000h               ; call 0xa62
    db 074h, 00Dh                     ; je 0xa61
    db 081h, 0FAh, 00Dh, 00Ah         ; cmp dx, 0xa0d
    db 074h, 001h                     ; je 0xa5b
    dec si                                   ; 4E
    db 089h, 036h, 016h, 002h         ; mov word [0x216], si
    db 00Bh, 0F6h                     ; or si, si
    db 0C3h                           ; ret
    db 0A1h, 014h, 002h               ; mov ax, word [0x214]
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 024h                     ; je 0xa8d
    push di                                  ; 57
    db 0E8h, 000h, 001h               ; call 0xb6d
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Bh, 036h, 016h, 002h         ; mov si, word [0x216]
    db 026h, 0ADh                     ; lodsw ax, word es:[si]
    push ax                                  ; 50
    db 0E8h, 0C9h, 000h               ; call 0xb42
    pop dx                                   ; 5A
    db 00Ah, 0D2h                     ; or dl, dl
    db 075h, 00Eh                     ; jne 0xa8c
    db 033h, 0D2h                     ; xor dx, dx
    db 087h, 016h, 014h, 002h         ; xchg word [0x214], dx
    push dx                                  ; 52
    db 09Ah, 0C1h, 006h, 000h, 000h   ; lcall 0, 0x6c1
    db 033h, 0D2h                     ; xor dx, dx
    pop di                                   ; 5F
    db 0C3h                           ; ret
    db 033h, 0FFh                     ; xor di, di
    db 039h, 03Eh, 014h, 002h         ; cmp word [0x214], di
    db 075h, 068h                     ; jne 0xafe
    push si                                  ; 56
    db 09Ah, 039h, 00Ah, 000h, 000h   ; lcall 0, 0xa39
    db 089h, 03Eh, 016h, 002h         ; mov word [0x216], di
    inc di                                   ; 47
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0F8h                     ; mov di, ax
    db 00Bh, 0FFh                     ; or di, di
    db 074h, 04Ch                     ; je 0xaf9
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0BBh, 042h, 000h               ; mov bx, 0x42
    db 08Bh, 0F0h                     ; mov si, ax
    push bx                                  ; 53
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 069h, 001h, 000h, 000h   ; lcall 0, 0x169
    db 0E3h, 037h                     ; jcxz 0xaf9
    push si                                  ; 56
    db 0A3h, 014h, 002h               ; mov word [0x214], ax
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push dx                                  ; 52
    push di                                  ; 57
    db 09Ah, 0C8h, 00Ah, 000h, 000h   ; lcall 0, 0xac8
    db 007h                           ; pop es
    pop cx                                   ; 59
    push di                                  ; 57
    db 01Eh                           ; push ds
    db 08Eh, 0DAh                     ; mov ds, dx
    db 033h, 0FFh                     ; xor di, di
    db 033h, 0F6h                     ; xor si, si
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 033h, 0FFh                     ; xor di, di
    db 006h                           ; push es
    push di                                  ; 57
    db 006h                           ; push es
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 01Fh                           ; pop ds
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0FFh, 036h, 014h, 002h         ; push word [0x214]
    db 09Ah, 0ECh, 00Ah, 000h, 000h   ; lcall 0, 0xaec
    db 09Ah, 04Ah, 00Ah, 000h, 000h   ; lcall 0, 0xa4a
    db 033h, 0C0h                     ; xor ax, ax
    db 099h                           ; cdq
    db 0C3h                           ; ret
    db 033h, 0C0h                     ; xor ax, ax
    db 083h, 03Eh, 082h, 002h, 0FFh   ; cmp word [0x282], -1
    db 074h, 043h                     ; je 0xb4e
    db 0E8h, 06Bh, 002h               ; call 0xd79
    db 032h, 0F6h                     ; xor dh, dh
    push bx                                  ; 53
    push dx                                  ; 52
    db 08Bh, 0C3h                     ; mov ax, bx
    db 005h, 002h, 000h               ; add ax, 2
    db 0F7h, 0E2h                     ; mul dx
    inc ax                                   ; 40
    db 0E8h, 040h, 000h               ; call 0xb5d
    db 08Eh, 01Eh, 0EAh, 003h         ; mov ds, word [0x3ea]
    db 08Bh, 0F7h                     ; mov si, di
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Bh, 0F8h                     ; mov di, ax
    pop dx                                   ; 5A
    pop bx                                   ; 5B
    db 08Bh, 0CBh                     ; mov cx, bx
    push si                                  ; 56
    db 0ADh                           ; lodsw ax, word [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 0E2h, 0FCh                     ; loop 0xb2c
    db 0B8h, 00Dh, 00Ah               ; mov ax, 0xa0d
    db 0ABh                           ; stosw word es:[di], ax
    pop si                                   ; 5E
    db 081h, 0C6h, 0A0h, 000h         ; add si, 0xa0
    dec dx                                   ; 4A
    db 075h, 0EDh                     ; jne 0xb29
    db 033h, 0C0h                     ; xor ax, ax
    db 0AAh                           ; stosb byte es:[di], al
    db 0E8h, 00Dh, 000h               ; call 0xb4f
    db 08Bh, 03Eh, 084h, 002h         ; mov di, word [0x284]
    push di                                  ; 57
    db 09Ah, 0F5h, 00Ah, 000h, 000h   ; lcall 0, 0xaf5
    db 08Bh, 0C7h                     ; mov ax, di
    db 0C3h                           ; ret
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 033h, 0FFh                     ; xor di, di
    db 006h                           ; push es
    push di                                  ; 57
    db 006h                           ; push es
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 099h                           ; cdq
    db 0BBh, 042h, 020h               ; mov bx, 0x2042
    push bx                                  ; 53
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 0BCh, 00Ah, 000h, 000h   ; lcall 0, 0xabc
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Ch                     ; je 0xb79
    db 0A3h, 084h, 002h               ; mov word [0x284], ax
    push ax                                  ; 50
    db 09Ah, 0CFh, 00Ah, 000h, 000h   ; lcall 0, 0xacf
    cld                                      ; FC
    db 00Bh, 0D2h                     ; or dx, dx
    db 0C3h                           ; ret
    push di                                  ; 57
    db 0E8h, 06Bh, 001h               ; call 0xce9
    db 0E8h, 097h, 001h               ; call 0xd18
    pop bx                                   ; 5B
    db 083h, 0C3h, 006h               ; add bx, 6
    db 0E8h, 028h, 008h               ; call 0x13b0
    db 0E8h, 0EEh, 001h               ; call 0xd79
    inc di                                   ; 47
    db 08Ah, 026h, 0C3h, 002h         ; mov ah, byte [0x2c3]
    db 08Ah, 036h, 0C4h, 002h         ; mov dh, byte [0x2c4]
    db 08Bh, 0CBh                     ; mov cx, bx
    push di                                  ; 57
    db 026h, 08Ah, 005h               ; mov al, byte es:[di]
    db 022h, 0C4h                     ; and al, ah
    db 00Ah, 0C6h                     ; or al, dh
    db 0AAh                           ; stosb byte es:[di], al
    inc di                                   ; 47
    db 0E2h, 0F5h                     ; loop 0xb97
    pop di                                   ; 5F
    db 081h, 0C7h, 0A0h, 000h         ; add di, 0xa0
    db 0FEh, 0CAh                     ; dec dl
    db 075h, 0E9h                     ; jne 0xb94
    db 0C3h                           ; ret
    db 080h, 03Eh, 082h, 002h, 0FFh   ; cmp byte [0x282], 0xff
    db 074h, 02Fh                     ; je 0xbe2
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    db 006h                           ; push es
    db 0C6h, 006h, 0C4h, 002h, 000h   ; mov byte [0x2c4], 0
    db 0C6h, 006h, 0C3h, 002h, 07Fh   ; mov byte [0x2c3], 0x7f
    db 0F6h, 006h, 082h, 002h, 080h   ; test byte [0x282], 0x80
    db 075h, 008h                     ; jne 0xbd3
    db 0BFh, 097h, 002h               ; mov di, 0x297
    db 08Bh, 005h                     ; mov ax, word [di]
    db 0E8h, 0A7h, 0FFh               ; call 0xb7a
    db 0C6h, 006h, 082h, 002h, 0FFh   ; mov byte [0x282], 0xff
    db 0E8h, 016h, 000h               ; call 0xbf1
    db 007h                           ; pop es
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0C6h, 006h, 086h, 002h, 001h   ; mov byte [0x286], 1
    db 0E8h, 03Ah, 001h               ; call 0xd25
    db 00Ch, 080h                     ; or al, 0x80
    db 0A3h, 082h, 002h               ; mov word [0x282], ax
    db 0C3h                           ; ret
    db 0E8h, 0DFh, 004h               ; call 0x10d3
    db 0B8h, 0F0h, 0FFh               ; mov ax, 0xfff0
    db 0BBh, 001h, 000h               ; mov bx, 1
    db 0FFh, 036h, 046h, 000h         ; push word [0x46]
    push ax                                  ; 50
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 080h, 03Eh, 086h, 002h, 000h   ; cmp byte [0x286], 0
    db 074h, 0E4h                     ; je 0xbf1
    db 0F6h, 006h, 082h, 002h, 080h   ; test byte [0x282], 0x80
    db 074h, 025h                     ; je 0xc39
    db 006h                           ; push es
    push di                                  ; 57
    db 0C6h, 006h, 0C4h, 002h, 080h   ; mov byte [0x2c4], 0x80
    db 0C6h, 006h, 0C3h, 002h, 0FFh   ; mov byte [0x2c3], 0xff
    db 0A1h, 082h, 002h               ; mov ax, word [0x282]
    db 024h, 07Fh                     ; and al, 0x7f
    db 0A3h, 082h, 002h               ; mov word [0x282], ax
    db 0BFh, 097h, 002h               ; mov di, 0x297
    db 0E8h, 04Ch, 0FFh               ; call 0xb7a
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 0B8h, 0F0h, 0FFh               ; mov ax, 0xfff0
    db 0E8h, 0C3h, 0FFh               ; call 0xbfa
    pop di                                   ; 5F
    db 007h                           ; pop es
    db 0E8h, 0E9h, 000h               ; call 0xd25
    db 03Bh, 006h, 097h, 002h         ; cmp ax, word [0x297]
    db 074h, 069h                     ; je 0xcab
    push ax                                  ; 50
    db 0C6h, 006h, 0C4h, 002h, 000h   ; mov byte [0x2c4], 0
    db 0C6h, 006h, 0C3h, 002h, 07Fh   ; mov byte [0x2c3], 0x7f
    db 0E8h, 038h, 0FFh               ; call 0xb88
    db 0A1h, 097h, 002h               ; mov ax, word [0x297]
    db 0BFh, 0A5h, 002h               ; mov di, 0x2a5
    db 0E8h, 090h, 000h               ; call 0xce9
    pop ax                                   ; 58
    db 0BFh, 097h, 002h               ; mov di, 0x297
    db 0E8h, 089h, 000h               ; call 0xce9
    db 0BBh, 09Dh, 002h               ; mov bx, 0x29d
    db 0B9h, 0ABh, 002h               ; mov cx, 0x2ab
    db 0BAh, 0B3h, 002h               ; mov dx, 0x2b3
    db 01Eh                           ; push ds
    push dx                                  ; 52
    db 01Eh                           ; push ds
    push bx                                  ; 53
    db 01Eh                           ; push ds
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 0A1h, 000h               ; call 0xd18
    push di                                  ; 57
    db 0FFh, 036h, 0B3h, 002h         ; push word [0x2b3]
    db 0FFh, 036h, 0B5h, 002h         ; push word [0x2b5]
    db 0FFh, 036h, 0B7h, 002h         ; push word [0x2b7]
    db 0FFh, 036h, 0B9h, 002h         ; push word [0x2b9]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0B9h, 0ABh, 002h               ; mov cx, 0x2ab
    push di                                  ; 57
    db 01Eh                           ; push ds
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C6h, 006h, 0C4h, 002h, 080h   ; mov byte [0x2c4], 0x80
    db 0C6h, 006h, 0C3h, 002h, 0FFh   ; mov byte [0x2c3], 0xff
    db 0BBh, 09Dh, 002h               ; mov bx, 0x29d
    db 0E8h, 0DDh, 0FEh               ; call 0xb85
    db 0A1h, 097h, 002h               ; mov ax, word [0x297]
    db 0E8h, 0B4h, 000h               ; call 0xd62
    db 00Bh, 0C0h                     ; or ax, ax
    db 07Ch, 00Ch                     ; jl 0xcbe
    db 003h, 006h, 01Ch, 000h         ; add ax, word [0x1c]
    db 02Bh, 006h, 0CBh, 002h         ; sub ax, word [0x2cb]
    db 07Fh, 002h                     ; jg 0xcbe
    db 033h, 0C0h                     ; xor ax, ax
    db 00Bh, 0D2h                     ; or dx, dx
    db 07Ch, 00Ah                     ; jl 0xccc
    db 003h, 016h, 01Ah, 000h         ; add dx, word [0x1a]
    db 02Bh, 016h, 0C9h, 002h         ; sub dx, word [0x2c9]
    db 07Eh, 00Dh                     ; jle 0xcd9
    push ax                                  ; 50
    db 003h, 016h, 018h, 000h         ; add dx, word [0x18]
    db 08Bh, 0FAh                     ; mov di, dx
    db 0B1h, 004h                     ; mov cl, 4
    db 0E8h, 07Dh, 005h               ; call 0x1255
    pop ax                                   ; 58
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Bh                     ; je 0xce8
    db 003h, 006h, 016h, 000h         ; add ax, word [0x16]
    db 08Bh, 0F8h                     ; mov di, ax
    db 0B1h, 004h                     ; mov cl, 4
    db 0E9h, 090h, 005h               ; jmp 0x1278
    db 0C3h                           ; ret
    cld                                      ; FC
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0ABh                           ; stosw word es:[di], ax
    db 08Bh, 01Eh, 082h, 002h         ; mov bx, word [0x282]
    db 03Ah, 0D8h                     ; cmp bl, al
    db 076h, 002h                     ; jbe 0xcf7
    db 086h, 0D8h                     ; xchg al, bl
    db 03Ah, 0FCh                     ; cmp bh, ah
    db 076h, 002h                     ; jbe 0xcfd
    db 086h, 0FCh                     ; xchg ah, bh
    db 0ABh                           ; stosw word es:[di], ax
    push ax                                  ; 50
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0ABh                           ; stosw word es:[di], ax
    db 0E8h, 05Dh, 000h               ; call 0xd62
    db 0ABh                           ; stosw word es:[di], ax
    db 092h                           ; xchg dx, ax
    db 0ABh                           ; stosw word es:[di], ax
    pop ax                                   ; 58
    db 0E8h, 056h, 000h               ; call 0xd62
    db 003h, 006h, 01Ch, 000h         ; add ax, word [0x1c]
    db 0ABh                           ; stosw word es:[di], ax
    db 092h                           ; xchg dx, ax
    db 003h, 006h, 01Ah, 000h         ; add ax, word [0x1a]
    db 0ABh                           ; stosw word es:[di], ax
    db 0C3h                           ; ret
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    push si                                  ; 56
    db 09Ah, 0C7h, 009h, 000h, 000h   ; lcall 0, 0x9c7
    db 08Bh, 0F8h                     ; mov di, ax
    db 0C3h                           ; ret
    db 08Bh, 0C7h                     ; mov ax, di
    db 003h, 006h, 016h, 000h         ; add ax, word [0x16]
    db 099h                           ; cdq
    db 08Bh, 01Eh, 01Ch, 000h         ; mov bx, word [0x1c]
    db 0F7h, 0FBh                     ; idiv bx
    db 08Bh, 0C8h                     ; mov cx, ax
    db 08Ch, 0C0h                     ; mov ax, es
    db 003h, 006h, 018h, 000h         ; add ax, word [0x18]
    db 099h                           ; cdq
    db 08Bh, 01Eh, 01Ah, 000h         ; mov bx, word [0x1a]
    db 0F7h, 0FBh                     ; idiv bx
    db 08Ah, 0E8h                     ; mov ch, al
    db 08Bh, 0C1h                     ; mov ax, cx
    db 03Ch, 000h                     ; cmp al, 0
    db 07Dh, 002h                     ; jge 0xd4b
    db 0B0h, 000h                     ; mov al, 0
    db 080h, 0FCh, 000h               ; cmp ah, 0
    db 07Dh, 002h                     ; jge 0xd52
    db 0B4h, 000h                     ; mov ah, 0
    db 0B9h, 04Fh, 018h               ; mov cx, 0x184f
    db 03Ah, 0C1h                     ; cmp al, cl
    db 07Eh, 002h                     ; jle 0xd5b
    db 08Ah, 0C1h                     ; mov al, cl
    db 03Ah, 0E5h                     ; cmp ah, ch
    db 07Eh, 002h                     ; jle 0xd61
    db 08Ah, 0E5h                     ; mov ah, ch
    db 0C3h                           ; ret
    db 08Bh, 0D0h                     ; mov dx, ax
    db 0F6h, 02Eh, 01Ch, 000h         ; imul byte [0x1c]
    db 02Bh, 006h, 016h, 000h         ; sub ax, word [0x16]
    db 092h                           ; xchg dx, ax
    db 08Ah, 0C4h                     ; mov al, ah
    db 0F6h, 02Eh, 01Ah, 000h         ; imul byte [0x1a]
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 092h                           ; xchg dx, ax
    db 0C3h                           ; ret
    db 08Bh, 01Eh, 09Bh, 002h         ; mov bx, word [0x29b]
    push bx                                  ; 53
    db 0E8h, 02Bh, 009h               ; call 0x16ac
    db 08Bh, 0FBh                     ; mov di, bx
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    pop cx                                   ; 59
    db 08Bh, 01Eh, 099h, 002h         ; mov bx, word [0x299]
    db 02Bh, 0D9h                     ; sub bx, cx
    db 0FEh, 0C7h                     ; inc bh
    db 0FEh, 0C3h                     ; inc bl
    db 08Ah, 0D7h                     ; mov dl, bh
    db 032h, 0FFh                     ; xor bh, bh
    db 0C3h                           ; ret
    db 08Bh, 0FBh                     ; mov di, bx
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 04Dh, 000h               ; call 0xdf4
    db 0FFh, 005h                     ; inc word [di]
    db 0FFh, 04Dh, 004h               ; dec word [di + 4]
    db 0E8h, 045h, 000h               ; call 0xdf4
    db 0B8h, 001h, 000h               ; mov ax, 1
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 00Eh, 090h, 002h         ; mov cx, word [0x290]
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0D1h, 0E8h                     ; shr ax, 1
    db 08Bh, 01Eh, 01Ah, 000h         ; mov bx, word [0x1a]
    db 0D1h, 0EBh                     ; shr bx, 1
    db 0D1h, 0EBh                     ; shr bx, 1
    inc bx                                   ; 43
    db 0BAh, 08Ah, 002h               ; mov dx, 0x28a
    db 0E8h, 017h, 000h               ; call 0xde8
    db 08Bh, 00Eh, 092h, 002h         ; mov cx, word [0x292]
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0D1h, 0E8h                     ; shr ax, 1
    db 08Bh, 05Dh, 006h               ; mov bx, word [di + 6]
    db 02Bh, 05Dh, 002h               ; sub bx, word [di + 2]
    db 02Bh, 01Eh, 01Ah, 000h         ; sub bx, word [0x1a]
    dec bx                                   ; 4B
    db 0BAh, 094h, 002h               ; mov dx, 0x294
    push si                                  ; 56
    push ax                                  ; 50
    push bx                                  ; 53
    db 01Eh                           ; push ds
    push dx                                  ; 52
    push cx                                  ; 51
    db 09Ah, 03Dh, 005h, 000h, 000h   ; lcall 0, 0x53d
    db 0C3h                           ; ret
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 0FFh, 036h, 03Ch, 002h         ; push word [0x23c]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 0BFh, 04Eh, 000h               ; mov di, 0x4e
    db 016h                           ; push ss
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 0E8h, 070h, 01Dh               ; call 0x2b80
    db 08Bh, 005h                     ; mov ax, word [di]
    db 0A3h, 08Ah, 002h               ; mov word [0x28a], ax
    db 08Bh, 045h, 002h               ; mov ax, word [di + 2]
    db 0A3h, 08Ch, 002h               ; mov word [0x28c], ax
    db 0BBh, 0FFh, 0FFh               ; mov bx, 0xffff
    inc bx                                   ; 43
    db 080h, 039h, 02Eh               ; cmp byte [bx + di], 0x2e
    db 075h, 0FAh                     ; jne 0xe1e
    db 083h, 0FBh, 003h               ; cmp bx, 3
    db 072h, 003h                     ; jb 0xe2c
    db 0BBh, 003h, 000h               ; mov bx, 3
    db 0C7h, 087h, 08Ah, 002h, 000h, 000h ; mov word [bx + 0x28a], 0
    db 0C6h, 087h, 08Ch, 002h, 000h   ; mov byte [bx + 0x28c], 0
    db 089h, 01Eh, 090h, 002h         ; mov word [0x290], bx
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Ch, 0D1h                     ; mov cx, ss
    db 026h, 08Bh, 016h, 004h, 000h   ; mov dx, word es:[4]
    db 03Bh, 0D1h                     ; cmp dx, cx
    db 074h, 034h                     ; je 0xe81
    db 08Eh, 0DAh                     ; mov ds, dx
    db 081h, 03Eh, 010h, 000h, 043h, 050h ; cmp word [0x10], 0x5043
    db 075h, 02Ah                     ; jne 0xe81
    db 0A1h, 08Ah, 002h               ; mov ax, word [0x28a]
    db 036h, 03Bh, 006h, 08Ah, 002h   ; cmp ax, word ss:[0x28a]
    db 075h, 020h                     ; jne 0xe81
    db 0A1h, 08Ch, 002h               ; mov ax, word [0x28c]
    db 036h, 03Bh, 006h, 08Ch, 002h   ; cmp ax, word ss:[0x28c]
    db 075h, 016h                     ; jne 0xe81
    db 0A1h, 092h, 002h               ; mov ax, word [0x292]
    db 036h, 03Bh, 006h, 092h, 002h   ; cmp ax, word ss:[0x292]
    db 075h, 00Ch                     ; jne 0xe81
    db 03Dh, 003h, 000h               ; cmp ax, 3
    db 073h, 010h                     ; jae 0xe8a
    db 036h, 0FFh, 006h, 092h, 002h   ; inc word ss:[0x292]
    db 0EBh, 0BAh                     ; jmp 0xe3b
    db 026h, 08Bh, 016h, 000h, 000h   ; mov dx, word es:[0]
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 0B6h                     ; jne 0xe40
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 0BFh, 003h, 000h               ; mov di, 3
    db 0E8h, 045h, 000h               ; call 0xed8
    db 01Eh                           ; push ds
    push cx                                  ; 51
    push di                                  ; 57
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0F0h                     ; mov si, ax
    db 0B8h, 001h, 000h               ; mov ax, 1
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    db 09Ah, 09Ah, 009h, 000h, 000h   ; lcall 0, 0x99a
    db 0EBh, 0FEh                     ; jmp 0xeb3
    db 0BFh, 002h, 000h               ; mov di, 2
    db 0EBh, 003h                     ; jmp 0xebd
    db 0BFh, 001h, 000h               ; mov di, 1
    db 0E8h, 018h, 000h               ; call 0xed8
    push dx                                  ; 52
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push cx                                  ; 51
    push di                                  ; 57
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0F8h                     ; mov di, ax
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 089h, 03Eh, 080h, 002h         ; mov word [0x280], di
    db 0BBh, 0EAh, 00Eh               ; mov bx, 0xeea
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 01Eh                           ; push ds
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 033h, 0C9h                     ; xor cx, cx
    db 0C3h                           ; ret
    db 08Ch, 0D8h                     ; mov ax, ds
    nop                                      ; 90
    inc bp                                   ; 45
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 01Eh                           ; push ds
    db 08Eh, 0D8h                     ; mov ds, ax
    push si                                  ; 56
    push di                                  ; 57
    db 08Bh, 076h, 00Eh               ; mov si, word [bp + 0xe]
    db 08Bh, 046h, 00Ch               ; mov ax, word [bp + 0xc]
    db 03Dh, 010h, 001h               ; cmp ax, 0x110
    db 075h, 043h                     ; jne 0xf44
    db 0B9h, 091h, 000h               ; mov cx, 0x91
    db 080h, 03Eh, 080h, 002h, 001h   ; cmp byte [0x280], 1
    db 075h, 00Ah                     ; jne 0xf15
    push si                                  ; 56
    db 01Eh                           ; push ds
    push cx                                  ; 51
    db 09Ah, 0DFh, 007h, 000h, 000h   ; lcall 0, 0x7df
    db 0EBh, 07Ah                     ; jmp 0xf8f
    db 080h, 03Eh, 080h, 002h, 002h   ; cmp byte [0x280], 2
    db 075h, 014h                     ; jne 0xf30
    db 0B8h, 00Ah, 000h               ; mov ax, 0xa
    push si                                  ; 56
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0EBh, 05Fh                     ; jmp 0xf8f
    db 0BFh, 0BBh, 002h               ; mov di, 0x2bb
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0EBh, 04Bh                     ; jmp 0xf8f
    db 03Dh, 011h, 001h               ; cmp ax, 0x111
    db 08Bh, 05Eh, 00Ah               ; mov bx, word [bp + 0xa]
    db 0B8h, 000h, 000h               ; mov ax, 0
    db 075h, 042h                     ; jne 0xf91
    db 00Ah, 0FFh                     ; or bh, bh
    db 075h, 03Eh                     ; jne 0xf91
    db 080h, 0FBh, 001h               ; cmp bl, 1
    db 074h, 00Ah                     ; je 0xf62
    db 080h, 0FBh, 002h               ; cmp bl, 2
    db 074h, 005h                     ; je 0xf62
    db 080h, 0FBh, 007h               ; cmp bl, 7
    db 075h, 02Fh                     ; jne 0xf91
    db 08Bh, 0C3h                     ; mov ax, bx
    db 080h, 03Eh, 080h, 002h, 001h   ; cmp byte [0x280], 1
    db 075h, 01Dh                     ; jne 0xf88
    db 0B8h, 00Ah, 000h               ; mov ax, 0xa
    db 0BBh, 0E9h, 002h               ; mov bx, 0x2e9
    db 0C6h, 047h, 0FFh, 020h         ; mov byte [bx - 1], 0x20
    db 0B9h, 07Eh, 000h               ; mov cx, 0x7e
    push si                                  ; 56
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push bx                                  ; 53
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 04Bh, 019h               ; call 0x28d0
    db 0B8h, 001h, 000h               ; mov ax, 1
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0B0h, 001h                     ; mov al, 1
    db 099h                           ; cdq
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 083h, 0EDh, 002h               ; sub bp, 2
    db 08Bh, 0E5h                     ; mov sp, bp
    db 01Fh                           ; pop ds
    pop bp                                   ; 5D
    dec bp                                   ; 4D
    db 0CAh, 00Ah, 000h               ; retf 0xa
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 074h, 02Bh                     ; je 0xfd1
    db 083h, 0F9h, 012h               ; cmp cx, 0x12
    db 075h, 026h                     ; jne 0xfd1
    db 033h, 0C9h                     ; xor cx, cx
    db 0BFh, 001h, 000h               ; mov di, 1
    db 0E9h, 09Eh, 000h               ; jmp 0x1051
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 074h, 017h                     ; je 0xfd1
    db 0BBh, 012h, 000h               ; mov bx, 0x12
    db 0E8h, 0D8h, 0F6h               ; call 0x698
    db 079h, 00Fh                     ; jns 0xfd1
    db 083h, 0F9h, 020h               ; cmp cx, 0x20
    db 074h, 00Ah                     ; je 0xfd1
    db 083h, 0F9h, 00Dh               ; cmp cx, 0xd
    db 074h, 005h                     ; je 0xfd1
    db 083h, 0F9h, 009h               ; cmp cx, 9
    db 075h, 00Fh                     ; jne 0xfe0
    db 02Eh, 0C5h, 01Eh, 0A8h, 034h   ; lds bx, cs:[0x34a8]
    db 080h, 03Fh, 000h               ; cmp byte [bx], 0
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 075h, 003h                     ; jne 0xfe0
    db 0E9h, 0B5h, 0F5h               ; jmp 0x595
    db 080h, 03Eh, 087h, 002h, 000h   ; cmp byte [0x287], 0
    db 074h, 003h                     ; je 0xfea
    db 0E9h, 052h, 002h               ; jmp 0x123c
    db 080h, 03Eh, 086h, 002h, 002h   ; cmp byte [0x286], 2
    db 075h, 049h                     ; jne 0x103a
    db 0E8h, 0A1h, 0F6h               ; call 0x695
    db 08Bh, 0F9h                     ; mov di, cx
    db 08Bh, 0CBh                     ; mov cx, bx
    db 0A1h, 082h, 002h               ; mov ax, word [0x282]
    db 079h, 003h                     ; jns 0x1000
    db 0A1h, 097h, 002h               ; mov ax, word [0x297]
    db 0FEh, 0C0h                     ; inc al
    db 083h, 0FFh, 027h               ; cmp di, 0x27
    db 074h, 01Fh                     ; je 0x1026
    db 0FEh, 0C8h                     ; dec al
    db 074h, 009h                     ; je 0x1014
    db 0FEh, 0C8h                     ; dec al
    db 083h, 0FFh, 025h               ; cmp di, 0x25
    db 074h, 014h                     ; je 0x1026
    db 0FEh, 0C0h                     ; inc al
    db 0FEh, 0C4h                     ; inc ah
    db 083h, 0FFh, 028h               ; cmp di, 0x28
    db 074h, 00Bh                     ; je 0x1026
    db 0FEh, 0CCh                     ; dec ah
    db 074h, 062h                     ; je 0x1081
    db 0FEh, 0CCh                     ; dec ah
    db 083h, 0FFh, 026h               ; cmp di, 0x26
    db 075h, 05Bh                     ; jne 0x1081
    db 0E8h, 039h, 0FDh               ; call 0xd62
    db 08Bh, 0F8h                     ; mov di, ax
    db 08Eh, 0C2h                     ; mov es, dx
    db 00Ah, 0EDh                     ; or ch, ch
    db 079h, 006h                     ; jns 0x1037
    db 0E8h, 0D2h, 0FBh               ; call 0xc06
    db 0E9h, 0DFh, 001h               ; jmp 0x1216
    db 0E9h, 06Ah, 0F5h               ; jmp 0x5a4
    db 083h, 0F9h, 06Ah               ; cmp cx, 0x6a
    db 075h, 00Eh                     ; jne 0x104d
    db 0BBh, 012h, 000h               ; mov bx, 0x12
    db 0E8h, 053h, 0F6h               ; call 0x698
    db 079h, 006h                     ; jns 0x104d
    db 0E8h, 0EAh, 002h               ; call 0x1334
    db 0E9h, 0C9h, 001h               ; jmp 0x1216
    db 08Ch, 0C0h                     ; mov ax, es
    db 08Ah, 0E8h                     ; mov ch, al
    db 0C6h, 006h, 012h, 002h, 000h   ; mov byte [0x212], 0
    db 0B0h, 012h                     ; mov al, 0x12
    db 0E8h, 029h, 000h               ; call 0x1084
    db 08Ah, 0F4h                     ; mov dh, ah
    db 0B0h, 011h                     ; mov al, 0x11
    db 0E8h, 022h, 000h               ; call 0x1084
    db 0D0h, 0ECh                     ; shr ah, 1
    db 00Ah, 0F4h                     ; or dh, ah
    db 0B0h, 010h                     ; mov al, 0x10
    db 0E8h, 019h, 000h               ; call 0x1084
    db 0D0h, 0ECh                     ; shr ah, 1
    db 0D0h, 0ECh                     ; shr ah, 1
    db 00Ah, 0F4h                     ; or dh, ah
    db 0B8h, 0FFh, 000h               ; mov ax, 0xff
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push ax                                  ; 50
    push cx                                  ; 51
    push dx                                  ; 52
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 092h, 001h               ; jmp 0x1216
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 098h                           ; cwde
    push ax                                  ; 50
    db 09Ah, 09Dh, 006h, 000h, 000h   ; lcall 0, 0x69d
    db 080h, 0E4h, 080h               ; and ah, 0x80
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 0C3h                           ; ret
    db 0B0h, 001h                     ; mov al, 1
    db 086h, 006h, 088h, 002h         ; xchg byte [0x288], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 05Dh                     ; jne 0x10fc
    db 0B0h, 0F2h                     ; mov al, 0xf2
    db 0EBh, 00Ch                     ; jmp 0x10af
    db 0B0h, 001h                     ; mov al, 1
    db 086h, 006h, 087h, 002h         ; xchg byte [0x287], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 04Fh                     ; jne 0x10fc
    db 0B0h, 0F3h                     ; mov al, 0xf3
    db 098h                           ; cwde
    db 0BEh, 012h, 001h               ; mov si, 0x112
    db 0B9h, 020h, 000h               ; mov cx, 0x20
    db 01Eh                           ; push ds
    push ax                                  ; 50
    db 01Eh                           ; push ds
    push si                                  ; 56
    push cx                                  ; 51
    db 09Ah, 062h, 002h, 000h, 000h   ; lcall 0, 0x262
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FBh                     ; jne 0x10c0
    db 0C6h, 044h, 0FFh, 020h         ; mov byte [si - 1], 0x20
    db 08Bh, 0FEh                     ; mov di, si
    db 0E8h, 02Fh, 000h               ; call 0x10fd
    db 0BFh, 012h, 001h               ; mov di, 0x112
    db 0EBh, 021h                     ; jmp 0x10f4
    db 0B0h, 000h                     ; mov al, 0
    db 086h, 006h, 086h, 002h         ; xchg byte [0x286], al
    db 03Ch, 002h                     ; cmp al, 2
    db 075h, 01Fh                     ; jne 0x10fc
    db 0B0h, 000h                     ; mov al, 0
    db 086h, 006h, 088h, 002h         ; xchg byte [0x288], al
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 015h                     ; je 0x10fc
    db 0BFh, 012h, 001h               ; mov di, 0x112
    db 0E8h, 010h, 000h               ; call 0x10fd
    inc di                                   ; 47
    db 080h, 07Dh, 0FFh, 020h         ; cmp byte [di - 1], 0x20
    db 075h, 0F9h                     ; jne 0x10ed
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 09Ah, 00Fh, 00Fh, 000h, 000h   ; lcall 0, 0xf0f
    db 0C3h                           ; ret
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    db 0BBh, 062h, 001h               ; mov bx, 0x162
    db 02Bh, 0DFh                     ; sub bx, di
    push si                                  ; 56
    db 01Eh                           ; push ds
    push di                                  ; 57
    push bx                                  ; 53
    db 09Ah, 0CEh, 007h, 000h, 000h   ; lcall 0, 0x7ce
    db 0C3h                           ; ret
    db 00Bh, 0DBh                     ; or bx, bx
    db 074h, 013h                     ; je 0x1127
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 074h, 012h                     ; je 0x112a
    push ax                                  ; 50
    db 0F7h, 0E7h                     ; mul di
    db 0F7h, 0F3h                     ; div bx
    db 033h, 0D2h                     ; xor dx, dx
    db 0F7h, 0F1h                     ; div cx
    db 0F7h, 0E1h                     ; mul cx
    db 08Bh, 0C8h                     ; mov cx, ax
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 033h, 0C9h                     ; xor cx, cx
    db 0C3h                           ; ret
    db 08Bh, 0CFh                     ; mov cx, di
    db 0C3h                           ; ret
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 083h, 0F9h, 004h               ; cmp cx, 4
    db 075h, 010h                     ; jne 0x1145
    db 087h, 006h, 028h, 004h         ; xchg word [0x428], ax
    db 0A3h, 02Ah, 004h               ; mov word [0x42a], ax
    db 0A1h, 00Ch, 002h               ; mov ax, word [0x20c]
    db 0A3h, 00Ah, 002h               ; mov word [0x20a], ax
    db 0E9h, 0D1h, 000h               ; jmp 0x1216
    db 083h, 0F9h, 003h               ; cmp cx, 3
    db 075h, 008h                     ; jne 0x1152
    db 0A1h, 02Ah, 004h               ; mov ax, word [0x42a]
    db 0A3h, 028h, 004h               ; mov word [0x428], ax
    db 0EBh, 0EAh                     ; jmp 0x113c
    db 089h, 00Eh, 028h, 004h         ; mov word [0x428], cx
    db 03Bh, 0C8h                     ; cmp cx, ax
    db 074h, 0E2h                     ; je 0x113c
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 075h, 0E1h                     ; jne 0x1142
    db 08Ch, 0C6h                     ; mov si, es
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 08Bh, 00Eh, 01Ch, 000h         ; mov cx, word [0x1c]
    db 0F7h, 0E1h                     ; mul cx
    db 0A3h, 0CBh, 002h               ; mov word [0x2cb], ax
    db 02Bh, 0C7h                     ; sub ax, di
    db 003h, 0C1h                     ; add ax, cx
    dec ax                                   ; 48
    db 099h                           ; cdq
    db 0F7h, 0F9h                     ; idiv cx
    db 0F7h, 0E9h                     ; imul cx
    db 00Bh, 0C0h                     ; or ax, ax
    db 07Dh, 002h                     ; jge 0x117f
    db 033h, 0C0h                     ; xor ax, ax
    db 029h, 006h, 0CBh, 002h         ; sub word [0x2cb], ax
    db 08Bh, 01Eh, 0C7h, 002h         ; mov bx, word [0x2c7]
    db 0A3h, 0C7h, 002h               ; mov word [0x2c7], ax
    db 08Bh, 03Eh, 016h, 000h         ; mov di, word [0x16]
    db 0E8h, 07Fh, 0FFh               ; call 0x1110
    db 089h, 00Eh, 016h, 000h         ; mov word [0x16], cx
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 004h                     ; je 0x119d
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 074h, 012h                     ; je 0x11af
    db 0C6h, 006h, 089h, 002h, 000h   ; mov byte [0x289], 0
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 0E8h, 06Dh, 001h               ; call 0x1315
    db 080h, 03Eh, 089h, 002h, 000h   ; cmp byte [0x289], 0
    db 075h, 067h                     ; jne 0x1216
    db 0FEh, 006h, 089h, 002h         ; inc byte [0x289]
    db 0B8h, 019h, 000h               ; mov ax, 0x19
    db 08Bh, 00Eh, 01Ah, 000h         ; mov cx, word [0x1a]
    db 0F7h, 0E1h                     ; mul cx
    db 0A3h, 0C9h, 002h               ; mov word [0x2c9], ax
    db 02Bh, 0C6h                     ; sub ax, si
    db 003h, 0C1h                     ; add ax, cx
    dec ax                                   ; 48
    db 099h                           ; cdq
    db 0F7h, 0F9h                     ; idiv cx
    db 0F7h, 0E9h                     ; imul cx
    db 00Bh, 0C0h                     ; or ax, ax
    db 07Dh, 002h                     ; jge 0x11cf
    db 033h, 0C0h                     ; xor ax, ax
    db 029h, 006h, 0C9h, 002h         ; sub word [0x2c9], ax
    db 08Bh, 01Eh, 0C5h, 002h         ; mov bx, word [0x2c5]
    db 0A3h, 0C5h, 002h               ; mov word [0x2c5], ax
    db 08Bh, 03Eh, 018h, 000h         ; mov di, word [0x18]
    db 0E8h, 02Fh, 0FFh               ; call 0x1110
    db 089h, 00Eh, 018h, 000h         ; mov word [0x18], cx
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    db 0E8h, 013h, 000h               ; call 0x11fe
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 004h                     ; je 0x11f6
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 074h, 020h                     ; je 0x1216
    db 0BBh, 001h, 000h               ; mov bx, 1
    db 0E8h, 019h, 001h               ; call 0x1315
    db 0EBh, 018h                     ; jmp 0x1216
    db 0A1h, 0C5h, 002h               ; mov ax, word [0x2c5]
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 099h                           ; cdq
    db 0F7h, 036h, 01Ah, 000h         ; div word [0x1a]
    db 0BAh, 019h, 000h               ; mov dx, 0x19
    db 02Bh, 0D0h                     ; sub dx, ax
    db 089h, 016h, 0CDh, 002h         ; mov word [0x2cd], dx
    db 0E8h, 0A4h, 00Ah               ; call 0x1cba
    db 033h, 0C0h                     ; xor ax, ax
    db 099h                           ; cdq
    db 0C3h                           ; ret
    db 026h, 000h, 000h               ; add byte es:[bx + si], al
    db 000h, 028h                     ; add byte [bx + si], ch
    db 000h, 001h                     ; add byte [bx + di], al
    db 000h, 025h                     ; add byte [di], ah
    db 000h, 000h                     ; add byte [bx + si], al
    db 001h, 027h                     ; add word [bx], sp
    db 000h, 001h                     ; add byte [bx + di], al
    db 001h, 022h                     ; add word [bp + si], sp
    db 000h, 003h                     ; add byte [bp + di], al
    db 000h, 021h                     ; add byte [bx + di], ah
    db 000h, 002h                     ; add byte [bp + si], al
    db 000h, 023h                     ; add byte [bp + di], ah
    db 000h, 003h                     ; add byte [bp + di], al
    db 001h, 024h                     ; add word [si], sp
    db 000h, 002h                     ; add byte [bp + si], al
    db 001h, 000h                     ; add word [bx + si], ax
    db 000h, 00Eh, 007h, 0BEh         ; add byte [0xbe07], cl
    db 018h, 012h                     ; sbb byte [bp + si], dl
    db 0ADh                           ; lodsw ax, word [si]
    db 026h, 0ADh                     ; lodsw ax, word es:[si]
    db 03Bh, 0C1h                     ; cmp ax, cx
    db 074h, 005h                     ; je 0x124d
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 0F5h                     ; jne 0x1241
    db 0C3h                           ; ret
    db 026h, 0ADh                     ; lodsw ax, word es:[si]
    db 08Bh, 0C8h                     ; mov cx, ax
    db 00Ah, 0E4h                     ; or ah, ah
    db 075h, 023h                     ; jne 0x1278
    db 08Bh, 01Eh, 018h, 000h         ; mov bx, word [0x18]
    db 08Bh, 036h, 01Ah, 000h         ; mov si, word [0x1a]
    db 08Bh, 016h, 0C5h, 002h         ; mov dx, word [0x2c5]
    db 0A1h, 0C9h, 002h               ; mov ax, word [0x2c9]
    db 0E8h, 059h, 000h               ; call 0x12c0
    db 074h, 0ADh                     ; je 0x1216
    db 0E8h, 0F6h, 0F5h               ; call 0x862
    db 0A3h, 018h, 000h               ; mov word [0x18], ax
    db 0BBh, 001h, 000h               ; mov bx, 1
    db 033h, 0D2h                     ; xor dx, dx
    db 087h, 0FAh                     ; xchg dx, di
    db 0EBh, 01Fh                     ; jmp 0x1297
    db 08Bh, 01Eh, 016h, 000h         ; mov bx, word [0x16]
    db 08Bh, 036h, 01Ch, 000h         ; mov si, word [0x1c]
    db 08Bh, 016h, 0C7h, 002h         ; mov dx, word [0x2c7]
    db 0A1h, 0CBh, 002h               ; mov ax, word [0x2cb]
    db 0E8h, 036h, 000h               ; call 0x12c0
    db 074h, 08Ah                     ; je 0x1216
    db 0E8h, 0D3h, 0F5h               ; call 0x862
    db 0A3h, 016h, 000h               ; mov word [0x16], ax
    db 0BBh, 000h, 000h               ; mov bx, 0
    db 033h, 0D2h                     ; xor dx, dx
    db 0B9h, 001h, 000h               ; mov cx, 1
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    push dx                                  ; 52
    push si                                  ; 56
    push bx                                  ; 53
    push ax                                  ; 50
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    pop dx                                   ; 5A
    db 033h, 0C9h                     ; xor cx, cx
    push si                                  ; 56
    push di                                  ; 57
    push dx                                  ; 52
    push cx                                  ; 51
    push cx                                  ; 51
    push cx                                  ; 51
    push cx                                  ; 51
    db 09Ah, 094h, 009h, 000h, 000h   ; lcall 0, 0x994
    push si                                  ; 56
    db 09Ah, 0AFh, 00Eh, 000h, 000h   ; lcall 0, 0xeaf
    db 0E9h, 03Eh, 0FFh               ; jmp 0x11fe
    db 08Eh, 0C3h                     ; mov es, bx
    db 080h, 0F9h, 000h               ; cmp cl, 0
    db 075h, 004h                     ; jne 0x12cb
    db 02Bh, 0DEh                     ; sub bx, si
    db 0EBh, 02Ah                     ; jmp 0x12f5
    db 080h, 0F9h, 001h               ; cmp cl, 1
    db 075h, 005h                     ; jne 0x12d5
    db 003h, 0DEh                     ; add bx, si
    db 0EBh, 021h                     ; jmp 0x12f5
    nop                                      ; 90
    db 080h, 0F9h, 002h               ; cmp cl, 2
    db 075h, 004h                     ; jne 0x12de
    db 02Bh, 0D8h                     ; sub bx, ax
    db 0EBh, 017h                     ; jmp 0x12f5
    db 080h, 0F9h, 003h               ; cmp cl, 3
    db 075h, 004h                     ; jne 0x12e7
    db 003h, 0D8h                     ; add bx, ax
    db 0EBh, 00Eh                     ; jmp 0x12f5
    db 08Bh, 0DEh                     ; mov bx, si
    db 0D1h, 0EBh                     ; shr bx, 1
    db 003h, 0DFh                     ; add bx, di
    db 080h, 0F9h, 004h               ; cmp cl, 4
    db 074h, 003h                     ; je 0x12f5
    db 033h, 0C0h                     ; xor ax, ax
    db 0C3h                           ; ret
    db 08Ch, 0C7h                     ; mov di, es
    db 02Bh, 0FBh                     ; sub di, bx
    db 074h, 019h                     ; je 0x1314
    db 00Bh, 0DBh                     ; or bx, bx
    db 07Fh, 004h                     ; jg 0x1303
    db 033h, 0C0h                     ; xor ax, ax
    db 0EBh, 00Dh                     ; jmp 0x1310
    db 03Bh, 0DAh                     ; cmp bx, dx
    db 07Eh, 002h                     ; jle 0x1309
    db 08Bh, 0DAh                     ; mov bx, dx
    db 08Bh, 0C3h                     ; mov ax, bx
    db 099h                           ; cdq
    db 0F7h, 0F6h                     ; div si
    db 0F7h, 0E6h                     ; mul si
    db 08Ch, 0C7h                     ; mov di, es
    db 02Bh, 0F8h                     ; sub di, ax
    db 0C3h                           ; ret
    db 08Bh, 016h, 044h, 000h         ; mov dx, word [0x44]
    push dx                                  ; 52
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 033h, 0C9h                     ; xor cx, cx
    push dx                                  ; 52
    push bx                                  ; 53
    push cx                                  ; 51
    push ax                                  ; 50
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 001h                     ; jne 0x1328
    inc cx                                   ; 41
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 09Ah, 0A4h, 012h, 000h, 000h   ; lcall 0, 0x12a4
    db 0C3h                           ; ret
    db 0E8h, 069h, 000h               ; call 0x13a0
    db 0B8h, 005h, 008h               ; mov ax, 0x805
    db 0E8h, 020h, 0F8h               ; call 0xb5d
    db 074h, 061h                     ; je 0x13a0
    db 08Bh, 0F8h                     ; mov di, ax
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Eh, 01Eh, 0EAh, 003h         ; mov ds, word [0x3ea]
    db 033h, 0F6h                     ; xor si, si
    db 033h, 0D2h                     ; xor dx, dx
    db 0B8h, 00Dh, 00Ah               ; mov ax, 0xa0d
    db 0ABh                           ; stosw word es:[di], ax
    db 0ADh                           ; lodsw ax, word [si]
    db 03Ch, 0FFh                     ; cmp al, 0xff
    db 074h, 004h                     ; je 0x1358
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 002h                     ; jne 0x135a
    db 0B0h, 020h                     ; mov al, 0x20
    db 0AAh                           ; stosb byte es:[di], al
    db 0FEh, 0C2h                     ; inc dl
    db 080h, 0FAh, 050h               ; cmp dl, 0x50
    db 072h, 0EDh                     ; jb 0x134f
    db 026h, 080h, 07Dh, 0FFh, 020h   ; cmp byte es:[di - 1], 0x20
    db 075h, 003h                     ; jne 0x136c
    dec di                                   ; 4F
    db 0EBh, 0F6h                     ; jmp 0x1362
    db 0FEh, 0C6h                     ; inc dh
    db 032h, 0D2h                     ; xor dl, dl
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 0D6h                     ; jb 0x134b
    db 0B8h, 00Dh, 00Ah               ; mov ax, 0xa0d
    db 083h, 0EFh, 002h               ; sub di, 2
    db 026h, 039h, 005h               ; cmp word es:[di], ax
    db 074h, 0F8h                     ; je 0x1378
    db 083h, 0C7h, 002h               ; add di, 2
    db 0ABh                           ; stosw word es:[di], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0AAh                           ; stosb byte es:[di], al
    db 08Bh, 0F7h                     ; mov si, di
    db 0E8h, 0C3h, 0F7h               ; call 0xb4f
    db 0E8h, 0B3h, 0F7h               ; call 0xb42
    db 033h, 0C0h                     ; xor ax, ax
    push di                                  ; 57
    push ax                                  ; 50
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0BEh, 001h, 000h               ; mov si, 1
    db 0E8h, 094h, 0F6h               ; call 0xa34
    db 0E8h, 075h, 0F9h               ; call 0xd18
    db 0BBh, 0BBh, 002h               ; mov bx, 0x2bb
    push bx                                  ; 53
    push si                                  ; 56
    db 01Eh                           ; push ds
    push bx                                  ; 53
    db 09Ah, 0A0h, 00Dh, 000h, 000h   ; lcall 0, 0xda0
    pop bx                                   ; 5B
    push di                                  ; 57
    db 01Eh                           ; push ds
    push bx                                  ; 53
    db 09Ah, 094h, 00Ch, 000h, 000h   ; lcall 0, 0xc94
    push si                                  ; 56
    push di                                  ; 57
    db 09Ah, 0DFh, 009h, 000h, 000h   ; lcall 0, 0x9df
    db 0C3h                           ; ret
    db 081h, 015h, 0F2h, 015h         ; adc word [di], 0x15f2
    db 0BEh, 017h, 0BEh               ; mov si, 0xbe17
    db 017h                           ; pop ss
    db 0BFh, 017h, 014h               ; mov di, 0x1417
    db 018h, 03Fh                     ; sbb byte [bx], bh
    db 018h, 06Dh, 018h               ; sbb byte [di + 0x18], ch
    db 0A3h, 019h, 0E8h               ; mov word [0xe819], ax
    db 019h, 037h                     ; sbb word [bx], si
    db 01Ch, 075h                     ; sbb al, 0x75
    db 01Ch, 080h                     ; sbb al, 0x80
    db 01Ch, 007h                     ; sbb al, 7
    db 01Dh, 029h, 01Dh               ; sbb ax, 0x1d29
    db 031h, 01Dh                     ; xor word [di], bx
    db 03Ah, 01Dh                     ; cmp bl, byte [di]
    db 03Bh, 01Dh                     ; cmp bx, word [di]
    db 021h, 01Eh, 0C6h, 01Eh         ; and word [0x1ec6], bx
    into                                     ; CE
    db 01Eh                           ; push ds
    db 00Dh, 01Fh, 01Eh               ; or ax, 0x1e1f
    db 01Dh, 017h, 01Fh               ; sbb ax, 0x1f17
    db 01Eh                           ; push ds
    db 01Fh                           ; pop ds
    db 069h, 01Fh, 076h, 034h         ; imul bx, word [bx], 0x3476
    db 036h, 080h, 03Eh, 0A6h, 004h, 000h ; cmp byte ss:[0x4a6], 0
    db 074h, 003h                     ; je 0x1401
    db 033h, 0C9h                     ; xor cx, cx
    db 0CBh                           ; retf
    inc bp                                   ; 45
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 01Eh                           ; push ds
    push di                                  ; 57
    push si                                  ; 56
    db 033h, 0F6h                     ; xor si, si
    db 08Eh, 0DEh                     ; mov ds, si
    db 02Eh, 08Bh, 036h, 0A0h, 034h   ; mov si, word cs:[0x34a0]
    db 087h, 036h, 0FCh, 000h         ; xchg word [0xfc], si
    push si                                  ; 56
    db 02Eh, 08Bh, 036h, 0A2h, 034h   ; mov si, word cs:[0x34a2]
    db 087h, 036h, 0FEh, 000h         ; xchg word [0xfe], si
    push si                                  ; 56
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0FFh, 036h, 0E3h, 002h         ; push word [0x2e3]
    cld                                      ; FC
    push ax                                  ; 50
    db 08Ah, 0C4h                     ; mov al, ah
    db 0D1h, 0E0h                     ; shl ax, 1
    db 098h                           ; cwde
    db 08Bh, 0F0h                     ; mov si, ax
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 075h, 007h                     ; jne 0x143d
    db 03Ch, 02Eh                     ; cmp al, 0x2e
    db 074h, 023h                     ; je 0x145d
    db 0E8h, 0D9h, 01Bh               ; call 0x3016
    pop ax                                   ; 58
    db 0C7h, 006h, 0E3h, 002h, 000h, 000h ; mov word [0x2e3], 0
    db 0C7h, 006h, 0E5h, 002h, 000h, 000h ; mov word [0x2e5], 0
    db 0F6h, 0C4h, 080h               ; test ah, 0x80
    db 074h, 009h                     ; je 0x1458
    db 089h, 02Eh, 0E3h, 002h         ; mov word [0x2e3], bp
    db 0E8h, 02Ah, 000h               ; call 0x1480
    db 072h, 005h                     ; jb 0x145d
    db 02Eh, 0FFh, 094h, 0BEh, 013h   ; call word cs:[si + 0x13be]
    db 08Bh, 00Eh, 0E5h, 002h         ; mov cx, word [0x2e5]
    db 0E8h, 024h, 022h               ; call 0x3688
    db 083h, 0EDh, 00Ch               ; sub bp, 0xc
    db 08Bh, 0E5h                     ; mov sp, bp
    db 036h, 08Fh, 006h, 0E3h, 002h   ; pop word ss:[0x2e3]
    db 033h, 0F6h                     ; xor si, si
    db 08Eh, 0DEh                     ; mov ds, si
    db 08Fh, 006h, 0FEh, 000h         ; pop word [0xfe]
    db 08Fh, 006h, 0FCh, 000h         ; pop word [0xfc]
    pop si                                   ; 5E
    pop di                                   ; 5F
    db 01Fh                           ; pop ds
    pop bp                                   ; 5D
    dec bp                                   ; 4D
    db 0CBh                           ; retf
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 006h                           ; push es
    push di                                  ; 57
    push si                                  ; 56
    db 0E8h, 0CBh, 007h               ; call 0x1c55
    db 074h, 019h                     ; je 0x14a5
    db 080h, 0FAh, 013h               ; cmp dl, 0x13
    db 074h, 00Eh                     ; je 0x149f
    db 080h, 0FAh, 003h               ; cmp dl, 3
    db 075h, 00Fh                     ; jne 0x14a5
    db 0E8h, 0A4h, 003h               ; call 0x183d
    db 0E8h, 0C6h, 003h               ; call 0x1862
    stc                                      ; F9
    db 0EBh, 007h                     ; jmp 0x14a6
    db 0E8h, 09Bh, 003h               ; call 0x183d
    db 0E8h, 098h, 003h               ; call 0x183d
    clc                                      ; F8
    pop si                                   ; 5E
    pop di                                   ; 5F
    db 007h                           ; pop es
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0E8h, 00Ch, 000h               ; call 0x14bd
    db 074h, 009h                     ; je 0x14bc
    db 0E8h, 016h, 000h               ; call 0x14cc
    db 089h, 01Eh, 013h, 004h         ; mov word [0x413], bx
    db 00Bh, 0DBh                     ; or bx, bx
    db 0C3h                           ; ret
    db 08Bh, 01Eh, 013h, 004h         ; mov bx, word [0x413]
    db 03Bh, 01Eh, 011h, 004h         ; cmp bx, word [0x411]
    db 074h, 004h                     ; je 0x14cb
    db 08Bh, 017h                     ; mov dx, word [bx]
    db 00Bh, 0DBh                     ; or bx, bx
    db 0C3h                           ; ret
    db 083h, 0C3h, 002h               ; add bx, 2
    db 081h, 0FBh, 011h, 004h         ; cmp bx, 0x411
    db 072h, 003h                     ; jb 0x14d8
    db 0BBh, 0F1h, 003h               ; mov bx, 0x3f1
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 002h ; test byte cs:[0x2d60], 2
    db 074h, 055h                     ; je 0x1536
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 075h, 04Dh                     ; jne 0x1536
    db 0E8h, 04Fh, 025h               ; call 0x3a3b
    db 074h, 0EAh                     ; je 0x14d8
    db 0BFh, 001h, 000h               ; mov di, 1
    db 08Bh, 01Eh, 011h, 004h         ; mov bx, word [0x411]
    db 08Bh, 0F3h                     ; mov si, bx
    db 0E8h, 0D2h, 0FFh               ; call 0x14cc
    db 03Bh, 01Eh, 013h, 004h         ; cmp bx, word [0x413]
    db 074h, 00Bh                     ; je 0x150b
    db 089h, 004h                     ; mov word [si], ax
    db 089h, 01Eh, 011h, 004h         ; mov word [0x411], bx
    dec di                                   ; 4F
    db 075h, 0E8h                     ; jne 0x14f1
    db 00Bh, 0F6h                     ; or si, si
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 002h ; test byte cs:[0x2d60], 2
    db 074h, 00Fh                     ; je 0x1523
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 075h, 007h                     ; jne 0x1523
    db 0E8h, 01Ch, 025h               ; call 0x3a3b
    db 074h, 0FBh                     ; je 0x151c
    db 0EBh, 0CBh                     ; jmp 0x14ee
    db 0E8h, 040h, 000h               ; call 0x1566
    db 01Eh                           ; push ds
    push si                                  ; 56
    push ax                                  ; 50
    push cx                                  ; 51
    push dx                                  ; 52
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 01Ch                     ; je 0x1550
    db 0EBh, 01Fh                     ; jmp 0x1555
    db 0E8h, 02Dh, 000h               ; call 0x1566
    db 0B3h, 001h                     ; mov bl, 1
    db 01Eh                           ; push ds
    push si                                  ; 56
    push ax                                  ; 50
    push cx                                  ; 51
    push dx                                  ; 52
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 01Bh                     ; je 0x1565
    db 083h, 07Ch, 002h, 012h         ; cmp word [si + 2], 0x12
    db 075h, 005h                     ; jne 0x1555
    db 0B8h, 000h, 04Ch               ; mov ax, 0x4c00
    db 0CDh, 021h                     ; int 0x21
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0F6h                     ; or si, si
    db 0C3h                           ; ret
    db 033h, 0C9h                     ; xor cx, cx
    db 033h, 0D2h                     ; xor dx, dx
    db 02Eh, 0C4h, 036h, 0A8h, 034h   ; les si, cs:[0x34a8]
    db 026h, 080h, 03Ch, 000h         ; cmp byte es:[si], 0
    db 074h, 006h                     ; je 0x157b
    db 0B9h, 0FFh, 000h               ; mov cx, 0xff
    db 0BAh, 007h, 001h               ; mov dx, 0x107
    db 0BEh, 015h, 004h               ; mov si, 0x415
    db 033h, 0C0h                     ; xor ax, ax
    db 0C3h                           ; ret
    db 0E8h, 0BBh, 002h               ; call 0x183f
    push ax                                  ; 50
    db 0E8h, 06Ch, 000h               ; call 0x15f4
    pop ax                                   ; 58
    db 0C3h                           ; ret
    inc cx                                   ; 41
    db 002h, 017h                     ; add dl, byte [bx]
    inc dx                                   ; 42
    cli                                      ; FA
    db 016h                           ; push ss
    inc bx                                   ; 43
    db 0EDh                           ; in ax, dx
    db 016h                           ; push ss
    inc sp                                   ; 44
    cmc                                      ; F5
    db 016h                           ; push ss
    dec ax                                   ; 48
    db 0C2h, 016h, 04Ah               ; ret 0x4a16
    aas                                      ; 3F
    db 017h                           ; pop ss
    dec bx                                   ; 4B
    db 074h, 017h                     ; je 0x15b6
    db 066h, 0C2h, 016h, 06Dh         ; ret 0x6d16
    db 015h, 017h, 06Eh               ; adc ax, 0x6e17
    db 0BDh, 017h, 073h               ; mov bp, 0x7317
    db 007h                           ; pop es
    db 017h                           ; pop ss
    db 075h, 00Eh                     ; jne 0x15bb
    db 017h                           ; pop ss
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 007h                     ; add byte [bx], al
    db 001h, 0FFh                     ; add di, di
    db 008h, 004h                     ; or byte [si], al
    clc                                      ; F8
    db 001h, 005h                     ; add word [di], ax
    db 0FFh, 080h, 007h, 0F8h         ; inc word [bx + si - 0x7f9]
    db 070h, 008h                     ; jo 0x15c7
    db 088h, 000h                     ; mov byte [bx + si], al
    db 01Eh                           ; push ds
    clc                                      ; F8
    db 000h, 01Fh                     ; add byte [bx], bl
    clc                                      ; F8
    db 004h, 020h                     ; add al, 0x20
    clc                                      ; F8
    db 002h, 021h                     ; add ah, byte [bx + di]
    clc                                      ; F8
    db 006h                           ; push es
    db 022h, 0F8h                     ; and bh, al
    db 001h, 023h                     ; add word [bp + di], sp
    clc                                      ; F8
    db 005h, 024h, 0F8h               ; add ax, 0xf824
    db 003h, 025h                     ; add sp, word [di]
    clc                                      ; F8
    db 007h                           ; pop es
    db 028h, 08Fh, 000h, 029h         ; sub byte [bx + 0x2900], cl
    db 08Fh, 040h, 02Ah               ; pop word [bx + si + 0x2a]
    db 08Fh                           ; 8F
    db 020h, 02Bh                     ; and byte [bp + di], ch
    db 08Fh                           ; 8F
    db 060h                           ; pushaw
    db 02Ch, 08Fh                     ; sub al, 0x8f
    db 010h, 02Dh                     ; adc byte [di], ch
    db 08Fh                           ; 8F
    push ax                                  ; 50
    db 02Eh                           ; 2E
    db 08Fh                           ; 8F
    db 030h, 02Fh                     ; xor byte [bx], ch
    db 08Fh                           ; 8F
    db 070h, 0FFh                     ; jo 0x15f1
    db 08Ah, 0C2h                     ; mov al, dl
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 075h, 007h                     ; jne 0x1603
    db 08Ah, 0D0h                     ; mov dl, al
    db 0B4h, 006h                     ; mov ah, 6
    db 0CDh, 021h                     ; int 0x21
    db 0C3h                           ; ret
    db 0BEh, 0D1h, 002h               ; mov si, 0x2d1
    db 0FFh, 024h                     ; jmp word [si]
    db 03Ch, 01Bh                     ; cmp al, 0x1b
    db 074h, 012h                     ; je 0x161e
    db 0C7h, 004h, 008h, 016h         ; mov word [si], 0x1608
    db 03Ch, 009h                     ; cmp al, 9
    db 075h, 003h                     ; jne 0x1617
    db 0E9h, 0CBh, 000h               ; jmp 0x16e2
    db 08Ah, 026h, 0DFh, 002h         ; mov ah, byte [0x2df]
    db 0E9h, 051h, 002h               ; jmp 0x186f
    db 0C7h, 004h, 023h, 016h         ; mov word [si], 0x1623
    db 0C3h                           ; ret
    db 03Ch, 05Bh                     ; cmp al, 0x5b
    db 075h, 0E5h                     ; jne 0x160c
    db 0C7h, 004h, 037h, 016h         ; mov word [si], 0x1637
    db 0BEh, 0DBh, 002h               ; mov si, 0x2db
    db 089h, 036h, 0D9h, 002h         ; mov word [0x2d9], si
    db 0C7h, 004h, 000h, 000h         ; mov word [si], 0
    db 0C3h                           ; ret
    db 08Bh, 01Eh, 0D9h, 002h         ; mov bx, word [0x2d9]
    db 03Ch, 03Bh                     ; cmp al, 0x3b
    db 075h, 012h                     ; jne 0x1651
    inc bx                                   ; 43
    db 081h, 0FBh, 0DFh, 002h         ; cmp bx, 0x2df
    db 072h, 003h                     ; jb 0x1649
    db 0BBh, 0DEh, 002h               ; mov bx, 0x2de
    db 089h, 01Eh, 0D9h, 002h         ; mov word [0x2d9], bx
    db 0C6h, 007h, 000h               ; mov byte [bx], 0
    db 0C3h                           ; ret
    db 03Ch, 030h                     ; cmp al, 0x30
    db 072h, 00Fh                     ; jb 0x1664
    db 03Ch, 039h                     ; cmp al, 0x39
    db 077h, 00Bh                     ; ja 0x1664
    db 02Ch, 030h                     ; sub al, 0x30
    db 086h, 007h                     ; xchg byte [bx], al
    db 0B4h, 00Ah                     ; mov ah, 0xa
    db 0F6h, 0E4h                     ; mul ah
    db 000h, 007h                     ; add byte [bx], al
    db 0C3h                           ; ret
    db 03Ch, 03Dh                     ; cmp al, 0x3d
    db 074h, 0FBh                     ; je 0x1663
    db 03Ch, 03Fh                     ; cmp al, 0x3f
    db 074h, 0F7h                     ; je 0x1663
    db 0BFh, 087h, 015h               ; mov di, 0x1587
    db 083h, 0C7h, 003h               ; add di, 3
    db 02Eh, 080h, 03Dh, 000h         ; cmp byte cs:[di], 0
    db 074h, 0EBh                     ; je 0x1663
    db 02Eh, 038h, 005h               ; cmp byte cs:[di], al
    db 075h, 0F2h                     ; jne 0x166f
    db 0BBh, 0DBh, 002h               ; mov bx, 0x2db
    db 08Ah, 017h                     ; mov dl, byte [bx]
    db 032h, 0F6h                     ; xor dh, dh
    db 08Bh, 0CAh                     ; mov cx, dx
    db 00Bh, 0C9h                     ; or cx, cx
    db 075h, 001h                     ; jne 0x168b
    inc cx                                   ; 41
    db 0C7h, 004h, 008h, 016h         ; mov word [si], 0x1608
    db 02Eh, 0FFh, 065h, 001h         ; jmp word cs:[di + 1]
    db 038h, 027h                     ; cmp byte [bx], ah
    db 074h, 004h                     ; je 0x169b
    db 000h, 007h                     ; add byte [bx], al
    db 0E2h, 0F8h                     ; loop 0x1693
    db 08Bh, 01Eh, 0D3h, 002h         ; mov bx, word [0x2d3]
    db 0E8h, 00Ah, 000h               ; call 0x16ac
    db 089h, 01Eh, 0E8h, 003h         ; mov word [0x3e8], bx
    db 0C6h, 006h, 0ECh, 003h, 001h   ; mov byte [0x3ec], 1
    db 0C3h                           ; ret
    db 08Ah, 0C7h                     ; mov al, bh
    db 098h                           ; cwde
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E0h                     ; shl ax, cl
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0D1h, 0E0h                     ; shl ax, 1
    db 003h, 0C1h                     ; add ax, cx
    db 032h, 0FFh                     ; xor bh, bh
    db 003h, 0D8h                     ; add bx, ax
    db 0D1h, 0E3h                     ; shl bx, 1
    db 0C3h                           ; ret
    db 080h, 0F9h, 019h               ; cmp cl, 0x19
    db 077h, 01Ah                     ; ja 0x16e1
    db 08Ah, 06Fh, 001h               ; mov ch, byte [bx + 1]
    db 00Ah, 0EDh                     ; or ch, ch
    db 074h, 002h                     ; je 0x16d0
    db 0FEh, 0CDh                     ; dec ch
    db 0B0h, 04Fh                     ; mov al, 0x4f
    db 03Ah, 0E8h                     ; cmp ch, al
    db 076h, 002h                     ; jbe 0x16d8
    db 08Ah, 0E8h                     ; mov ch, al
    db 086h, 0CDh                     ; xchg ch, cl
    db 0FEh, 0CDh                     ; dec ch
    db 08Bh, 0D1h                     ; mov dx, cx
    db 0E9h, 02Eh, 006h               ; jmp 0x1d0f
    db 0C3h                           ; ret
    db 033h, 0C9h                     ; xor cx, cx
    db 08Ah, 00Eh, 0D3h, 002h         ; mov cl, byte [0x2d3]
    db 080h, 0C9h, 0F8h               ; or cl, 0xf8
    db 0F6h, 0D9h                     ; neg cl
    db 0B8h, 001h, 04Fh               ; mov ax, 0x4f01
    db 0BBh, 0D3h, 002h               ; mov bx, 0x2d3
    db 0EBh, 09Eh                     ; jmp 0x1693
    db 0B8h, 0FFh, 000h               ; mov ax, 0xff
    db 0EBh, 0F6h                     ; jmp 0x16f0
    db 0B8h, 001h, 018h               ; mov ax, 0x1801
    db 0BBh, 0D4h, 002h               ; mov bx, 0x2d4
    db 0EBh, 091h                     ; jmp 0x1693
    db 0B8h, 0FFh, 000h               ; mov ax, 0xff
    db 0EBh, 0F6h                     ; jmp 0x16fd
    db 0A1h, 0D3h, 002h               ; mov ax, word [0x2d3]
    db 0A3h, 0D5h, 002h               ; mov word [0x2d5], ax
    db 0C3h                           ; ret
    db 08Bh, 016h, 0D5h, 002h         ; mov dx, word [0x2d5]
    db 0E9h, 0FAh, 005h               ; jmp 0x1d0f
    db 08Bh, 00Eh, 0D9h, 002h         ; mov cx, word [0x2d9]
    db 02Bh, 0CBh                     ; sub cx, bx
    inc cx                                   ; 41
    db 08Ah, 007h                     ; mov al, byte [bx]
    inc bx                                   ; 43
    db 0BEh, 0ACh, 015h               ; mov si, 0x15ac
    db 083h, 0C6h, 003h               ; add si, 3
    db 02Eh, 080h, 03Ch, 0FFh         ; cmp byte cs:[si], 0xff
    db 074h, 011h                     ; je 0x173c
    db 02Eh, 038h, 004h               ; cmp byte cs:[si], al
    db 075h, 0F2h                     ; jne 0x1722
    db 02Eh, 08Bh, 044h, 001h         ; mov ax, word cs:[si + 1]
    db 020h, 006h, 0DFh, 002h         ; and byte [0x2df], al
    db 008h, 026h, 0DFh, 002h         ; or byte [0x2df], ah
    db 0E2h, 0DEh                     ; loop 0x171c
    db 0C3h                           ; ret
    db 0FEh, 0CAh                     ; dec dl
    db 075h, 011h                     ; jne 0x1754
    db 08Bh, 016h, 0D3h, 002h         ; mov dx, word [0x2d3]
    db 0B2h, 04Fh                     ; mov dl, 0x4f
    db 0FEh, 0CEh                     ; dec dh
    db 07Eh, 02Bh                     ; jle 0x1778
    db 033h, 0C9h                     ; xor cx, cx
    db 0E8h, 04Fh, 000h               ; call 0x17a1
    db 0EBh, 024h                     ; jmp 0x1778
    db 0FEh, 0CAh                     ; dec dl
    db 075h, 00Ah                     ; jne 0x1762
    db 033h, 0C9h                     ; xor cx, cx
    db 0E8h, 041h, 000h               ; call 0x179e
    db 033h, 0D2h                     ; xor dx, dx
    db 0E9h, 0ADh, 005h               ; jmp 0x1d0f
    db 08Bh, 00Eh, 0D3h, 002h         ; mov cx, word [0x2d3]
    db 032h, 0C9h                     ; xor cl, cl
    db 0FEh, 0C5h                     ; inc ch
    db 080h, 0FDh, 019h               ; cmp ch, 0x19
    db 073h, 01Fh                     ; jae 0x178e
    db 0E8h, 02Ch, 000h               ; call 0x179e
    db 0EBh, 01Ah                     ; jmp 0x178e
    db 0FEh, 0CAh                     ; dec dl
    db 075h, 00Ah                     ; jne 0x1782
    db 08Bh, 016h, 0D3h, 002h         ; mov dx, word [0x2d3]
    db 08Ah, 0EEh                     ; mov ch, dh
    db 032h, 0C9h                     ; xor cl, cl
    db 0EBh, 014h                     ; jmp 0x1796
    db 0FEh, 0CAh                     ; dec dl
    db 075h, 008h                     ; jne 0x178e
    db 08Bh, 00Eh, 0D3h, 002h         ; mov cx, word [0x2d3]
    db 032h, 0C9h                     ; xor cl, cl
    db 0EBh, 004h                     ; jmp 0x1792
    db 08Bh, 00Eh, 0D3h, 002h         ; mov cx, word [0x2d3]
    db 08Ah, 0F5h                     ; mov dh, ch
    db 0B2h, 04Fh                     ; mov dl, 0x4f
    db 0E8h, 00Eh, 000h               ; call 0x17a7
    db 033h, 0C0h                     ; xor ax, ax
    db 0E9h, 09Dh, 005h               ; jmp 0x1d3b
    db 0BAh, 04Fh, 018h               ; mov dx, 0x184f
    db 0E8h, 003h, 000h               ; call 0x17a7
    db 0E9h, 0ADh, 005h               ; jmp 0x1d54
    db 08Ah, 03Eh, 0DFh, 002h         ; mov bh, byte [0x2df]
    db 080h, 0FFh, 0FFh               ; cmp bh, 0xff
    db 075h, 00Ch                     ; jne 0x17bc
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 026h, 08Ah, 03Eh, 001h, 00Fh   ; mov bh, byte es:[0xf01]
    db 080h, 0E7h, 07Fh               ; and bh, 0x7f
    db 0C3h                           ; ret
    db 0C3h                           ; ret
    db 0C3h                           ; ret
    db 08Bh, 0FAh                     ; mov di, dx
    push dx                                  ; 52
    db 08Bh, 036h, 0E1h, 002h         ; mov si, word [0x2e1]
    db 00Bh, 0F6h                     ; or si, si
    db 075h, 01Fh                     ; jne 0x17e9
    db 006h                           ; push es
    push di                                  ; 57
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0B9h, 080h, 000h               ; mov cx, 0x80
    db 086h, 02Eh, 0E7h, 003h         ; xchg byte [0x3e7], ch
    db 0BAh, 0E7h, 002h               ; mov dx, 0x2e7
    db 0E8h, 00Dh, 002h               ; call 0x19e8
    pop di                                   ; 5F
    db 007h                           ; pop es
    db 0BEh, 0E7h, 002h               ; mov si, 0x2e7
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 005h                     ; je 0x17e9
    db 0FEh, 0C8h                     ; dec al
    db 0A2h, 0E7h, 003h               ; mov byte [0x3e7], al
    db 080h, 03Ch, 01Ah               ; cmp byte [si], 0x1a
    db 075h, 006h                     ; jne 0x17f4
    db 026h, 0C6h, 005h, 01Ah         ; mov byte es:[di], 0x1a
    db 0EBh, 00Fh                     ; jmp 0x1803
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 03Ch, 00Dh                     ; cmp al, 0xd
    db 075h, 003h                     ; jne 0x17fd
    db 0C6h, 004h, 00Ah               ; mov byte [si], 0xa
    db 03Ch, 00Ah                     ; cmp al, 0xa
    db 0E0h, 0F3h                     ; loopne 0x17f4
    db 075h, 007h                     ; jne 0x180a
    db 0B0h, 00Ah                     ; mov al, 0xa
    db 0E8h, 0F6h, 003h               ; call 0x1bfe
    db 033h, 0F6h                     ; xor si, si
    db 089h, 036h, 0E1h, 002h         ; mov word [0x2e1], si
    pop dx                                   ; 5A
    db 08Bh, 0C7h                     ; mov ax, di
    db 02Bh, 0C2h                     ; sub ax, dx
    db 0C3h                           ; ret
    db 0E8h, 015h, 000h               ; call 0x182c
    db 0E8h, 03Bh, 004h               ; call 0x1c55
    db 075h, 003h                     ; jne 0x181f
    db 0E8h, 0EDh, 0FCh               ; call 0x150c
    db 0E8h, 02Dh, 0F2h               ; call 0xa4f
    db 075h, 005h                     ; jne 0x1829
    db 0E8h, 087h, 0FCh               ; call 0x14ae
    db 074h, 0F3h                     ; je 0x181c
    db 08Bh, 0C2h                     ; mov ax, dx
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 074h, 0F7h                     ; je 0x182b
    db 0E8h, 02Bh, 0F0h               ; call 0x862
    db 0A1h, 0D3h, 002h               ; mov ax, word [0x2d3]
    db 0E9h, 06Eh, 0F4h               ; jmp 0xcab
    db 033h, 0C0h                     ; xor ax, ax
    push ax                                  ; 50
    db 033h, 0C0h                     ; xor ax, ax
    db 086h, 006h, 0E0h, 002h         ; xchg byte [0x2e0], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 00Bh                     ; jne 0x1855
    db 0E8h, 0C7h, 0FFh               ; call 0x1814
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 004h                     ; jne 0x1855
    db 088h, 026h, 0E0h, 002h         ; mov byte [0x2e0], ah
    pop bx                                   ; 5B
    db 00Ah, 0FFh                     ; or bh, bh
    db 079h, 012h                     ; jns 0x186c
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 00Ah                     ; je 0x1868
    db 03Ch, 003h                     ; cmp al, 3
    db 075h, 00Ah                     ; jne 0x186c
    db 0E8h, 088h, 003h               ; call 0x1bed
    db 0E8h, 056h, 002h               ; call 0x1abe
    db 0FEh, 006h, 0E5h, 002h         ; inc byte [0x2e5]
    db 0C3h                           ; ret
    db 0B4h, 0FFh                     ; mov ah, 0xff
    db 0BEh, 0D3h, 002h               ; mov si, 0x2d3
    db 03Ch, 00Dh                     ; cmp al, 0xd
    db 077h, 067h                     ; ja 0x18dd
    db 072h, 01Eh                     ; jb 0x1896
    db 083h, 03Eh, 0E3h, 002h, 000h   ; cmp word [0x2e3], 0
    db 074h, 00Ch                     ; je 0x188b
    db 0E8h, 0FEh, 0FBh               ; call 0x1480
    db 073h, 007h                     ; jae 0x188b
    db 08Bh, 02Eh, 0E3h, 002h         ; mov bp, word [0x2e3]
    db 0E9h, 0D2h, 0FBh               ; jmp 0x145d
    db 08Bh, 004h                     ; mov ax, word [si]
    db 08Bh, 0D8h                     ; mov bx, ax
    db 0B0h, 000h                     ; mov al, 0
    db 08Ah, 0F8h                     ; mov bh, al
    db 0E9h, 085h, 000h               ; jmp 0x191b
    db 03Ch, 00Ah                     ; cmp al, 0xa
    db 075h, 024h                     ; jne 0x18be
    db 08Bh, 004h                     ; mov ax, word [si]
    db 0FEh, 0C4h                     ; inc ah
    db 080h, 0FCh, 019h               ; cmp ah, 0x19
    db 072h, 003h                     ; jb 0x18a6
    db 0E9h, 084h, 000h               ; jmp 0x192a
    db 0BBh, 050h, 000h               ; mov bx, 0x50
    db 0F7h, 0DBh                     ; neg bx
    db 0E8h, 06Dh, 000h               ; call 0x191b
    db 03Ah, 026h, 0CDh, 002h         ; cmp ah, byte [0x2cd]
    db 072h, 007h                     ; jb 0x18bb
    db 0FEh, 006h, 0CDh, 002h         ; inc byte [0x2cd]
    db 0E9h, 0AAh, 000h               ; jmp 0x1965
    db 0E9h, 0ACh, 0EFh               ; jmp 0x86a
    db 03Ch, 008h                     ; cmp al, 8
    db 075h, 00Dh                     ; jne 0x18cf
    db 08Bh, 004h                     ; mov ax, word [si]
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 014h                     ; je 0x18dc
    db 0FEh, 0C8h                     ; dec al
    db 0BBh, 002h, 000h               ; mov bx, 2
    db 0EBh, 04Eh                     ; jmp 0x191d
    db 03Ch, 007h                     ; cmp al, 7
    db 075h, 00Ah                     ; jne 0x18dd
    db 0B8h, 030h, 000h               ; mov ax, 0x30
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 0C6h, 006h, 0D0h, 002h, 000h   ; mov byte [0x2d0], 0
    db 0E8h, 0C7h, 0F2h               ; call 0xbac
    db 0C4h, 03Eh, 0E8h, 003h         ; les di, [0x3e8]
    db 080h, 0FCh, 0FFh               ; cmp ah, 0xff
    db 074h, 006h                     ; je 0x18f4
    db 080h, 0E4h, 07Fh               ; and ah, 0x7f
    db 0ABh                           ; stosw word es:[di], ax
    db 0EBh, 002h                     ; jmp 0x18f6
    db 0AAh                           ; stosb byte es:[di], al
    inc di                                   ; 47
    db 089h, 03Eh, 0E8h, 003h         ; mov word [0x3e8], di
    db 0BAh, 001h, 000h               ; mov dx, 1
    db 0E8h, 0F2h, 0EDh               ; call 0x6f2
    db 0A1h, 0D3h, 002h               ; mov ax, word [0x2d3]
    db 0FEh, 0C0h                     ; inc al
    db 03Ch, 050h                     ; cmp al, 0x50
    db 072h, 018h                     ; jb 0x1921
    db 0B0h, 000h                     ; mov al, 0
    db 0FEh, 0C4h                     ; inc ah
    db 080h, 0FCh, 019h               ; cmp ah, 0x19
    db 072h, 00Fh                     ; jb 0x1921
    db 0E8h, 015h, 000h               ; call 0x192a
    db 0B8h, 000h, 018h               ; mov ax, 0x1800
    db 0BBh, 050h, 000h               ; mov bx, 0x50
    db 0D1h, 0E3h                     ; shl bx, 1
    db 029h, 01Eh, 0E8h, 003h         ; sub word [0x3e8], bx
    db 0A3h, 0D3h, 002h               ; mov word [0x2d3], ax
    db 0C6h, 006h, 0ECh, 003h, 001h   ; mov byte [0x3ec], 1
    db 0C3h                           ; ret
    db 0B0h, 001h                     ; mov al, 1
    db 0B5h, 000h                     ; mov ch, 0
    db 0B6h, 018h                     ; mov dh, 0x18
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 026h, 08Ah, 03Eh, 001h, 00Fh   ; mov bh, byte es:[0xf01]
    db 0E8h, 0AFh, 0EEh               ; call 0x7eb
    db 0B8h, 080h, 007h               ; mov ax, 0x780
    db 0BEh, 0A0h, 000h               ; mov si, 0xa0
    db 033h, 0FFh                     ; xor di, di
    db 0E8h, 065h, 0F2h               ; call 0xbac
    db 08Bh, 0C8h                     ; mov cx, ax
    db 08Eh, 01Eh, 0EAh, 003h         ; mov ds, word [0x3ea]
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 08Ah, 0E7h                     ; mov ah, bh
    db 080h, 0E4h, 07Fh               ; and ah, 0x7f
    db 08Bh, 0DEh                     ; mov bx, si
    db 0D1h, 0EBh                     ; shr bx, 1
    db 003h, 0F7h                     ; add si, di
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    db 08Bh, 0CBh                     ; mov cx, bx
    db 0B0h, 020h                     ; mov al, 0x20
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 074h, 036h                     ; je 0x19a2
    db 0E8h, 0FBh, 0EEh               ; call 0x86a
    db 033h, 0DBh                     ; xor bx, bx
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 001h, 006h, 018h, 000h         ; add word [0x18], ax
    db 0F7h, 0D8h                     ; neg ax
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    push si                                  ; 56
    push bx                                  ; 53
    push ax                                  ; 50
    push bx                                  ; 53
    push bx                                  ; 53
    push bx                                  ; 53
    push bx                                  ; 53
    db 09Ah, 0B3h, 012h, 000h, 000h   ; lcall 0, 0x12b3
    push si                                  ; 56
    db 09Ah, 0B9h, 012h, 000h, 000h   ; lcall 0, 0x12b9
    db 0BBh, 001h, 000h               ; mov bx, 1
    db 0B8h, 001h, 000h               ; mov ax, 1
    push si                                  ; 56
    push bx                                  ; 53
    db 0FFh, 036h, 018h, 000h         ; push word [0x18]
    push ax                                  ; 50
    db 09Ah, 02Fh, 013h, 000h, 000h   ; lcall 0, 0x132f
    db 0C3h                           ; ret
    db 0E3h, 016h                     ; jcxz 0x19bb
    db 08Bh, 0F2h                     ; mov si, dx
    db 0E8h, 0DEh, 01Ch               ; call 0x3688
    db 026h, 0ACh                     ; lodsb al, byte es:[si]
    db 03Ch, 01Ah                     ; cmp al, 0x1a
    db 074h, 00Bh                     ; je 0x19bb
    db 006h                           ; push es
    push si                                  ; 56
    push cx                                  ; 51
    db 0E8h, 04Dh, 0FCh               ; call 0x1603
    pop cx                                   ; 59
    pop si                                   ; 5E
    db 007h                           ; pop es
    db 0E2h, 0ECh                     ; loop 0x19a7
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0C3h                           ; ret
    inc ax                                   ; 40
    dec bp                                   ; 4D
    db 03Bh, 053h, 03Ch               ; cmp dx, word [bp + di + 0x3c]
    db 03Eh, 03Dh, 03Dh, 03Fh         ; cmp ax, 0x3f3d
    dec bx                                   ; 4B
    push dx                                  ; 52
    push dx                                  ; 52
    inc cx                                   ; 41
    inc cx                                   ; 41
    dec sp                                   ; 4C
    db 01Ah, 063h, 01Bh               ; sbb ah, byte [bp + di + 0x1b]
    db 0E1h, 01Bh                     ; loope 0x19ed
    db 0E1h, 01Bh                     ; loope 0x19ef
    cld                                      ; FC
    db 01Ah, 0D1h                     ; sbb dl, cl
    db 01Bh, 0CEh                     ; sbb cx, si
    db 01Ah, 068h, 01Bh               ; sbb ch, byte [bx + si + 0x1b]
    popf                                     ; 9D
    db 01Bh, 06Eh, 01Bh               ; sbb bp, word [bp + 0x1b]
    db 093h                           ; xchg bx, ax
    db 01Bh, 073h, 01Bh               ; sbb si, word [bp + di + 0x1b]
    db 073h, 01Bh                     ; jae 0x1a01
    db 0E8h, 01Bh, 055h               ; call 0x6f04
    db 0E8h, 09Ch, 01Ch               ; call 0x3688
    db 0E8h, 002h, 000h               ; call 0x19f1
    pop bp                                   ; 5D
    db 0C3h                           ; ret
    db 08Bh, 0FAh                     ; mov di, dx
    db 08Bh, 0F2h                     ; mov si, dx
    db 0C7h, 006h, 0E1h, 002h, 000h, 000h ; mov word [0x2e1], 0
    db 08Bh, 0C1h                     ; mov ax, cx
    db 032h, 0EDh                     ; xor ch, ch
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 0B8h                     ; je 0x19bb
    db 033h, 0DBh                     ; xor bx, bx
    db 08Ah, 0DCh                     ; mov bl, ah
    db 03Ah, 0C3h                     ; cmp al, bl
    db 076h, 006h                     ; jbe 0x1a11
    db 026h, 080h, 038h, 00Dh         ; cmp byte es:[bx + si], 0xd
    db 074h, 002h                     ; je 0x1a13
    db 033h, 0DBh                     ; xor bx, bx
    db 08Bh, 0D0h                     ; mov dx, ax
    dec dx                                   ; 4A
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 075h, 014h                     ; jne 0x1a32
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push ax                                  ; 50
    db 0B4h, 00Fh                     ; mov ah, 0xf
    db 0CDh, 010h                     ; int 0x10
    db 0B4h, 003h                     ; mov ah, 3
    db 0CDh, 010h                     ; int 0x10
    pop ax                                   ; 58
    db 08Ah, 0C2h                     ; mov al, dl
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 0EBh, 003h                     ; jmp 0x1a35
    db 0A0h, 0D3h, 002h               ; mov al, byte [0x2d3]
    db 0A2h, 0D7h, 002h               ; mov byte [0x2d7], al
    push si                                  ; 56
    db 0BFh, 0E7h, 002h               ; mov di, 0x2e7
    db 0C6h, 006h, 0D8h, 002h, 000h   ; mov byte [0x2d8], 0
    db 0B7h, 000h                     ; mov bh, 0
    db 0B6h, 000h                     ; mov dh, 0
    db 0E8h, 0CCh, 001h               ; call 0x1c14
    db 03Ch, 00Ah                     ; cmp al, 0xa
    db 075h, 003h                     ; jne 0x1a4f
    db 0E8h, 0C5h, 001h               ; call 0x1c14
    db 03Ch, 006h                     ; cmp al, 6
    db 074h, 0F9h                     ; je 0x1a4c
    db 03Ch, 000h                     ; cmp al, 0
    db 074h, 039h                     ; je 0x1a90
    db 03Ch, 07Fh                     ; cmp al, 0x7f
    db 074h, 02Ch                     ; je 0x1a87
    db 03Ch, 008h                     ; cmp al, 8
    db 074h, 028h                     ; je 0x1a87
    db 03Ch, 00Dh                     ; cmp al, 0xd
    db 074h, 049h                     ; je 0x1aac
    db 03Ch, 00Ah                     ; cmp al, 0xa
    db 074h, 061h                     ; je 0x1ac8
    db 03Ch, 01Bh                     ; cmp al, 0x1b
    db 074h, 063h                     ; je 0x1ace
    db 03Ah, 0F2h                     ; cmp dh, dl
    db 073h, 01Ah                     ; jae 0x1a89
    db 088h, 005h                     ; mov byte [di], al
    inc di                                   ; 47
    db 0FEh, 0C6h                     ; inc dh
    db 0E8h, 076h, 001h               ; call 0x1bed
    db 080h, 03Eh, 0D8h, 002h, 000h   ; cmp byte [0x2d8], 0
    db 075h, 0CEh                     ; jne 0x1a4c
    db 03Ah, 0FBh                     ; cmp bh, bl
    db 073h, 0CAh                     ; jae 0x1a4c
    inc si                                   ; 46
    db 0FEh, 0C7h                     ; inc bh
    db 0EBh, 0C5h                     ; jmp 0x1a4c
    db 0EBh, 073h                     ; jmp 0x1afc
    db 0B0h, 007h                     ; mov al, 7
    db 0E8h, 070h, 001h               ; call 0x1bfe
    db 0EBh, 0BCh                     ; jmp 0x1a4c
    push di                                  ; 57
    db 006h                           ; push es
    db 0E8h, 07Fh, 001h               ; call 0x1c14
    db 08Ch, 0C9h                     ; mov cx, cs
    db 08Eh, 0C1h                     ; mov es, cx
    db 0B9h, 00Eh, 000h               ; mov cx, 0xe
    db 0BFh, 0BEh, 019h               ; mov di, 0x19be
    db 0F2h, 0AEh                     ; repne scasb al, byte es:[di]
    db 0D1h, 0E1h                     ; shl cx, 1
    db 08Bh, 0E9h                     ; mov bp, cx
    db 007h                           ; pop es
    pop di                                   ; 5F
    db 02Eh, 0FFh, 0A6h, 0CCh, 019h   ; jmp word cs:[bp + 0x19cc]
    db 088h, 005h                     ; mov byte [di], al
    db 0E8h, 04Dh, 001h               ; call 0x1bfe
    pop di                                   ; 5F
    db 0FEh, 0C6h                     ; inc dh
    db 0BEh, 0E7h, 002h               ; mov si, 0x2e7
    db 08Ah, 0CEh                     ; mov cl, dh
    push cx                                  ; 51
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0B0h, 00Dh                     ; mov al, 0xd
    db 0E8h, 03Bh, 001h               ; call 0x1bfe
    db 0B0h, 00Ah                     ; mov al, 0xa
    db 0E9h, 036h, 001h               ; jmp 0x1bfe
    db 0E8h, 0F3h, 0FFh               ; call 0x1abe
    db 0E9h, 07Eh, 0FFh               ; jmp 0x1a4c
    db 0B0h, 05Ch                     ; mov al, 0x5c
    db 0E8h, 02Bh, 001h               ; call 0x1bfe
    pop si                                   ; 5E
    db 0E8h, 0E7h, 0FFh               ; call 0x1abe
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    db 033h, 0C9h                     ; xor cx, cx
    db 08Ah, 00Eh, 0D7h, 002h         ; mov cl, byte [0x2d7]
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 074h, 009h                     ; je 0x1af1
    db 0E8h, 002h, 0FCh               ; call 0x16ed
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0E9h, 025h, 0FFh               ; jmp 0x1a16
    db 0E3h, 007h                     ; jcxz 0x1afa
    db 0B0h, 020h                     ; mov al, 0x20
    db 0E8h, 006h, 001h               ; call 0x1bfe
    db 0E2h, 0FBh                     ; loop 0x1af5
    db 0EBh, 0EFh                     ; jmp 0x1aeb
    db 00Ah, 0F6h                     ; or dh, dh
    db 074h, 010h                     ; je 0x1b10
    db 0E8h, 04Eh, 000h               ; call 0x1b51
    db 08Ah, 005h                     ; mov al, byte [di]
    db 03Ch, 020h                     ; cmp al, 0x20
    db 073h, 007h                     ; jae 0x1b10
    db 03Ch, 009h                     ; cmp al, 9
    db 074h, 014h                     ; je 0x1b21
    db 0E8h, 044h, 000h               ; call 0x1b54
    db 080h, 03Eh, 0D8h, 002h, 000h   ; cmp byte [0x2d8], 0
    db 075h, 007h                     ; jne 0x1b1e
    db 00Ah, 0FFh                     ; or bh, bh
    db 074h, 003h                     ; je 0x1b1e
    db 0FEh, 0CFh                     ; dec bh
    dec si                                   ; 4E
    db 0E9h, 02Bh, 0FFh               ; jmp 0x1a4c
    push di                                  ; 57
    dec di                                   ; 4F
    db 08Ah, 0CEh                     ; mov cl, dh
    db 0B0h, 020h                     ; mov al, 0x20
    push bx                                  ; 53
    db 0B3h, 007h                     ; mov bl, 7
    db 0E3h, 00Eh                     ; jcxz 0x1b3a
    db 03Ah, 005h                     ; cmp al, byte [di]
    db 076h, 007h                     ; jbe 0x1b37
    db 080h, 03Dh, 009h               ; cmp byte [di], 9
    db 074h, 009h                     ; je 0x1b3e
    db 0FEh, 0CBh                     ; dec bl
    dec di                                   ; 4F
    db 0E2h, 0F2h                     ; loop 0x1b2c
    db 02Ah, 01Eh, 0D7h, 002h         ; sub bl, byte [0x2d7]
    db 02Ah, 0DEh                     ; sub bl, dh
    db 002h, 0CBh                     ; add cl, bl
    db 080h, 0E1h, 007h               ; and cl, 7
    cld                                      ; FC
    pop bx                                   ; 5B
    pop di                                   ; 5F
    db 074h, 0C6h                     ; je 0x1b10
    db 0E8h, 007h, 000h               ; call 0x1b54
    db 0E2h, 0FBh                     ; loop 0x1b4a
    db 0EBh, 0BFh                     ; jmp 0x1b10
    db 0FEh, 0CEh                     ; dec dh
    dec di                                   ; 4F
    db 0B0h, 008h                     ; mov al, 8
    db 0E8h, 0A5h, 000h               ; call 0x1bfe
    db 0B0h, 020h                     ; mov al, 0x20
    db 0E8h, 0A0h, 000h               ; call 0x1bfe
    db 0B0h, 008h                     ; mov al, 8
    db 0E9h, 09Bh, 000h               ; jmp 0x1bfe
    db 0B0h, 000h                     ; mov al, 0
    db 0E9h, 003h, 0FFh               ; jmp 0x1a6b
    db 08Ah, 0CBh                     ; mov cl, bl
    db 02Ah, 0CFh                     ; sub cl, bh
    db 0EBh, 007h                     ; jmp 0x1b75
    db 0E8h, 036h, 000h               ; call 0x1ba7
    db 0EBh, 002h                     ; jmp 0x1b75
    db 0B1h, 001h                     ; mov cl, 1
    db 0C6h, 006h, 0D8h, 002h, 000h   ; mov byte [0x2d8], 0
    db 03Ah, 0F2h                     ; cmp dh, dl
    db 074h, 012h                     ; je 0x1b90
    db 03Ah, 0FBh                     ; cmp bh, bl
    db 074h, 00Eh                     ; je 0x1b90
    db 026h, 0ACh                     ; lodsb al, byte es:[si]
    db 088h, 005h                     ; mov byte [di], al
    inc di                                   ; 47
    db 0E8h, 063h, 000h               ; call 0x1bed
    db 0FEh, 0C7h                     ; inc bh
    db 0FEh, 0C6h                     ; inc dh
    db 0E2h, 0E5h                     ; loop 0x1b75
    db 0E9h, 0B9h, 0FEh               ; jmp 0x1a4c
    db 03Ah, 0FBh                     ; cmp bh, bl
    db 074h, 0F9h                     ; je 0x1b90
    db 0FEh, 0C7h                     ; inc bh
    inc si                                   ; 46
    db 0E9h, 0AFh, 0FEh               ; jmp 0x1a4c
    db 0E8h, 007h, 000h               ; call 0x1ba7
    db 003h, 0F1h                     ; add si, cx
    db 002h, 0F9h                     ; add bh, cl
    db 0E9h, 0A5h, 0FEh               ; jmp 0x1a4c
    db 0E8h, 06Ah, 000h               ; call 0x1c14
    db 03Ch, 000h                     ; cmp al, 0
    db 075h, 006h                     ; jne 0x1bb4
    db 0E8h, 063h, 000h               ; call 0x1c14
    db 0EBh, 01Ah                     ; jmp 0x1bcd
    nop                                      ; 90
    db 08Ah, 0CBh                     ; mov cl, bl
    db 02Ah, 0CFh                     ; sub cl, bh
    db 074h, 013h                     ; je 0x1bcd
    dec cx                                   ; 49
    db 074h, 010h                     ; je 0x1bcd
    push di                                  ; 57
    db 08Bh, 0FEh                     ; mov di, si
    inc di                                   ; 47
    db 0F2h, 0AEh                     ; repne scasb al, byte es:[di]
    pop di                                   ; 5F
    db 075h, 007h                     ; jne 0x1bcd
    db 0F6h, 0D1h                     ; not cl
    db 002h, 0CBh                     ; add cl, bl
    db 02Ah, 0CFh                     ; sub cl, bh
    db 0C3h                           ; ret
    pop bp                                   ; 5D
    db 0E9h, 07Bh, 0FEh               ; jmp 0x1a4c
    db 0B0h, 040h                     ; mov al, 0x40
    db 0E8h, 028h, 000h               ; call 0x1bfe
    pop di                                   ; 5F
    push di                                  ; 57
    db 0E8h, 0D9h, 0FEh               ; call 0x1ab4
    pop si                                   ; 5E
    db 08Ah, 0DEh                     ; mov bl, dh
    db 0E9h, 0F3h, 0FEh               ; jmp 0x1ad4
    db 0F6h, 016h, 0D8h, 002h         ; not byte [0x2d8]
    db 0E9h, 064h, 0FEh               ; jmp 0x1a4c
    db 0B0h, 01Ah                     ; mov al, 0x1a
    db 0E9h, 07Eh, 0FEh               ; jmp 0x1a6b
    db 03Ch, 009h                     ; cmp al, 9
    db 074h, 00Dh                     ; je 0x1bfe
    db 03Ch, 020h                     ; cmp al, 0x20
    db 073h, 009h                     ; jae 0x1bfe
    push ax                                  ; 50
    db 0B0h, 05Eh                     ; mov al, 0x5e
    db 0E8h, 003h, 000h               ; call 0x1bfe
    pop ax                                   ; 58
    db 004h, 040h                     ; add al, 0x40
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    db 006h                           ; push es
    db 08Bh, 02Eh, 0E3h, 002h         ; mov bp, word [0x2e3]
    db 0E8h, 0E8h, 0F9h               ; call 0x15f4
    db 007h                           ; pop es
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    db 006h                           ; push es
    db 08Bh, 02Eh, 0E3h, 002h         ; mov bp, word [0x2e3]
    db 0B4h, 087h                     ; mov ah, 0x87
    db 0E8h, 01Ch, 0FCh               ; call 0x183f
    db 080h, 03Eh, 0E5h, 002h, 000h   ; cmp byte [0x2e5], 0
    db 074h, 003h                     ; je 0x1c2d
    db 0E9h, 057h, 0FCh               ; jmp 0x1884
    db 0E8h, 058h, 01Ah               ; call 0x3688
    db 007h                           ; pop es
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 0C3h                           ; ret
    db 0E8h, 01Bh, 000h               ; call 0x1c55
    push ax                                  ; 50
    push dx                                  ; 52
    db 075h, 00Ch                     ; jne 0x1c4a
    db 080h, 03Eh, 0D0h, 002h, 000h   ; cmp byte [0x2d0], 0
    db 074h, 005h                     ; je 0x1c4a
    db 0E8h, 0D6h, 000h               ; call 0x1d1e
    db 0EBh, 003h                     ; jmp 0x1c4d
    db 0E8h, 0DFh, 0FBh               ; call 0x182c
    db 0C6h, 006h, 0D0h, 002h, 001h   ; mov byte [0x2d0], 1
    pop dx                                   ; 5A
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 08Ah, 016h, 0E0h, 002h         ; mov dl, byte [0x2e0]
    db 00Ah, 0D2h                     ; or dl, dl
    db 075h, 013h                     ; jne 0x1c70
    db 0E8h, 002h, 0EEh               ; call 0xa62
    db 075h, 00Eh                     ; jne 0x1c70
    db 0E8h, 058h, 0F8h               ; call 0x14bd
    db 075h, 009h                     ; jne 0x1c70
    db 0E8h, 06Fh, 0F8h               ; call 0x14d9
    db 075h, 0F1h                     ; jne 0x1c5d
    db 0B0h, 000h                     ; mov al, 0
    db 0EBh, 002h                     ; jmp 0x1c72
    db 0B0h, 0FFh                     ; mov al, 0xff
    db 00Ah, 0C0h                     ; or al, al
    db 0C3h                           ; ret
    db 0E8h, 0DDh, 0FFh               ; call 0x1c55
    db 074h, 005h                     ; je 0x1c7f
    db 0E8h, 0A2h, 0FBh               ; call 0x181f
    db 0EBh, 0F6h                     ; jmp 0x1c75
    db 0C3h                           ; ret
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0A3h, 0EFh, 003h               ; mov word [0x3ef], ax
    db 0E8h, 074h, 000h               ; call 0x1cfc
    db 08Ah, 0C8h                     ; mov cl, al
    db 08Ah, 0C5h                     ; mov al, ch
    db 0E8h, 06Dh, 000h               ; call 0x1cfc
    db 08Ah, 0E0h                     ; mov ah, al
    db 08Ah, 0C1h                     ; mov al, cl
    db 0A3h, 0EDh, 003h               ; mov word [0x3ed], ax
    db 033h, 0DBh                     ; xor bx, bx
    db 038h, 01Eh, 023h, 000h         ; cmp byte [0x23], bl
    db 074h, 05Dh                     ; je 0x1cfb
    db 08Bh, 00Eh, 0EFh, 003h         ; mov cx, word [0x3ef]
    db 03Ah, 0CDh                     ; cmp cl, ch
    db 072h, 055h                     ; jb 0x1cfb
    db 02Ah, 0C4h                     ; sub al, ah
    db 0FEh, 0C0h                     ; inc al
    db 098h                           ; cwde
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push bx                                  ; 53
    db 0FFh, 036h, 01Ch, 000h         ; push word [0x1c]
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 01Eh, 0EFh, 003h         ; mov bx, word [0x3ef]
    db 03Ah, 0DFh                     ; cmp bl, bh
    db 072h, 039h                     ; jb 0x1cfb
    db 0A1h, 01Ah, 000h               ; mov ax, word [0x1a]
    db 038h, 026h, 023h, 000h         ; cmp byte [0x23], ah
    db 074h, 030h                     ; je 0x1cfb
    db 0F6h, 026h, 0D4h, 002h         ; mul byte [0x2d4]
    db 02Bh, 006h, 018h, 000h         ; sub ax, word [0x18]
    db 033h, 0DBh                     ; xor bx, bx
    db 08Ah, 01Eh, 0EEh, 003h         ; mov bl, byte [0x3ee]
    db 003h, 0D8h                     ; add bx, ax
    db 0A1h, 01Ch, 000h               ; mov ax, word [0x1c]
    db 0F6h, 026h, 0D3h, 002h         ; mul byte [0x2d3]
    db 02Bh, 006h, 016h, 000h         ; sub ax, word [0x16]
    push ax                                  ; 50
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C6h, 006h, 0ECh, 003h, 000h   ; mov byte [0x3ec], 0
    db 0C3h                           ; ret
    db 024h, 00Fh                     ; and al, 0xf
    db 0F6h, 026h, 01Ah, 000h         ; mul byte [0x1a]
    db 0B3h, 00Eh                     ; mov bl, 0xe
    db 0F6h, 0F3h                     ; div bl
    db 0C3h                           ; ret
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 003h                     ; jb 0x1d0f
    db 080h, 0EEh, 019h               ; sub dh, 0x19
    db 08Bh, 0DAh                     ; mov bx, dx
    db 087h, 016h, 0D3h, 002h         ; xchg word [0x2d3], dx
    db 0E8h, 087h, 0F9h               ; call 0x169f
    db 03Ah, 036h, 0D4h, 002h         ; cmp dh, byte [0x2d4]
    db 074h, 0DDh                     ; je 0x1cfb
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 074h, 00Ah                     ; je 0x1d30
    db 0E9h, 041h, 0EBh               ; jmp 0x86a
    db 0A1h, 0EFh, 003h               ; mov ax, word [0x3ef]
    db 08Bh, 016h, 0D3h, 002h         ; mov dx, word [0x2d3]
    db 0C3h                           ; ret
    db 006h                           ; push es
    push dx                                  ; 52
    push cx                                  ; 51
    push bx                                  ; 53
    push ax                                  ; 50
    db 0E8h, 0D1h, 002h               ; call 0x200a
    db 0C3h                           ; ret
    db 0C3h                           ; ret
    db 080h, 0E7h, 07Fh               ; and bh, 0x7f
    db 00Ah, 0C9h                     ; or cl, cl
    db 075h, 038h                     ; jne 0x1d7a
    db 080h, 0FAh, 04Fh               ; cmp dl, 0x4f
    db 072h, 033h                     ; jb 0x1d7a
    db 0B2h, 04Fh                     ; mov dl, 0x4f
    db 080h, 0FEh, 018h               ; cmp dh, 0x18
    db 076h, 002h                     ; jbe 0x1d50
    db 0B6h, 018h                     ; mov dh, 0x18
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 011h                     ; jne 0x1d65
    db 0E8h, 04Fh, 0ECh               ; call 0x9a6
    db 0E8h, 061h, 000h               ; call 0x1dbb
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 0B3h, 020h                     ; mov bl, 0x20
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 0C3h                           ; ret
    db 0E8h, 083h, 0EAh               ; call 0x7eb
    db 0B3h, 050h                     ; mov bl, 0x50
    db 0F6h, 0E3h                     ; mul bl
    push ax                                  ; 50
    db 0E8h, 04Bh, 000h               ; call 0x1dbb
    pop si                                   ; 5E
    db 02Bh, 0CEh                     ; sub cx, si
    db 0D1h, 0E6h                     ; shl si, 1
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0E9h, 0CAh, 0FBh               ; jmp 0x1944
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 003h                     ; jne 0x1d81
    db 0EBh, 057h                     ; jmp 0x1dd7
    nop                                      ; 90
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push bp                                  ; 55
    db 0E8h, 0CAh, 0EAh               ; call 0x853
    db 0E8h, 01Eh, 001h               ; call 0x1eaa
    push di                                  ; 57
    db 0F6h, 0E5h                     ; mul ch
    db 032h, 0EDh                     ; xor ch, ch
    db 003h, 0C1h                     ; add ax, cx
    db 0D1h, 0E0h                     ; shl ax, 1
    db 08Bh, 0F8h                     ; mov di, ax
    db 08Bh, 0D0h                     ; mov dx, ax
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 0F6h, 0E3h                     ; mul bl
    db 0D1h, 0E0h                     ; shl ax, 1
    db 003h, 0D0h                     ; add dx, ax
    db 08Bh, 0CEh                     ; mov cx, si
    pop ax                                   ; 58
    push bx                                  ; 53
    db 08Bh, 0F2h                     ; mov si, dx
    db 0BAh, 050h, 000h               ; mov dx, 0x50
    db 0E8h, 0D2h, 000h               ; call 0x1e80
    pop bp                                   ; 5D
    db 0E8h, 0ECh, 000h               ; call 0x1e9e
    cld                                      ; FC
    pop bp                                   ; 5D
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0E9h, 0B6h, 0EBh               ; jmp 0x971
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 002h                     ; jb 0x1dc2
    db 0B6h, 018h                     ; mov dh, 0x18
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 0F6h, 0E5h                     ; mul ch
    db 0D1h, 0E0h                     ; shl ax, 1
    db 08Bh, 0F8h                     ; mov di, ax
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 0FEh, 0C6h                     ; inc dh
    db 02Ah, 0F5h                     ; sub dh, ch
    db 0F6h, 0E6h                     ; mul dh
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0C3h                           ; ret
    push bp                                  ; 55
    db 0E8h, 0CBh, 0EBh               ; call 0x9a6
    db 0E8h, 018h, 000h               ; call 0x1df6
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 0B3h, 020h                     ; mov bl, 0x20
    db 08Bh, 0C3h                     ; mov ax, bx
    db 080h, 0E4h, 07Fh               ; and ah, 0x7f
    db 08Bh, 0D9h                     ; mov bx, cx
    db 08Bh, 0CBh                     ; mov cx, bx
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 003h, 0FAh                     ; add di, dx
    dec bp                                   ; 4D
    db 075h, 0F7h                     ; jne 0x1deb
    pop bp                                   ; 5D
    db 0C3h                           ; ret
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 08Bh, 0F0h                     ; mov si, ax
    push cx                                  ; 51
    db 0F6h, 0E5h                     ; mul ch
    db 032h, 0EDh                     ; xor ch, ch
    db 003h, 0C1h                     ; add ax, cx
    db 0D1h, 0E0h                     ; shl ax, 1
    db 08Bh, 0F8h                     ; mov di, ax
    pop cx                                   ; 59
    db 08Ah, 0C2h                     ; mov al, dl
    db 02Ah, 0C1h                     ; sub al, cl
    db 0FEh, 0C0h                     ; inc al
    db 098h                           ; cwde
    db 02Bh, 0F0h                     ; sub si, ax
    db 0D1h, 0E6h                     ; shl si, 1
    db 08Ah, 0D6h                     ; mov dl, dh
    db 02Ah, 0D5h                     ; sub dl, ch
    db 0FEh, 0C2h                     ; inc dl
    db 032h, 0F6h                     ; xor dh, dh
    db 08Bh, 0EAh                     ; mov bp, dx
    db 08Bh, 0D6h                     ; mov dx, si
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0C3h                           ; ret
    db 080h, 0E7h, 07Fh               ; and bh, 0x7f
    db 00Ah, 0C9h                     ; or cl, cl
    db 075h, 015h                     ; jne 0x1e3d
    db 080h, 0FAh, 050h               ; cmp dl, 0x50
    db 072h, 010h                     ; jb 0x1e3d
    db 0B2h, 050h                     ; mov dl, 0x50
    db 080h, 0FEh, 018h               ; cmp dh, 0x18
    db 076h, 002h                     ; jbe 0x1e36
    db 0B6h, 018h                     ; mov dh, 0x18
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 007h                     ; jne 0x1e41
    db 0E9h, 017h, 0FFh               ; jmp 0x1d54
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 096h                     ; je 0x1dd7
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push bp                                  ; 55
    db 0E8h, 00Ah, 0EAh               ; call 0x853
    db 0E8h, 05Eh, 000h               ; call 0x1eaa
    push di                                  ; 57
    db 0F6h, 0E6h                     ; mul dh
    db 032h, 0F6h                     ; xor dh, dh
    db 003h, 0C2h                     ; add ax, dx
    db 0D1h, 0E0h                     ; shl ax, 1
    db 08Bh, 0F8h                     ; mov di, ax
    db 08Bh, 0D0h                     ; mov dx, ax
    db 0B8h, 050h, 000h               ; mov ax, 0x50
    db 0F6h, 0E3h                     ; mul bl
    db 0D1h, 0E0h                     ; shl ax, 1
    db 02Bh, 0F8h                     ; sub di, ax
    std                                      ; FD
    db 08Bh, 0CEh                     ; mov cx, si
    pop ax                                   ; 58
    push bx                                  ; 53
    db 08Bh, 0F2h                     ; mov si, dx
    db 0BAh, 050h, 000h               ; mov dx, 0x50
    db 0F7h, 0DAh                     ; neg dx
    db 0E8h, 00Fh, 000h               ; call 0x1e80
    pop bp                                   ; 5D
    db 08Bh, 0FEh                     ; mov di, si
    db 0E8h, 027h, 000h               ; call 0x1e9e
    cld                                      ; FC
    pop bp                                   ; 5D
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0E9h, 0E9h, 0EAh               ; jmp 0x969
    db 01Eh                           ; push ds
    db 08Bh, 01Eh, 0EAh, 003h         ; mov bx, word [0x3ea]
    db 08Eh, 0DBh                     ; mov ds, bx
    db 08Eh, 0C3h                     ; mov es, bx
    db 0D1h, 0E2h                     ; shl dx, 1
    db 08Bh, 0D9h                     ; mov bx, cx
    db 08Bh, 0CBh                     ; mov cx, bx
    push si                                  ; 56
    push di                                  ; 57
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 003h, 0F2h                     ; add si, dx
    db 003h, 0FAh                     ; add di, dx
    dec bp                                   ; 4D
    db 075h, 0F1h                     ; jne 0x1e8d
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 08Bh, 0CBh                     ; mov cx, bx
    push di                                  ; 57
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    pop di                                   ; 5F
    db 003h, 0FAh                     ; add di, dx
    dec bp                                   ; 4D
    db 075h, 0F5h                     ; jne 0x1e9e
    db 0C3h                           ; ret
    db 032h, 0E4h                     ; xor ah, ah
    db 0B3h, 020h                     ; mov bl, 0x20
    db 093h                           ; xchg bx, ax
    push ax                                  ; 50
    db 08Ah, 0C2h                     ; mov al, dl
    db 02Ah, 0C1h                     ; sub al, cl
    db 098h                           ; cwde
    inc ax                                   ; 40
    db 08Bh, 0F0h                     ; mov si, ax
    db 08Ah, 0C6h                     ; mov al, dh
    db 02Ah, 0C5h                     ; sub al, ch
    db 098h                           ; cwde
    inc ax                                   ; 40
    db 08Bh, 0E8h                     ; mov bp, ax
    db 02Bh, 0EBh                     ; sub bp, bx
    db 0B0h, 050h                     ; mov al, 0x50
    pop di                                   ; 5F
    db 0C3h                           ; ret
    db 0C4h, 03Eh, 0E8h, 003h         ; les di, [0x3e8]
    db 026h, 08Bh, 005h               ; mov ax, word es:[di]
    db 0C3h                           ; ret
    db 081h, 0F9h, 0CFh, 007h         ; cmp cx, 0x7cf
    db 072h, 017h                     ; jb 0x1eeb
    db 03Ch, 020h                     ; cmp al, 0x20
    db 075h, 013h                     ; jne 0x1eeb
    db 083h, 03Eh, 0D3h, 002h, 000h   ; cmp word [0x2d3], 0
    db 075h, 00Ch                     ; jne 0x1eeb
    db 033h, 0C0h                     ; xor ax, ax
    db 033h, 0C9h                     ; xor cx, cx
    db 0BAh, 04Fh, 018h               ; mov dx, 0x184f
    db 08Ah, 0FBh                     ; mov bh, bl
    db 0E9h, 069h, 0FEh               ; jmp 0x1d54
    db 0E8h, 00Ah, 000h               ; call 0x1ef8
    db 08Ah, 0E3h                     ; mov ah, bl
    db 080h, 0E4h, 07Fh               ; and ah, 0x7f
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 0E9h, 0FAh, 0E7h               ; jmp 0x6f2
    db 0C4h, 03Eh, 0E8h, 003h         ; les di, [0x3e8]
    db 08Bh, 0D7h                     ; mov dx, di
    db 0D1h, 0EAh                     ; shr dx, 1
    db 003h, 0D1h                     ; add dx, cx
    db 081h, 0EAh, 0D0h, 007h         ; sub dx, 0x7d0
    db 076h, 002h                     ; jbe 0x1f0a
    db 02Bh, 0CAh                     ; sub cx, dx
    db 08Bh, 0D1h                     ; mov dx, cx
    db 0C3h                           ; ret
    db 0E8h, 0E8h, 0FFh               ; call 0x1ef8
    db 0AAh                           ; stosb byte es:[di], al
    inc di                                   ; 47
    db 0E2h, 0FCh                     ; loop 0x1f10
    db 0E9h, 0DBh, 0E7h               ; jmp 0x6f2
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    db 033h, 0C0h                     ; xor ax, ax
    db 0C3h                           ; ret
    db 0FFh, 036h, 0D3h, 002h         ; push word [0x2d3]
    db 080h, 0E3h, 0FEh               ; and bl, 0xfe
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0D1h, 0E8h                     ; shr ax, 1
    db 0B2h, 050h                     ; mov dl, 0x50
    db 0F6h, 0F2h                     ; div dl
    db 0A2h, 0D4h, 002h               ; mov byte [0x2d4], al
    db 088h, 026h, 0D3h, 002h         ; mov byte [0x2d3], ah
    db 08Bh, 0D1h                     ; mov dx, cx
    db 08Bh, 0FBh                     ; mov di, bx
    db 08Eh, 006h, 0EAh, 003h         ; mov es, word [0x3ea]
    inc bx                                   ; 43
    db 026h, 080h, 027h, 07Fh         ; and byte es:[bx], 0x7f
    inc bx                                   ; 43
    db 0E2h, 0F8h                     ; loop 0x1f3c
    db 081h, 0FAh, 0D0h, 007h         ; cmp dx, 0x7d0
    db 072h, 012h                     ; jb 0x1f5c
    db 00Bh, 0FFh                     ; or di, di
    db 075h, 00Eh                     ; jne 0x1f5c
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push di                                  ; 57
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0A8h, 003h, 000h, 000h   ; lcall 0, 0x3a8
    db 0EBh, 008h                     ; jmp 0x1f64
    db 0E8h, 093h, 0E7h               ; call 0x6f2
    db 0C6h, 006h, 0ECh, 003h, 001h   ; mov byte [0x3ec], 1
    db 08Fh, 006h, 0D3h, 002h         ; pop word [0x2d3]
    db 0C3h                           ; ret
    db 0E3h, 045h                     ; jcxz 0x1fb0
    db 08Bh, 0F3h                     ; mov si, bx
    db 08Ah, 0E6h                     ; mov ah, dh
    db 08Ah, 0F2h                     ; mov dh, dl
    db 080h, 0E2h, 00Fh               ; and dl, 0xf
    db 0D0h, 0EEh                     ; shr dh, 1
    db 0D0h, 0EEh                     ; shr dh, 1
    db 0D0h, 0EEh                     ; shr dh, 1
    db 0D0h, 0EEh                     ; shr dh, 1
    db 0FFh, 036h, 0D3h, 002h         ; push word [0x2d3]
    push ax                                  ; 50
    db 0E8h, 08Bh, 0FDh               ; call 0x1d0f
    pop ax                                   ; 58
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 005h                     ; jne 0x1f8e
    db 0E8h, 036h, 000h               ; call 0x1fc2
    db 0EBh, 010h                     ; jmp 0x1f9e
    db 0FEh, 0C8h                     ; dec al
    db 075h, 005h                     ; jne 0x1f97
    db 0E8h, 02Dh, 000h               ; call 0x1fc2
    pop dx                                   ; 5A
    db 0C3h                           ; ret
    db 0FEh, 0C8h                     ; dec al
    db 075h, 00Dh                     ; jne 0x1fa8
    db 0E8h, 013h, 000h               ; call 0x1fb1
    db 08Fh, 006h, 0D3h, 002h         ; pop word [0x2d3]
    db 0C6h, 006h, 0ECh, 003h, 001h   ; mov byte [0x3ec], 1
    db 0C3h                           ; ret
    db 0FEh, 0C8h                     ; dec al
    db 075h, 003h                     ; jne 0x1faf
    db 0E8h, 002h, 000h               ; call 0x1fb1
    pop dx                                   ; 5A
    db 0C3h                           ; ret
    db 0E8h, 0D4h, 016h               ; call 0x3688
    db 026h, 0ADh                     ; lodsw ax, word es:[si]
    db 006h                           ; push es
    push si                                  ; 56
    push cx                                  ; 51
    db 0E8h, 0B3h, 0F8h               ; call 0x186f
    pop cx                                   ; 59
    pop si                                   ; 5E
    db 007h                           ; pop es
    db 0E2h, 0F0h                     ; loop 0x1fb1
    db 0C3h                           ; ret
    db 0E8h, 0C3h, 016h               ; call 0x3688
    db 026h, 0ACh                     ; lodsb al, byte es:[si]
    db 006h                           ; push es
    push si                                  ; 56
    push cx                                  ; 51
    push ax                                  ; 50
    db 0E8h, 0A1h, 0F8h               ; call 0x186f
    pop ax                                   ; 58
    pop cx                                   ; 59
    pop si                                   ; 5E
    db 007h                           ; pop es
    db 0E2h, 0EEh                     ; loop 0x1fc2
    db 0C3h                           ; ret
    dec bp                                   ; 4D
    push bx                                  ; 53
    inc sp                                   ; 44
    dec di                                   ; 4F
    push bx                                  ; 53
    db 000h, 050h, 049h               ; add byte [bx + si + 0x49], dl
    inc si                                   ; 46
    db 000h, 04Dh, 045h               ; add byte [di + 0x45], cl
    dec bp                                   ; 4D
    dec di                                   ; 4F
    push dx                                  ; 52
    pop cx                                   ; 59
    db 000h, 043h, 04Fh               ; add byte [bp + di + 0x4f], al
    dec bp                                   ; 4D
    push ax                                  ; 50
    inc cx                                   ; 41
    push sp                                  ; 54
    dec cx                                   ; 49
    inc dx                                   ; 42
    dec sp                                   ; 4C
    inc bp                                   ; 45
    db 000h, 043h, 04Fh               ; add byte [bp + di + 0x4f], al
    dec bp                                   ; 4D
    dec bp                                   ; 4D
    inc cx                                   ; 41
    dec si                                   ; 4E
    inc sp                                   ; 44
    db 02Eh, 043h                     ; inc bx
    dec di                                   ; 4F
    dec bp                                   ; 4D
    db 000h, 043h, 04Fh               ; add byte [bp + di + 0x4f], al
    dec bp                                   ; 4D
    push bx                                  ; 53
    push ax                                  ; 50
    inc bp                                   ; 45
    inc bx                                   ; 43
    db 03Dh, 054h, 045h               ; cmp ax, 0x4554
    dec bp                                   ; 4D
    push ax                                  ; 50
    db 03Dh, 055h, 08Bh               ; cmp ax, 0x8b55
    db 0ECh                           ; in al, dx
    db 081h, 0ECh, 0C0h, 000h         ; sub sp, 0xc0
    push si                                  ; 56
    push di                                  ; 57
    cld                                      ; FC
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 088h, 046h, 0FEh               ; mov byte [bp - 2], al
    db 0A0h, 0F9h, 000h               ; mov al, byte [0xf9]
    db 088h, 046h, 0FDh               ; mov byte [bp - 3], al
    db 0A1h, 012h, 000h               ; mov ax, word [0x12]
    db 089h, 046h, 0FAh               ; mov word [bp - 6], ax
    db 09Ah, 0CFh, 000h, 000h, 000h   ; lcall 0, 0xcf
    db 089h, 046h, 0F8h               ; mov word [bp - 8], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0A3h, 032h, 004h               ; mov word [0x432], ax
    db 0A3h, 03Ah, 004h               ; mov word [0x43a], ax
    db 0A3h, 03Eh, 004h               ; mov word [0x43e], ax
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 09Ah, 007h, 00Eh, 000h, 000h   ; lcall 0, 0xe07
    db 08Bh, 01Eh, 048h, 000h         ; mov bx, word [0x48]
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 08Bh, 046h, 004h               ; mov ax, word [bp + 4]
    db 088h, 046h, 0FFh               ; mov byte [bp - 1], al
    db 0A8h, 080h                     ; test al, 0x80
    db 074h, 003h                     ; je 0x2059
    db 0E9h, 0C2h, 000h               ; jmp 0x211b
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 000h ; cmp byte cs:[0x2d5e], 0
    db 075h, 03Ch                     ; jne 0x209d
    db 0C5h, 076h, 006h               ; lds si, [bp + 6]
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 0BFh, 062h, 001h               ; mov di, 0x162
    db 0A5h                           ; movsw word es:[di], word [si]
    db 0A5h                           ; movsw word es:[di], word [si]
    db 0A5h                           ; movsw word es:[di], word [si]
    db 0B8h, 042h, 000h               ; mov ax, 0x42
    db 0ABh                           ; stosw word es:[di], ax
    db 08Ch, 0D0h                     ; mov ax, ss
    db 0ABh                           ; stosw word es:[di], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0ABh                           ; stosw word es:[di], ax
    db 0ABh                           ; stosw word es:[di], ax
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 0CBh, 005h               ; call 0x2648
    db 074h, 07Ah                     ; je 0x20f9
    db 03Dh, 02Eh, 063h               ; cmp ax, 0x632e
    db 075h, 02Dh                     ; jne 0x20b1
    db 081h, 0FAh, 06Fh, 06Dh         ; cmp dx, 0x6d6f
    db 075h, 027h                     ; jne 0x20b1
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 0F0h, 00Ah               ; call 0x2b80
    db 026h, 081h, 03Dh, 057h, 049h   ; cmp word es:[di], 0x4957
    db 075h, 062h                     ; jne 0x20f9
    db 026h, 081h, 07Dh, 002h, 04Eh, 02Eh ; cmp word es:[di + 2], 0x2e4e
    db 075h, 05Ah                     ; jne 0x20f9
    db 0B8h, 0D5h, 01Fh               ; mov ax, 0x1fd5
    db 00Eh                           ; push cs
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 08Bh, 0D0h                     ; mov dx, ax
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0EBh, 02Ch                     ; jmp 0x20dd
    db 03Dh, 02Eh, 070h               ; cmp ax, 0x702e
    db 075h, 006h                     ; jne 0x20bc
    db 081h, 0FAh, 069h, 066h         ; cmp dx, 0x6669
    db 074h, 03Dh                     ; je 0x20f9
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 08Dh, 0B6h, 070h, 0FFh         ; lea si, [bp - 0x90]
    db 0B8h, 000h, 040h               ; mov ax, 0x4000
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 01Eh                           ; push ds
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    inc ax                                   ; 40
    db 08Bh, 044h, 002h               ; mov ax, word [si + 2]
    db 074h, 01Dh                     ; je 0x20f6
    db 08Dh, 096h, 078h, 0FFh         ; lea dx, [bp - 0x88]
    db 0B8h, 062h, 001h               ; mov ax, 0x162
    db 01Eh                           ; push ds
    push dx                                  ; 52
    db 016h                           ; push ss
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 03Dh, 040h, 000h               ; cmp ax, 0x40
    db 072h, 003h                     ; jb 0x20f1
    db 0E9h, 00Ah, 005h               ; jmp 0x25fb
    db 03Dh, 00Bh, 000h               ; cmp ax, 0xb
    db 074h, 003h                     ; je 0x20f9
    db 0E9h, 005h, 005h               ; jmp 0x25fe
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 0E8h, 0EAh, 007h               ; call 0x28ee
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 0E6h                     ; je 0x20ee
    db 08Ah, 046h, 0FEh               ; mov al, byte [bp - 2]
    db 008h, 006h, 0F7h, 000h         ; or byte [0xf7], al
    db 0BBh, 0E7h, 002h               ; mov bx, 0x2e7
    db 080h, 03Fh, 0FFh               ; cmp byte [bx], 0xff
    db 075h, 004h                     ; jne 0x211b
    db 0C7h, 007h, 000h, 00Dh         ; mov word [bx], 0xd00
    db 0A0h, 0F9h, 000h               ; mov al, byte [0xf9]
    db 0E8h, 01Bh, 01Ch               ; call 0x3d3c
    db 073h, 003h                     ; jae 0x2126
    db 0E9h, 0DBh, 001h               ; jmp 0x2301
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 01Ch, 005h               ; call 0x2648
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 03Dh, 02Eh, 070h               ; cmp ax, 0x702e
    db 075h, 027h                     ; jne 0x215b
    db 081h, 0FAh, 069h, 066h         ; cmp dx, 0x6669
    db 075h, 021h                     ; jne 0x215b
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0BBh, 04Eh, 000h               ; mov bx, 0x4e
    db 080h, 07Fh, 001h, 03Ah         ; cmp byte [bx + 1], 0x3a
    db 074h, 00Dh                     ; je 0x2152
    db 026h, 08Bh, 005h               ; mov ax, word es:[di]
    db 080h, 0FCh, 03Ah               ; cmp ah, 0x3a
    db 075h, 005h                     ; jne 0x2152
    db 0BBh, 04Ch, 000h               ; mov bx, 0x4c
    db 089h, 007h                     ; mov word [bx], ax
    db 08Ch, 05Eh, 00Ch               ; mov word [bp + 0xc], ds
    db 089h, 05Eh, 00Ah               ; mov word [bp + 0xa], bx
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 0EAh, 004h               ; call 0x2648
    db 074h, 003h                     ; je 0x2163
    db 0E9h, 081h, 000h               ; jmp 0x21e4
    db 0B8h, 020h, 000h               ; mov ax, 0x20
    db 080h, 026h, 0F7h, 000h, 0EFh   ; and byte [0xf7], 0xef
    db 0A3h, 0F3h, 000h               ; mov word [0xf3], ax
    db 0A3h, 0F1h, 000h               ; mov word [0xf1], ax
    db 081h, 0ECh, 080h, 000h         ; sub sp, 0x80
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 08Bh, 0FCh                     ; mov di, sp
    db 0B8h, 020h, 02Fh               ; mov ax, 0x2f20
    db 0ABh                           ; stosw word es:[di], ax
    db 0B8h, 063h, 020h               ; mov ax, 0x2063
    db 0ABh                           ; stosw word es:[di], ax
    db 0C5h, 076h, 00Ah               ; lds si, [bp + 0xa]
    db 0B4h, 030h                     ; mov ah, 0x30
    db 0CDh, 021h                     ; int 0x21
    db 03Ch, 003h                     ; cmp al, 3
    db 073h, 013h                     ; jae 0x219f
    db 080h, 07Ch, 001h, 03Ah         ; cmp byte [si + 1], 0x3a
    db 075h, 002h                     ; jne 0x2194
    db 0ADh                           ; lodsw ax, word [si]
    db 0ABh                           ; stosw word es:[di], ax
    db 087h, 0FEh                     ; xchg si, di
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0E8h, 0E5h, 009h               ; call 0x2b80
    db 087h, 0F7h                     ; xchg di, si
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 03Ch, 02Eh                     ; cmp al, 0x2e
    db 075h, 0FAh                     ; jne 0x219f
    db 026h, 0C6h, 045h, 0FFh, 020h   ; mov byte es:[di - 1], 0x20
    db 0C4h, 05Eh, 006h               ; les bx, [bp + 6]
    db 026h, 0C5h, 077h, 002h         ; lds si, es:[bx + 2]
    inc si                                   ; 46
    db 026h, 0C7h, 047h, 002h, 0E7h, 002h ; mov word es:[bx + 2], 0x2e7
    db 026h, 08Ch, 057h, 004h         ; mov word es:[bx + 4], ss
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 08Bh, 0CCh                     ; mov cx, sp
    db 081h, 0C1h, 080h, 000h         ; add cx, 0x80
    db 02Bh, 0CFh                     ; sub cx, di
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 08Bh, 0F4h                     ; mov si, sp
    db 0BFh, 0E8h, 002h               ; mov di, 0x2e8
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0B9h, 07Fh, 000h               ; mov cx, 0x7f
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 081h, 0C4h, 080h, 000h         ; add sp, 0x80
    db 0E8h, 0F5h, 006h               ; call 0x28d0
    db 0E8h, 027h, 00Bh               ; call 0x2d05
    db 08Ch, 05Eh, 00Ch               ; mov word [bp + 0xc], ds
    db 089h, 076h, 00Ah               ; mov word [bp + 0xa], si
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 09Ah, 040h, 020h, 000h, 000h   ; lcall 0, 0x2040
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0BEh, 0B0h, 000h               ; mov si, 0xb0
    db 080h, 03Ch, 000h               ; cmp byte [si], 0
    db 074h, 049h                     ; je 0x2242
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 081h, 009h               ; call 0x2b80
    db 006h                           ; push es
    push di                                  ; 57
    db 016h                           ; push ss
    db 007h                           ; pop es
    db 08Dh, 0BEh, 078h, 0FFh         ; lea di, [bp - 0x88]
    db 080h, 07Ch, 001h, 03Ah         ; cmp byte [si + 1], 0x3a
    db 074h, 009h                     ; je 0x2216
    db 0B4h, 019h                     ; mov ah, 0x19
    db 0CDh, 021h                     ; int 0x21
    db 004h, 041h                     ; add al, 0x41
    db 0B4h, 03Ah                     ; mov ah, 0x3a
    db 0ABh                           ; stosw word es:[di], ax
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x2216
    db 0B8h, 05Ch, 02Fh               ; mov ax, 0x2f5c
    dec di                                   ; 4F
    db 026h, 038h, 045h, 0FFh         ; cmp byte es:[di - 1], al
    db 074h, 007h                     ; je 0x222d
    db 026h, 038h, 065h, 0FFh         ; cmp byte es:[di - 1], ah
    db 074h, 001h                     ; je 0x222d
    db 0AAh                           ; stosb byte es:[di], al
    pop si                                   ; 5E
    db 01Fh                           ; pop ds
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x222f
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 08Dh, 096h, 078h, 0FFh         ; lea dx, [bp - 0x88]
    db 0B8h, 000h, 03Dh               ; mov ax, 0x3d00
    db 0CDh, 021h                     ; int 0x21
    db 073h, 022h                     ; jae 0x2264
    db 08Dh, 0B6h, 070h, 0FFh         ; lea si, [bp - 0x90]
    db 033h, 0C0h                     ; xor ax, ax
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 003h                     ; je 0x2251
    db 0B8h, 000h, 028h               ; mov ax, 0x2800
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 016h                           ; push ss
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 0CFh, 020h, 000h, 000h   ; lcall 0, 0x20cf
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 010h                     ; je 0x2274
    db 089h, 086h, 06Eh, 0FFh         ; mov word [bp - 0x92], ax
    db 08Bh, 0D8h                     ; mov bx, ax
    db 0B8h, 000h, 044h               ; mov ax, 0x4400
    db 0CDh, 021h                     ; int 0x21
    db 0F6h, 0C2h, 080h               ; test dl, 0x80
    db 074h, 006h                     ; je 0x227a
    db 0B8h, 002h, 000h               ; mov ax, 2
    db 0E9h, 092h, 000h               ; jmp 0x230c
    db 0C5h, 076h, 006h               ; lds si, [bp + 6]
    db 0E8h, 0C0h, 005h               ; call 0x2840
    db 0C7h, 086h, 05Eh, 0FFh, 000h, 000h ; mov word [bp - 0xa2], 0
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0B9h, 01Eh, 000h               ; mov cx, 0x1e
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 08Dh, 096h, 040h, 0FFh         ; lea dx, [bp - 0xc0]
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    db 073h, 003h                     ; jae 0x229c
    db 0EBh, 058h                     ; jmp 0x22f3
    nop                                      ; 90
    db 03Dh, 01Eh, 000h               ; cmp ax, 0x1e
    db 075h, 00Eh                     ; jne 0x22af
    db 08Bh, 086h, 040h, 0FFh         ; mov ax, word [bp - 0xc0]
    db 03Dh, 04Dh, 05Ah               ; cmp ax, 0x5a4d
    db 074h, 014h                     ; je 0x22be
    db 03Dh, 05Ah, 04Dh               ; cmp ax, 0x4d5a
    db 074h, 00Fh                     ; je 0x22be
    db 033h, 0C0h                     ; xor ax, ax
    db 089h, 086h, 04Ah, 0FFh         ; mov word [bp - 0xb6], ax
    db 0F7h, 0D0h                     ; not ax
    db 089h, 086h, 04Ch, 0FFh         ; mov word [bp - 0xb4], ax
    db 0E9h, 03Ah, 001h               ; jmp 0x23f8
    db 08Bh, 086h, 044h, 0FFh         ; mov ax, word [bp - 0xbc]
    db 0B1h, 005h                     ; mov cl, 5
    db 0D3h, 0E0h                     ; shl ax, cl
    db 02Bh, 086h, 048h, 0FFh         ; sub ax, word [bp - 0xb8]
    db 089h, 086h, 06Ah, 0FFh         ; mov word [bp - 0x96], ax
    db 0F6h, 046h, 0FFh, 002h         ; test byte [bp - 1], 2
    db 074h, 048h                     ; je 0x231c
    db 0C4h, 07Eh, 006h               ; les di, [bp + 6]
    db 026h, 08Bh, 005h               ; mov ax, word es:[di]
    db 089h, 086h, 05Ch, 0FFh         ; mov word [bp - 0xa4], ax
    db 026h, 08Bh, 045h, 002h         ; mov ax, word es:[di + 2]
    db 089h, 086h, 06Ch, 0FFh         ; mov word [bp - 0x94], ax
    db 0EBh, 043h                     ; jmp 0x232b
    nop                                      ; 90
    db 0B0h, 008h                     ; mov al, 8
    db 036h, 0F6h, 006h, 0F7h, 000h, 001h ; test byte ss:[0xf7], 1
    db 074h, 002h                     ; je 0x22f5
    db 0B0h, 00Bh                     ; mov al, 0xb
    db 032h, 0E4h                     ; xor ah, ah
    push ax                                  ; 50
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 0B4h, 03Eh                     ; mov ah, 0x3e
    db 0CDh, 021h                     ; int 0x21
    pop ax                                   ; 58
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 010h                     ; je 0x2319
    db 0E8h, 0ABh, 009h               ; call 0x2cb7
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 007h                     ; je 0x2319
    db 036h, 0C7h, 006h, 020h, 000h, 001h, 000h ; mov word ss:[0x20], 1
    db 0E9h, 0E2h, 002h               ; jmp 0x25fe
    db 0E8h, 04Ah, 003h               ; call 0x2669
    db 074h, 0C8h                     ; je 0x22e9
    db 03Bh, 09Eh, 06Ah, 0FFh         ; cmp bx, word [bp - 0x96]
    db 072h, 0C2h                     ; jb 0x22e9
    db 089h, 086h, 06Ch, 0FFh         ; mov word [bp - 0x94], ax
    db 08Bh, 096h, 048h, 0FFh         ; mov dx, word [bp - 0xb8]
    push dx                                  ; 52
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E2h                     ; shl dx, cl
    pop ax                                   ; 58
    db 0B1h, 00Ch                     ; mov cl, 0xc
    db 0D3h, 0E8h                     ; shr ax, cl
    db 08Bh, 0C8h                     ; mov cx, ax
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 0B8h, 000h, 042h               ; mov ax, 0x4200
    db 0CDh, 021h                     ; int 0x21
    db 08Bh, 09Eh, 06Ah, 0FFh         ; mov bx, word [bp - 0x96]
    db 081h, 0FBh, 000h, 010h         ; cmp bx, 0x1000
    db 072h, 003h                     ; jb 0x2351
    db 0BBh, 0E0h, 00Fh               ; mov bx, 0xfe0
    db 029h, 09Eh, 06Ah, 0FFh         ; sub word [bp - 0x96], bx
    push bx                                  ; 53
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E3h                     ; shl bx, cl
    db 08Bh, 0CBh                     ; mov cx, bx
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 08Eh, 09Eh, 05Ch, 0FFh         ; mov ds, word [bp - 0xa4]
    db 033h, 0D2h                     ; xor dx, dx
    push cx                                  ; 51
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    pop cx                                   ; 59
    db 03Bh, 0C8h                     ; cmp cx, ax
    pop bx                                   ; 5B
    db 075h, 00Bh                     ; jne 0x237c
    db 001h, 09Eh, 05Ch, 0FFh         ; add word [bp - 0xa4], bx
    db 083h, 0BEh, 06Ah, 0FFh, 000h   ; cmp word [bp - 0x96], 0
    db 075h, 0C8h                     ; jne 0x2344
    db 08Bh, 08Eh, 06Ch, 0FFh         ; mov cx, word [bp - 0x94]
    db 08Bh, 086h, 04Eh, 0FFh         ; mov ax, word [bp - 0xb2]
    db 003h, 0C1h                     ; add ax, cx
    db 089h, 086h, 064h, 0FFh         ; mov word [bp - 0x9c], ax
    db 08Bh, 086h, 050h, 0FFh         ; mov ax, word [bp - 0xb0]
    db 089h, 086h, 062h, 0FFh         ; mov word [bp - 0x9e], ax
    db 0C4h, 086h, 054h, 0FFh         ; les ax, [bp - 0xac]
    db 089h, 086h, 066h, 0FFh         ; mov word [bp - 0x9a], ax
    db 08Ch, 0C0h                     ; mov ax, es
    db 003h, 0C1h                     ; add ax, cx
    db 089h, 086h, 068h, 0FFh         ; mov word [bp - 0x98], ax
    db 033h, 0C9h                     ; xor cx, cx
    db 08Bh, 096h, 058h, 0FFh         ; mov dx, word [bp - 0xa8]
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 0B8h, 000h, 042h               ; mov ax, 0x4200
    db 0CDh, 021h                     ; int 0x21
    db 073h, 003h                     ; jae 0x23b6
    db 0E9h, 03Dh, 0FFh               ; jmp 0x22f3
    db 08Bh, 096h, 046h, 0FFh         ; mov dx, word [bp - 0xba]
    push dx                                  ; 52
    db 08Dh, 096h, 040h, 0FFh         ; lea dx, [bp - 0xc0]
    db 0B9h, 01Ch, 000h               ; mov cx, 0x1c
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    pop dx                                   ; 5A
    db 072h, 0E4h                     ; jb 0x23b3
    db 0B9h, 007h, 000h               ; mov cx, 7
    db 08Dh, 0BEh, 040h, 0FFh         ; lea di, [bp - 0xc0]
    db 08Bh, 0B6h, 06Ch, 0FFh         ; mov si, word [bp - 0x94]
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 003h                     ; jne 0x23e1
    db 0E9h, 08Fh, 000h               ; jmp 0x2470
    db 036h, 0C5h, 01Dh               ; lds bx, ss:[di]
    db 08Ch, 0D8h                     ; mov ax, ds
    db 003h, 0C6h                     ; add ax, si
    db 08Eh, 0D8h                     ; mov ds, ax
    db 08Bh, 007h                     ; mov ax, word [bx]
    db 003h, 0C6h                     ; add ax, si
    db 089h, 007h                     ; mov word [bx], ax
    db 083h, 0C7h, 004h               ; add di, 4
    dec dx                                   ; 4A
    db 0E2h, 0E4h                     ; loop 0x23da
    db 0EBh, 0C2h                     ; jmp 0x23ba
    db 0F6h, 046h, 0FFh, 002h         ; test byte [bp - 1], 2
    db 074h, 00Ah                     ; je 0x2408
    db 0C5h, 076h, 006h               ; lds si, [bp + 6]
    db 0ADh                           ; lodsw ax, word [si]
    db 089h, 086h, 05Ch, 0FFh         ; mov word [bp - 0xa4], ax
    db 0EBh, 019h                     ; jmp 0x2421
    db 0E8h, 05Eh, 002h               ; call 0x2669
    db 075h, 003h                     ; jne 0x2410
    db 0E9h, 0D9h, 0FEh               ; jmp 0x22e9
    db 083h, 0EBh, 010h               ; sub bx, 0x10
    db 081h, 0FBh, 000h, 010h         ; cmp bx, 0x1000
    db 073h, 008h                     ; jae 0x2421
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E0h                     ; shl ax, cl
    db 0EBh, 003h                     ; jmp 0x2424
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    push ax                                  ; 50
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 033h, 0C9h                     ; xor cx, cx
    db 08Bh, 0D1h                     ; mov dx, cx
    db 0B8h, 000h, 042h               ; mov ax, 0x4200
    db 0CDh, 021h                     ; int 0x21
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    pop cx                                   ; 59
    db 08Eh, 09Eh, 05Ch, 0FFh         ; mov ds, word [bp - 0xa4]
    db 033h, 0D2h                     ; xor dx, dx
    push cx                                  ; 51
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    pop si                                   ; 5E
    db 03Bh, 0C6h                     ; cmp ax, si
    db 075h, 003h                     ; jne 0x244a
    db 0E9h, 09Fh, 0FEh               ; jmp 0x22e9
    db 0F6h, 046h, 0FFh, 002h         ; test byte [bp - 1], 2
    db 075h, 020h                     ; jne 0x2470
    db 08Bh, 086h, 05Ch, 0FFh         ; mov ax, word [bp - 0xa4]
    db 02Dh, 010h, 000h               ; sub ax, 0x10
    db 089h, 086h, 068h, 0FFh         ; mov word [bp - 0x98], ax
    db 0C7h, 086h, 066h, 0FFh, 000h, 001h ; mov word [bp - 0x9a], 0x100
    dec si                                   ; 4E
    db 089h, 0B6h, 062h, 0FFh         ; mov word [bp - 0x9e], si
    db 089h, 086h, 064h, 0FFh         ; mov word [bp - 0x9c], ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0C7h, 004h, 000h, 000h         ; mov word [si], 0
    db 08Bh, 09Eh, 06Eh, 0FFh         ; mov bx, word [bp - 0x92]
    db 0B4h, 03Eh                     ; mov ah, 0x3e
    db 0CDh, 021h                     ; int 0x21
    db 0F6h, 046h, 0FFh, 002h         ; test byte [bp - 1], 2
    db 074h, 003h                     ; je 0x2481
    db 0E9h, 07Ah, 001h               ; jmp 0x25fb
    db 08Eh, 09Eh, 05Eh, 0FFh         ; mov ds, word [bp - 0xa2]
    db 08Eh, 046h, 0F8h               ; mov es, word [bp - 8]
    db 026h, 08Ch, 01Eh, 046h, 000h   ; mov word es:[0x46], ds
    db 006h                           ; push es
    db 01Eh                           ; push ds
    db 0FFh, 076h, 008h               ; push word [bp + 8]
    db 0FFh, 076h, 006h               ; push word [bp + 6]
    db 0FFh, 0B6h, 060h, 0FFh         ; push word [bp - 0xa0]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push ax                                  ; 50
    db 08Bh, 046h, 0F0h               ; mov ax, word [bp - 0x10]
    db 0A3h, 048h, 000h               ; mov word [0x48], ax
    db 08Bh, 046h, 0F2h               ; mov ax, word [bp - 0xe]
    db 0A3h, 04Ah, 000h               ; mov word [0x4a], ax
    db 0E8h, 087h, 001h               ; call 0x2635
    db 074h, 006h                     ; je 0x24b6
    db 08Bh, 046h, 0F4h               ; mov ax, word [bp - 0xc]
    db 0A3h, 02Ch, 000h               ; mov word [0x2c], ax
    db 036h, 0A1h, 012h, 000h         ; mov ax, word ss:[0x12]
    db 0A3h, 044h, 000h               ; mov word [0x44], ax
    db 0B8h, 0BBh, 025h               ; mov ax, 0x25bb
    db 0A3h, 00Ah, 000h               ; mov word [0xa], ax
    db 08Ch, 00Eh, 00Ch, 000h         ; mov word [0xc], cs
    db 033h, 0D2h                     ; xor dx, dx
    db 08Eh, 0C2h                     ; mov es, dx
    db 026h, 0A3h, 088h, 000h         ; mov word es:[0x88], ax
    db 026h, 08Ch, 00Eh, 08Ah, 000h   ; mov word es:[0x8a], cs
    db 0BAh, 080h, 000h               ; mov dx, 0x80
    db 0B4h, 01Ah                     ; mov ah, 0x1a
    db 0CDh, 021h                     ; int 0x21
    db 08Eh, 046h, 0F4h               ; mov es, word [bp - 0xc]
    db 033h, 0FFh                     ; xor di, di
    db 0C5h, 076h, 006h               ; lds si, [bp + 6]
    db 08Eh, 01Ch                     ; mov ds, word [si]
    db 033h, 0F6h                     ; xor si, si
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 08Ah, 024h                     ; mov ah, byte [si]
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 0F8h                     ; jne 0x24e7
    db 0A4h                           ; movsb byte es:[di], byte [si]
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0ABh                           ; stosw word es:[di], ax
    db 08Dh, 0B6h, 078h, 0FFh         ; lea si, [bp - 0x88]
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x24fa
    pop ax                                   ; 58
    db 0F6h, 046h, 0FFh, 001h         ; test byte [bp - 1], 1
    db 074h, 022h                     ; je 0x2529
    db 0C5h, 0B6h, 062h, 0FFh         ; lds si, [bp - 0x9e]
    db 0C4h, 07Eh, 006h               ; les di, [bp + 6]
    db 026h, 08Ch, 05Dh, 010h         ; mov word es:[di + 0x10], ds
    dec si                                   ; 4E
    dec si                                   ; 4E
    db 089h, 01Ch                     ; mov word [si], bx
    db 026h, 089h, 075h, 00Eh         ; mov word es:[di + 0xe], si
    db 0C5h, 086h, 066h, 0FFh         ; lds ax, [bp - 0x9a]
    db 026h, 08Ch, 05Dh, 014h         ; mov word es:[di + 0x14], ds
    db 026h, 089h, 045h, 012h         ; mov word es:[di + 0x12], ax
    db 0E9h, 0D2h, 000h               ; jmp 0x25fb
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    push ax                                  ; 50
    db 0E8h, 013h, 008h               ; call 0x2d42
    db 0E8h, 0F9h, 00Ah               ; call 0x302b
    db 08Bh, 09Eh, 05Eh, 0FFh         ; mov bx, word [bp - 0xa2]
    db 08Eh, 0C3h                     ; mov es, bx
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    push bx                                  ; 53
    db 08Eh, 046h, 0F4h               ; mov es, word [bp - 0xc]
    db 08Bh, 05Eh, 0F6h               ; mov bx, word [bp - 0xa]
    dec bx                                   ; 4B
    db 0B4h, 04Ah                     ; mov ah, 0x4a
    db 0CDh, 021h                     ; int 0x21
    db 036h, 08Bh, 01Eh, 0F1h, 000h   ; mov bx, word ss:[0xf1]
    db 083h, 0FBh, 0FFh               ; cmp bx, -1
    db 075h, 004h                     ; jne 0x2556
    db 08Bh, 09Eh, 060h, 0FFh         ; mov bx, word [bp - 0xa0]
    db 0B4h, 048h                     ; mov ah, 0x48
    db 0CDh, 021h                     ; int 0x21
    pop bx                                   ; 5B
    push bx                                  ; 53
    db 09Ah, 03Ch, 00Eh, 000h, 000h   ; lcall 0, 0xe3c
    db 08Bh, 0BEh, 062h, 0FFh         ; mov di, word [bp - 0x9e]
    db 08Bh, 08Eh, 064h, 0FFh         ; mov cx, word [bp - 0x9c]
    db 08Bh, 0B6h, 068h, 0FFh         ; mov si, word [bp - 0x98]
    db 08Bh, 096h, 066h, 0FFh         ; mov dx, word [bp - 0x9a]
    db 08Eh, 0D8h                     ; mov ds, ax
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 00Eh                           ; push cs
    push dx                                  ; 52
    inc bp                                   ; 45
    push bp                                  ; 55
    db 016h                           ; push ss
    db 083h, 0ECh, 00Eh               ; sub sp, 0xe
    db 089h, 026h, 002h, 000h         ; mov word [2], sp
    db 08Eh, 0DBh                     ; mov ds, bx
    push ax                                  ; 50
    db 0B8h, 024h, 035h               ; mov ax, 0x3524
    db 0CDh, 021h                     ; int 0x21
    db 08Ch, 006h, 014h, 000h         ; mov word [0x14], es
    db 089h, 01Eh, 012h, 000h         ; mov word [0x12], bx
    pop ax                                   ; 58
    db 08Eh, 006h, 016h, 000h         ; mov es, word [0x16]
    cli                                      ; FA
    db 026h, 08Ch, 016h, 030h, 000h   ; mov word es:[0x30], ss
    db 026h, 089h, 026h, 02Eh, 000h   ; mov word es:[0x2e], sp
    db 026h, 083h, 02Eh, 02Eh, 000h, 018h ; sub word es:[0x2e], 0x18
    db 08Ch, 016h, 04Eh, 000h         ; mov word [0x4e], ss
    db 089h, 026h, 04Ch, 000h         ; mov word [0x4c], sp
    db 08Eh, 0D1h                     ; mov ss, cx
    db 08Bh, 0E7h                     ; mov sp, di
    sti                                      ; FB
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    push si                                  ; 56
    push dx                                  ; 52
    db 033h, 0DBh                     ; xor bx, bx
    db 0CBh                           ; retf
    db 02Eh, 0C5h, 016h, 0A0h, 034h   ; lds dx, cs:[0x34a0]
    db 0B8h, 03Fh, 025h               ; mov ax, 0x253f
    db 0CDh, 021h                     ; int 0x21
    db 09Ah, 027h, 020h, 000h, 000h   ; lcall 0, 0x2027
    db 08Eh, 0C0h                     ; mov es, ax
    db 08Bh, 0D8h                     ; mov bx, ax
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 026h, 08Eh, 006h, 046h, 000h   ; mov es, word es:[0x46]
    cli                                      ; FA
    db 026h, 08Eh, 016h, 04Eh, 000h   ; mov ss, word es:[0x4e]
    db 026h, 08Bh, 026h, 04Ch, 000h   ; mov sp, word es:[0x4c]
    sti                                      ; FB
    db 083h, 0C4h, 00Eh               ; add sp, 0xe
    db 01Fh                           ; pop ds
    pop bp                                   ; 5D
    dec bp                                   ; 4D
    db 083h, 0C4h, 004h               ; add sp, 4
    db 0E8h, 093h, 00Fh               ; call 0x3582
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 0A3h, 012h, 000h               ; mov word [0x12], ax
    db 0E8h, 04Ah, 007h               ; call 0x2d42
    db 0E8h, 0D6h, 00Ah               ; call 0x30d1
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    push ax                                  ; 50
    db 08Ah, 046h, 0FEh               ; mov al, byte [bp - 2]
    db 0A2h, 0F7h, 000h               ; mov byte [0xf7], al
    db 08Ah, 046h, 0FDh               ; mov al, byte [bp - 3]
    db 0A2h, 0F9h, 000h               ; mov byte [0xf9], al
    db 08Bh, 046h, 0FAh               ; mov ax, word [bp - 6]
    db 0A3h, 012h, 000h               ; mov word [0x12], ax
    db 08Bh, 05Eh, 0F8h               ; mov bx, word [bp - 8]
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 0B8h, 091h, 000h               ; mov ax, 0x91
    db 0BBh, 01Eh, 000h               ; mov bx, 0x1e
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    db 01Eh                           ; push ds
    push ax                                  ; 50
    push bx                                  ; 53
    db 09Ah, 00Bh, 011h, 000h, 000h   ; lcall 0, 0x110b
    pop ax                                   ; 58
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 08Bh, 0E5h                     ; mov sp, bp
    pop bp                                   ; 5D
    db 0C2h, 00Ah, 000h               ; ret 0xa
    db 01Eh                           ; push ds
    db 0C4h, 07Eh, 00Ah               ; les di, [bp + 0xa]
    db 0E8h, 044h, 005h               ; call 0x2b80
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0BEh, 0F1h, 01Fh               ; mov si, 0x1ff1
    db 0B9h, 00Bh, 000h               ; mov cx, 0xb
    db 0F3h, 0A6h                     ; repe cmpsb byte [si], byte es:[di]
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    cld                                      ; FC
    db 0B9h, 0FFh, 0FFh               ; mov cx, 0xffff
    db 032h, 0C0h                     ; xor al, al
    db 0F2h, 0AEh                     ; repne scasb al, byte es:[di]
    db 026h, 08Bh, 045h, 0FBh         ; mov ax, word es:[di - 5]
    db 080h, 0CCh, 020h               ; or ah, 0x20
    db 026h, 08Bh, 055h, 0FDh         ; mov dx, word es:[di - 3]
    db 081h, 0CAh, 020h, 020h         ; or dx, 0x2020
    db 03Dh, 02Eh, 062h               ; cmp ax, 0x622e
    db 075h, 004h                     ; jne 0x2668
    db 081h, 0FAh, 061h, 074h         ; cmp dx, 0x7461
    db 0C3h                           ; ret
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 0A8h, 095h                     ; test al, 0x95
    db 074h, 024h                     ; je 0x2696
    db 0A8h, 001h                     ; test al, 1
    db 074h, 003h                     ; je 0x2679
    db 0E9h, 00Ch, 001h               ; jmp 0x2785
    db 0E8h, 065h, 00Bh               ; call 0x31e1
    db 073h, 012h                     ; jae 0x2690
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 075h, 003h                     ; jne 0x2687
    db 033h, 0DBh                     ; xor bx, bx
    db 0C3h                           ; ret
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0E8h, 047h, 006h               ; call 0x2cd4
    db 0E9h, 020h, 0DBh               ; jmp 0x1b0
    db 0E8h, 0AFh, 006h               ; call 0x2d42
    db 0E8h, 0E7h, 00Bh               ; call 0x327d
    db 0E8h, 0E7h, 005h               ; call 0x2c80
    db 0E8h, 01Ah, 005h               ; call 0x2bb6
    db 08Bh, 0F3h                     ; mov si, bx
    db 0B1h, 006h                     ; mov cl, 6
    db 08Bh, 016h, 0F3h, 000h         ; mov dx, word [0xf3]
    db 0D3h, 0E2h                     ; shl dx, cl
    db 08Bh, 09Eh, 04Ah, 0FFh         ; mov bx, word [bp - 0xb6]
    db 00Bh, 0DBh                     ; or bx, bx
    db 074h, 00Ah                     ; je 0x26b8
    db 003h, 09Eh, 06Ah, 0FFh         ; add bx, word [bp - 0x96]
    db 03Bh, 0D3h                     ; cmp dx, bx
    db 073h, 002h                     ; jae 0x26b8
    db 08Bh, 0D3h                     ; mov dx, bx
    db 0A1h, 0F1h, 000h               ; mov ax, word [0xf1]
    db 0D3h, 0E0h                     ; shl ax, cl
    db 08Bh, 09Eh, 04Ch, 0FFh         ; mov bx, word [bp - 0xb4]
    db 089h, 01Eh, 0F1h, 000h         ; mov word [0xf1], bx
    db 083h, 0FBh, 0FFh               ; cmp bx, -1
    db 074h, 00Eh                     ; je 0x26d8
    db 003h, 09Eh, 06Ah, 0FFh         ; add bx, word [bp - 0x96]
    db 089h, 01Eh, 0F1h, 000h         ; mov word [0xf1], bx
    db 03Bh, 0D8h                     ; cmp bx, ax
    db 076h, 002h                     ; jbe 0x26d8
    db 08Bh, 0C3h                     ; mov ax, bx
    db 0BBh, 018h, 008h               ; mov bx, 0x818
    db 003h, 05Eh, 0F6h               ; add bx, word [bp - 0xa]
    db 003h, 01Eh, 032h, 004h         ; add bx, word [0x432]
    db 003h, 01Eh, 03Ah, 004h         ; add bx, word [0x43a]
    db 003h, 01Eh, 03Eh, 004h         ; add bx, word [0x43e]
    db 003h, 0D3h                     ; add dx, bx
    db 003h, 0D8h                     ; add bx, ax
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 002h                     ; jne 0x26f4
    db 08Bh, 0DEh                     ; mov bx, si
    db 03Bh, 0DAh                     ; cmp bx, dx
    db 073h, 002h                     ; jae 0x26fa
    db 08Bh, 0DAh                     ; mov bx, dx
    db 089h, 016h, 0F3h, 000h         ; mov word [0xf3], dx
    db 0D1h, 0EEh                     ; shr si, 1
    db 081h, 0C6h, 000h, 008h         ; add si, 0x800
    db 03Bh, 0DEh                     ; cmp bx, si
    db 072h, 00Dh                     ; jb 0x2715
    push bx                                  ; 53
    db 08Bh, 0FAh                     ; mov di, dx
    db 081h, 0EFh, 000h, 008h         ; sub di, 0x800
    db 0E8h, 0C5h, 00Eh               ; call 0x35d7
    pop bx                                   ; 5B
    db 073h, 039h                     ; jae 0x274e
    db 0E8h, 052h, 012h               ; call 0x396a
    db 0E3h, 008h                     ; jcxz 0x2722
    db 03Bh, 016h, 0F3h, 000h         ; cmp dx, word [0xf3]
    db 072h, 002h                     ; jb 0x2722
    db 08Bh, 0DAh                     ; mov bx, dx
    db 0E8h, 059h, 001h               ; call 0x287e
    db 073h, 00Bh                     ; jae 0x2732
    db 03Bh, 01Eh, 0F3h, 000h         ; cmp bx, word [0xf3]
    db 072h, 058h                     ; jb 0x2785
    db 0E8h, 04Eh, 001h               ; call 0x287e
    db 072h, 053h                     ; jb 0x2785
    db 0F6h, 006h, 0F7h, 000h, 014h   ; test byte [0xf7], 0x14
    db 075h, 015h                     ; jne 0x274e
    push ax                                  ; 50
    db 081h, 0EEh, 000h, 080h         ; sub si, 0x8000
    db 083h, 0DFh, 000h               ; sbb di, 0
    db 0B9h, 040h, 000h               ; mov cx, 0x40
    push ax                                  ; 50
    push di                                  ; 57
    push si                                  ; 56
    push cx                                  ; 51
    db 09Ah, 096h, 013h, 000h, 000h   ; lcall 0, 0x1396
    pop ax                                   ; 58
    db 08Bh, 05Eh, 0FAh               ; mov bx, word [bp - 6]
    db 0E8h, 0A3h, 00Dh               ; call 0x34f7
    db 0E8h, 092h, 004h               ; call 0x2be9
    db 089h, 05Eh, 0F0h               ; mov word [bp - 0x10], bx
    db 08Ch, 05Eh, 0F2h               ; mov word [bp - 0xe], ds
    dec ax                                   ; 48
    db 08Eh, 0C0h                     ; mov es, ax
    inc ax                                   ; 40
    db 089h, 046h, 0F4h               ; mov word [bp - 0xc], ax
    db 003h, 046h, 0F6h               ; add ax, word [bp - 0xa]
    db 026h, 0A3h, 001h, 000h         ; mov word es:[1], ax
    db 089h, 086h, 05Eh, 0FFh         ; mov word [bp - 0xa2], ax
    db 005h, 010h, 000h               ; add ax, 0x10
    db 089h, 086h, 05Ch, 0FFh         ; mov word [bp - 0xa4], ax
    db 026h, 08Bh, 01Eh, 003h, 000h   ; mov bx, word es:[3]
    db 02Bh, 05Eh, 0F6h               ; sub bx, word [bp - 0xa]
    db 089h, 09Eh, 060h, 0FFh         ; mov word [bp - 0xa0], bx
    db 00Bh, 0DBh                     ; or bx, bx
    db 0C3h                           ; ret
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 010h                     ; je 0x279b
    db 02Eh, 0A0h, 05Dh, 02Dh         ; mov al, byte cs:[0x2d5d]
    db 02Eh, 00Ah, 006h, 05Eh, 02Dh   ; or al, byte cs:[0x2d5e]
    db 02Eh, 00Ah, 006h, 05Fh, 02Dh   ; or al, byte cs:[0x2d5f]
    db 074h, 003h                     ; je 0x279e
    db 033h, 0DBh                     ; xor bx, bx
    db 0C3h                           ; ret
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 0F4h                     ; je 0x279b
    db 09Ah, 05Dh, 025h, 000h, 000h   ; lcall 0, 0x255d
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0C2h                     ; mov es, dx
    inc ax                                   ; 40
    db 026h, 08Bh, 016h, 000h, 000h   ; mov dx, word es:[0]
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 0F4h                     ; jne 0x27ae
    db 03Ch, 002h                     ; cmp al, 2
    db 077h, 0DDh                     ; ja 0x279b
    db 083h, 03Eh, 04Ah, 000h, 002h   ; cmp word [0x4a], 2
    db 074h, 0D6h                     ; je 0x279b
    db 0E8h, 019h, 00Ah               ; call 0x31e1
    db 073h, 00Ch                     ; jae 0x27d6
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 0CBh                     ; je 0x279b
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0E9h, 0B4h, 0FEh               ; jmp 0x268a
    db 0B8h, 000h, 068h               ; mov ax, 0x6800
    db 0BEh, 012h, 001h               ; mov si, 0x112
    db 0FFh, 076h, 00Ch               ; push word [bp + 0xc]
    db 0FFh, 076h, 00Ah               ; push word [bp + 0xa]
    db 016h                           ; push ss
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 05Bh, 022h, 000h, 000h   ; lcall 0, 0x225b
    inc ax                                   ; 40
    db 075h, 004h                     ; jne 0x27f1
    pop ax                                   ; 58
    db 0E9h, 00Ah, 0FEh               ; jmp 0x25fb
    db 09Ah, 0C6h, 025h, 000h, 000h   ; lcall 0, 0x25c6
    db 08Eh, 0C2h                     ; mov es, dx
    db 026h, 08Eh, 006h, 016h, 000h   ; mov es, word es:[0x16]
    db 026h, 08Bh, 03Eh, 000h, 001h   ; mov di, word es:[0x100]
    db 02Eh, 0A1h, 064h, 02Dh         ; mov ax, word cs:[0x2d64]
    db 0ABh                           ; stosw word es:[di], ax
    db 02Eh, 0A1h, 066h, 02Dh         ; mov ax, word cs:[0x2d66]
    db 0ABh                           ; stosw word es:[di], ax
    db 0A1h, 0F5h, 000h               ; mov ax, word [0xf5]
    db 0ABh                           ; stosw word es:[di], ax
    db 0A0h, 0F9h, 000h               ; mov al, byte [0xf9]
    db 0AAh                           ; stosb byte es:[di], al
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0BEh, 01Ah, 001h               ; mov si, 0x11a
    db 0B9h, 040h, 000h               ; mov cx, 0x40
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 0C5h, 076h, 006h               ; lds si, [bp + 6]
    db 0C5h, 074h, 002h               ; lds si, [si + 2]
    db 0B9h, 080h, 000h               ; mov cx, 0x80
    db 08Bh, 0F9h                     ; mov di, cx
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 0C7h, 006h, 020h, 000h, 001h, 000h ; mov word [0x20], 1
    db 0E8h, 04Ch, 004h               ; call 0x2c80
    db 033h, 0C0h                     ; xor ax, ax
    push ax                                  ; 50
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E9h, 05Bh, 0FFh               ; jmp 0x279b
    db 08Bh, 01Ch                     ; mov bx, word [si]
    db 00Bh, 0DBh                     ; or bx, bx
    db 075h, 00Ah                     ; jne 0x2850
    db 08Eh, 046h, 0F8h               ; mov es, word [bp - 8]
    db 026h, 08Bh, 01Eh, 02Ch, 000h   ; mov bx, word es:[0x2c]
    db 089h, 01Ch                     ; mov word [si], bx
    db 08Eh, 0DBh                     ; mov ds, bx
    db 033h, 0F6h                     ; xor si, si
    db 033h, 0C9h                     ; xor cx, cx
    db 0ACh                           ; lodsb al, byte [si]
    db 08Ah, 024h                     ; mov ah, byte [si]
    inc cx                                   ; 41
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 0F8h                     ; jne 0x2856
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 08Dh, 0B6h, 078h, 0FFh         ; lea si, [bp - 0x88]
    db 0ACh                           ; lodsb al, byte [si]
    inc cx                                   ; 41
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x2864
    db 083h, 0C1h, 012h               ; add cx, 0x12
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 080h, 0E1h, 0FEh               ; and cl, 0xfe
    inc cx                                   ; 41
    inc cx                                   ; 41
    db 089h, 04Eh, 0F6h               ; mov word [bp - 0xa], cx
    db 0C3h                           ; ret
    push bx                                  ; 53
    db 0B1h, 004h                     ; mov cl, 4
    db 08Bh, 0F3h                     ; mov si, bx
    db 08Bh, 0FBh                     ; mov di, bx
    db 0D3h, 0C6h                     ; rol si, cl
    db 0D3h, 0C7h                     ; rol di, cl
    db 081h, 0E6h, 0F0h, 0FFh         ; and si, 0xfff0
    db 081h, 0E7h, 00Fh, 000h         ; and di, 0xf
    db 0B9h, 040h, 020h               ; mov cx, 0x2040
    push cx                                  ; 51
    push di                                  ; 57
    push si                                  ; 56
    db 09Ah, 065h, 00Bh, 000h, 000h   ; lcall 0, 0xb65
    pop bx                                   ; 5B
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 003h                     ; jne 0x28a4
    db 08Bh, 0DAh                     ; mov bx, dx
    stc                                      ; F9
    db 0C3h                           ; ret
    db 0BFh, 0E9h, 002h               ; mov di, 0x2e9
    db 0C6h, 045h, 0FFh, 020h         ; mov byte [di - 1], 0x20
    db 033h, 0DBh                     ; xor bx, bx
    db 026h, 0ACh                     ; lodsb al, byte es:[si]
    db 088h, 005h                     ; mov byte [di], al
    inc di                                   ; 47
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0F7h                     ; jne 0x28ae
    db 08Bh, 0DEh                     ; mov bx, si
    db 026h, 0ACh                     ; lodsb al, byte es:[si]
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 009h                     ; je 0x28c8
    db 03Ch, 00Ah                     ; cmp al, 0xa
    db 075h, 0F6h                     ; jne 0x28b9
    db 026h, 0C6h, 044h, 0FFh, 000h   ; mov byte es:[si - 1], 0
    db 089h, 01Eh, 0E8h, 001h         ; mov word [0x1e8], bx
    db 08Ch, 006h, 0EAh, 001h         ; mov word [0x1ea], es
    db 0BBh, 0E7h, 002h               ; mov bx, 0x2e7
    db 0C6h, 007h, 000h               ; mov byte [bx], 0
    inc bx                                   ; 43
    db 083h, 03Fh, 020h               ; cmp word [bx], 0x20
    db 074h, 006h                     ; je 0x28e2
    inc bx                                   ; 43
    db 080h, 03Fh, 000h               ; cmp byte [bx], 0
    db 075h, 0FAh                     ; jne 0x28dc
    db 0C6h, 007h, 00Dh               ; mov byte [bx], 0xd
    db 081h, 0EBh, 0E8h, 002h         ; sub bx, 0x2e8
    db 088h, 01Eh, 0E7h, 002h         ; mov byte [0x2e7], bl
    db 0C3h                           ; ret
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 083h, 0ECh, 002h               ; sub sp, 2
    push si                                  ; 56
    push di                                  ; 57
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 088h, 046h, 0FFh               ; mov byte [bp - 1], al
    db 0C7h, 006h, 08Fh, 000h, 000h, 0FFh ; mov word [0x8f], 0xff00
    db 0C6h, 006h, 0F8h, 000h, 020h   ; mov byte [0xf8], 0x20
    db 0C7h, 006h, 0F5h, 000h, 007h, 000h ; mov word [0xf5], 7
    db 033h, 0C0h                     ; xor ax, ax
    db 0A2h, 0B0h, 000h               ; mov byte [0xb0], al
    db 0A2h, 0F7h, 000h               ; mov byte [0xf7], al
    db 0A2h, 0F9h, 000h               ; mov byte [0xf9], al
    db 0BFh, 0DFh, 01Fh               ; mov di, 0x1fdf
    db 0E8h, 02Fh, 002h               ; call 0x2b4d
    db 0C7h, 006h, 0F3h, 000h, 034h, 000h ; mov word [0xf3], 0x34
    db 0A3h, 0F1h, 000h               ; mov word [0xf1], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0BFh, 0E6h, 01Fh               ; mov di, 0x1fe6
    db 0E8h, 01Eh, 002h               ; call 0x2b4d
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 005h                     ; jne 0x2938
    db 0C6h, 006h, 0F7h, 000h, 090h   ; mov byte [0xf7], 0x90
    db 0FFh, 076h, 006h               ; push word [bp + 6]
    db 0FFh, 076h, 004h               ; push word [bp + 4]
    db 09Ah, 0EBh, 021h, 000h, 000h   ; lcall 0, 0x21eb
    db 0C4h, 07Eh, 004h               ; les di, [bp + 4]
    db 0E8h, 037h, 002h               ; call 0x2b80
    db 0BEh, 091h, 000h               ; mov si, 0x91
    db 08Bh, 0DEh                     ; mov bx, si
    db 08Bh, 0CFh                     ; mov cx, di
    db 026h, 08Ah, 005h               ; mov al, byte es:[di]
    db 088h, 004h                     ; mov byte [si], al
    inc di                                   ; 47
    inc si                                   ; 46
    db 03Ch, 02Eh                     ; cmp al, 0x2e
    db 075h, 004h                     ; jne 0x295f
    db 08Bh, 0DEh                     ; mov bx, si
    db 08Bh, 0CFh                     ; mov cx, di
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0EDh                     ; jne 0x2950
    db 080h, 03Fh, 050h               ; cmp byte [bx], 0x50
    db 075h, 010h                     ; jne 0x2978
    db 081h, 07Fh, 001h, 049h, 046h   ; cmp word [bx + 1], 0x4649
    db 075h, 009h                     ; jne 0x2978
    db 08Bh, 0F3h                     ; mov si, bx
    db 08Bh, 0F9h                     ; mov di, cx
    db 0B9h, 000h, 028h               ; mov cx, 0x2800
    db 0EBh, 03Eh                     ; jmp 0x29b6
    push bx                                  ; 53
    push cx                                  ; 51
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0BEh, 091h, 000h               ; mov si, 0x91
    db 0BFh, 04Eh, 000h               ; mov di, 0x4e
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x2982
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 0BFh, 091h, 000h               ; mov di, 0x91
    db 0E8h, 0BEh, 001h               ; call 0x2b4f
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 01Ch                     ; je 0x29b4
    db 0C6h, 006h, 0F7h, 000h, 009h   ; mov byte [0xf7], 9
    db 03Dh, 001h, 000h               ; cmp ax, 1
    db 074h, 00Fh                     ; je 0x29b1
    db 0A3h, 0F3h, 000h               ; mov word [0xf3], ax
    db 0A3h, 0F1h, 000h               ; mov word [0xf1], ax
    db 0C6h, 006h, 0F7h, 000h, 000h   ; mov byte [0xf7], 0
    db 0C6h, 044h, 0FFh, 000h         ; mov byte [si - 1], 0
    db 0E9h, 031h, 001h               ; jmp 0x2ae5
    db 033h, 0C9h                     ; xor cx, cx
    db 0C5h, 056h, 004h               ; lds dx, [bp + 4]
    db 0C7h, 005h, 050h, 049h         ; mov word [di], 0x4950
    db 0C7h, 045h, 002h, 046h, 000h   ; mov word [di + 2], 0x46
    db 0B8h, 000h, 03Dh               ; mov ax, 0x3d00
    db 0CDh, 021h                     ; int 0x21
    db 036h, 08Bh, 014h               ; mov dx, word ss:[si]
    db 089h, 015h                     ; mov word [di], dx
    db 036h, 08Bh, 054h, 002h         ; mov dx, word ss:[si + 2]
    db 089h, 055h, 002h               ; mov word [di + 2], dx
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 073h, 00Fh                     ; jae 0x29e6
    db 0C7h, 004h, 050h, 049h         ; mov word [si], 0x4950
    db 0C7h, 044h, 002h, 046h, 000h   ; mov word [si + 2], 0x46
    db 0BFh, 091h, 000h               ; mov di, 0x91
    db 0E8h, 009h, 001h               ; call 0x2aef
    db 08Bh, 0D8h                     ; mov bx, ax
    inc ax                                   ; 40
    db 075h, 03Eh                     ; jne 0x2a29
    db 0C4h, 07Eh, 004h               ; les di, [bp + 4]
    db 0E8h, 057h, 0FCh               ; call 0x2648
    db 074h, 0B5h                     ; je 0x29a8
    db 03Dh, 02Eh, 070h               ; cmp ax, 0x702e
    db 075h, 006h                     ; jne 0x29fe
    db 081h, 0FAh, 069h, 066h         ; cmp dx, 0x6669
    db 074h, 026h                     ; je 0x2a24
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 000h ; cmp byte cs:[0x2d5e], 0
    db 075h, 017h                     ; jne 0x2a1d
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 086h, 046h, 0FFh               ; xchg byte [bp - 1], al
    db 0A2h, 0F7h, 000h               ; mov byte [0xf7], al
    db 0E8h, 0A3h, 0E4h               ; call 0xeb5
    db 083h, 0FFh, 002h               ; cmp di, 2
    db 076h, 00Dh                     ; jbe 0x2a24
    db 08Ah, 046h, 0FFh               ; mov al, byte [bp - 1]
    db 0A2h, 0F7h, 000h               ; mov byte [0xf7], al
    db 0C6h, 044h, 0FFh, 000h         ; mov byte [si - 1], 0
    db 0E9h, 0C1h, 000h               ; jmp 0x2ae5
    db 033h, 0C0h                     ; xor ax, ax
    db 0E9h, 0BEh, 000h               ; jmp 0x2ae7
    db 033h, 0C9h                     ; xor cx, cx
    db 033h, 0D2h                     ; xor dx, dx
    db 0B8h, 002h, 042h               ; mov ax, 0x4202
    db 0CDh, 021h                     ; int 0x21
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 005h                     ; jne 0x2a3b
    db 03Dh, 0E2h, 002h               ; cmp ax, 0x2e2
    db 072h, 003h                     ; jb 0x2a3e
    db 0E9h, 0A3h, 000h               ; jmp 0x2ae1
    db 0BAh, 063h, 000h               ; mov dx, 0x63
    db 0BFh, 0F9h, 000h               ; mov di, 0xf9
    db 0B9h, 001h, 000h               ; mov cx, 1
    db 0E8h, 015h, 001h               ; call 0x2b5f
    db 0BAh, 020h, 000h               ; mov dx, 0x20
    db 0BFh, 0F1h, 000h               ; mov di, 0xf1
    db 0B9h, 004h, 000h               ; mov cx, 4
    db 0E8h, 009h, 001h               ; call 0x2b5f
    db 0BAh, 024h, 000h               ; mov dx, 0x24
    db 0BFh, 04Eh, 000h               ; mov di, 0x4e
    db 0B9h, 03Fh, 000h               ; mov cx, 0x3f
    db 0E8h, 0FDh, 000h               ; call 0x2b5f
    db 0E8h, 00Ah, 001h               ; call 0x2b6f
    db 0BAh, 065h, 000h               ; mov dx, 0x65
    db 0BFh, 0B0h, 000h               ; mov di, 0xb0
    db 0B9h, 040h, 000h               ; mov cx, 0x40
    db 0E8h, 0EEh, 000h               ; call 0x2b5f
    db 0E8h, 0FBh, 000h               ; call 0x2b6f
    db 0BFh, 0E9h, 002h               ; mov di, 0x2e9
    db 080h, 07Dh, 0FEh, 000h         ; cmp byte [di - 2], 0
    db 075h, 020h                     ; jne 0x2a9d
    db 0BAh, 0A5h, 000h               ; mov dx, 0xa5
    db 0B9h, 040h, 000h               ; mov cx, 0x40
    db 0E8h, 0D9h, 000h               ; call 0x2b5f
    db 080h, 03Dh, 03Fh               ; cmp byte [di], 0x3f
    db 075h, 006h                     ; jne 0x2a91
    db 0C6h, 045h, 0FEh, 0FFh         ; mov byte [di - 2], 0xff
    db 0EBh, 00Ch                     ; jmp 0x2a9d
    db 0C6h, 045h, 0FFh, 020h         ; mov byte [di - 1], 0x20
    db 0E8h, 0D7h, 000h               ; call 0x2b6f
    push bx                                  ; 53
    db 0E8h, 034h, 0FEh               ; call 0x28d0
    pop bx                                   ; 5B
    db 0BAh, 0E7h, 000h               ; mov dx, 0xe7
    db 0BFh, 08Fh, 000h               ; mov di, 0x8f
    db 0B9h, 002h, 000h               ; mov cx, 2
    db 0E8h, 0B6h, 000h               ; call 0x2b5f
    db 0BAh, 0EDh, 000h               ; mov dx, 0xed
    db 0BFh, 0F5h, 000h               ; mov di, 0xf5
    db 0B9h, 002h, 000h               ; mov cx, 2
    db 0E8h, 0AAh, 000h               ; call 0x2b5f
    db 0BAh, 06Fh, 001h               ; mov dx, 0x16f
    db 0BFh, 0F7h, 000h               ; mov di, 0xf7
    db 0B9h, 002h, 000h               ; mov cx, 2
    db 0E8h, 09Eh, 000h               ; call 0x2b5f
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 024h, 0F0h                     ; and al, 0xf0
    db 08Ah, 026h, 0F9h, 000h         ; mov ah, byte [0xf9]
    db 080h, 0E4h, 00Fh               ; and ah, 0xf
    db 00Ah, 0C4h                     ; or al, ah
    db 0A2h, 0F7h, 000h               ; mov byte [0xf7], al
    db 0BAh, 002h, 000h               ; mov dx, 2
    db 0BFh, 091h, 000h               ; mov di, 0x91
    db 0B9h, 01Eh, 000h               ; mov cx, 0x1e
    db 0E8h, 081h, 000h               ; call 0x2b5f
    db 0E8h, 08Eh, 000h               ; call 0x2b6f
    db 0B4h, 03Eh                     ; mov ah, 0x3e
    db 0CDh, 021h                     ; int 0x21
    db 0B0h, 001h                     ; mov al, 1
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 08Bh, 0E5h                     ; mov sp, bp
    pop bp                                   ; 5D
    db 0C2h, 004h, 000h               ; ret 4
    db 0F7h, 0C1h, 000h, 020h         ; test cx, 0x2000
    db 074h, 00Ah                     ; je 0x2aff
    push cx                                  ; 51
    db 0E8h, 027h, 000h               ; call 0x2b20
    pop cx                                   ; 59
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 075h, 04Dh                     ; jne 0x2b4c
    push cx                                  ; 51
    db 081h, 0ECh, 080h, 000h         ; sub sp, 0x80
    db 08Bh, 0DCh                     ; mov bx, sp
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 016h                           ; push ss
    push bx                                  ; 53
    push cx                                  ; 51
    db 09Ah, 0E6h, 027h, 000h, 000h   ; lcall 0, 0x27e6
    db 081h, 0C4h, 080h, 000h         ; add sp, 0x80
    pop cx                                   ; 59
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 075h, 032h                     ; jne 0x2b4c
    db 0F7h, 0C1h, 000h, 020h         ; test cx, 0x2000
    db 075h, 02Ch                     ; jne 0x2b4c
    push di                                  ; 57
    push si                                  ; 56
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 0E8h, 059h, 000h               ; call 0x2b80
    db 006h                           ; push es
    push di                                  ; 57
    db 00Eh                           ; push cs
    db 007h                           ; pop es
    db 0BFh, 043h, 038h               ; mov di, 0x3843
    db 0E8h, 04Fh, 000h               ; call 0x2b80
    pop si                                   ; 5E
    db 01Fh                           ; pop ds
    db 0ACh                           ; lodsb al, byte [si]
    db 0AAh                           ; stosb byte es:[di], al
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FAh                     ; jne 0x2b33
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0BAh, 043h, 038h               ; mov dx, 0x3843
    db 0B8h, 000h, 03Dh               ; mov ax, 0x3d00
    db 0CDh, 021h                     ; int 0x21
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 073h, 003h                     ; jae 0x2b4a
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    pop si                                   ; 5E
    pop di                                   ; 5F
    db 0C3h                           ; ret
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0BBh, 0DBh, 01Fh               ; mov bx, 0x1fdb
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 01Eh                           ; push ds
    push di                                  ; 57
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    push cx                                  ; 51
    db 033h, 0C9h                     ; xor cx, cx
    db 0B8h, 000h, 042h               ; mov ax, 0x4200
    db 0CDh, 021h                     ; int 0x21
    pop cx                                   ; 59
    db 08Bh, 0D7h                     ; mov dx, di
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 007h                           ; pop es
    db 003h, 0F9h                     ; add di, cx
    inc cx                                   ; 41
    dec di                                   ; 4F
    db 0B0h, 020h                     ; mov al, 0x20
    std                                      ; FD
    db 0F3h, 0AEh                     ; repe scasb al, byte es:[di]
    db 0C6h, 045h, 002h, 000h         ; mov byte [di + 2], 0
    cld                                      ; FC
    db 0C3h                           ; ret
    cld                                      ; FC
    db 032h, 0C0h                     ; xor al, al
    db 0B9h, 0FFh, 0FFh               ; mov cx, 0xffff
    db 08Bh, 0DFh                     ; mov bx, di
    db 0F2h, 0AEh                     ; repne scasb al, byte es:[di]
    inc cx                                   ; 41
    inc cx                                   ; 41
    db 0F7h, 0D9h                     ; neg cx
    dec di                                   ; 4F
    db 03Bh, 0DFh                     ; cmp bx, di
    db 074h, 012h                     ; je 0x2ba5
    db 026h, 08Ah, 045h, 0FFh         ; mov al, byte es:[di - 1]
    db 03Ch, 05Ch                     ; cmp al, 0x5c
    db 074h, 00Ah                     ; je 0x2ba5
    db 03Ch, 02Fh                     ; cmp al, 0x2f
    db 074h, 006h                     ; je 0x2ba5
    db 03Ch, 03Ah                     ; cmp al, 0x3a
    db 074h, 002h                     ; je 0x2ba5
    db 0EBh, 0E9h                     ; jmp 0x2b8e
    db 0C3h                           ; ret
    push bx                                  ; 53
    db 0BBh, 000h, 020h               ; mov bx, 0x2000
    push bx                                  ; 53
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 098h, 028h, 000h, 000h   ; lcall 0, 0x2898
    pop bx                                   ; 5B
    db 00Bh, 0C0h                     ; or ax, ax
    db 0C3h                           ; ret
    db 033h, 0DBh                     ; xor bx, bx
    push bx                                  ; 53
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 005h, 00Fh, 000h               ; add ax, 0xf
    db 083h, 0D2h, 000h               ; adc dx, 0
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0C8h                     ; ror ax, cl
    db 0D3h, 0CAh                     ; ror dx, cl
    db 080h, 0E4h, 00Fh               ; and ah, 0xf
    db 080h, 0E6h, 0F0h               ; and dh, 0xf0
    db 08Bh, 0D8h                     ; mov bx, ax
    db 00Bh, 0DAh                     ; or bx, dx
    db 0C3h                           ; ret
    db 0B1h, 004h                     ; mov cl, 4
    db 08Bh, 0F3h                     ; mov si, bx
    db 08Bh, 0FBh                     ; mov di, bx
    db 0D3h, 0C7h                     ; rol di, cl
    db 0D3h, 0C6h                     ; rol si, cl
    db 081h, 0E6h, 0F0h, 0FFh         ; and si, 0xfff0
    db 081h, 0E7h, 00Fh, 000h         ; and di, 0xf
    db 0C3h                           ; ret
    db 026h, 08Bh, 036h, 008h, 000h   ; mov si, word es:[8]
    dec si                                   ; 4E
    db 081h, 0E6h, 0FEh, 0FFh         ; and si, 0xfffe
    db 08Dh, 05Fh, 002h               ; lea bx, [bx + 2]
    db 081h, 0E3h, 0FEh, 0FFh         ; and bx, 0xfffe
    db 08Dh, 047h, 004h               ; lea ax, [bx + 4]
    db 025h, 0FEh, 0FFh               ; and ax, 0xfffe
    db 08Eh, 0DEh                     ; mov ds, si
    db 0C6h, 006h, 000h, 000h, 05Ah   ; mov byte [0], 0x5a
    db 0C7h, 006h, 001h, 000h, 0FFh, 0FFh ; mov word [1], 0xffff
    db 0A3h, 006h, 000h               ; mov word [6], ax
    db 089h, 036h, 008h, 000h         ; mov word [8], si
    db 0C7h, 006h, 003h, 000h, 001h, 000h ; mov word [3], 1
    db 01Eh                           ; push ds
    db 08Eh, 0D8h                     ; mov ds, ax
    inc ax                                   ; 40
    db 0C6h, 006h, 000h, 000h, 04Dh   ; mov byte [0], 0x4d
    db 089h, 01Eh, 006h, 000h         ; mov word [6], bx
    db 089h, 036h, 008h, 000h         ; mov word [8], si
    db 08Bh, 0CEh                     ; mov cx, si
    db 02Bh, 0C8h                     ; sub cx, ax
    db 089h, 00Eh, 003h, 000h         ; mov word [3], cx
    dec ax                                   ; 48
    db 08Eh, 0DBh                     ; mov ds, bx
    db 0C6h, 006h, 000h, 000h, 04Dh   ; mov byte [0], 0x4d
    db 0C7h, 006h, 001h, 000h, 0FFh, 0FFh ; mov word [1], 0xffff
    db 08Ch, 01Eh, 006h, 000h         ; mov word [6], ds
    db 0A3h, 008h, 000h               ; mov word [8], ax
    db 08Bh, 0C8h                     ; mov cx, ax
    db 02Bh, 0CBh                     ; sub cx, bx
    dec cx                                   ; 49
    db 089h, 00Eh, 003h, 000h         ; mov word [3], cx
    db 01Eh                           ; push ds
    inc bx                                   ; 43
    db 08Eh, 0DBh                     ; mov ds, bx
    db 033h, 0DBh                     ; xor bx, bx
    db 0FFh, 047h, 002h               ; inc word [bx + 2]
    db 0C7h, 047h, 016h, 002h, 000h   ; mov word [bx + 0x16], 2
    db 0C7h, 047h, 004h, 003h, 000h   ; mov word [bx + 4], 3
    db 08Fh, 047h, 006h               ; pop word [bx + 6]
    db 08Fh, 047h, 008h               ; pop word [bx + 8]
    inc ax                                   ; 40
    db 0C3h                           ; ret
    db 0A1h, 020h, 000h               ; mov ax, word [0x20]
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 00Bh                     ; jne 0x2c7e
    db 0B8h, 004h, 000h               ; mov ax, 4
    db 0BEh, 040h, 010h               ; mov si, 0x1040
    db 0E8h, 05Bh, 000h               ; call 0x2cd7
    db 033h, 0C0h                     ; xor ax, ax
    cdq                                      ; 99
    ret                                      ; C3
    push ax                                  ; 50
    push bx                                  ; 53
    mov di, 0xb0                             ; BF B0 00
    mov ax, word [di]                        ; 8B 05
    db 00Ah, 0C0h                     ; or al, al
    db 074h, 029h                     ; je 0x2cb4
    db 080h, 0FCh, 03Ah               ; cmp ah, 0x3a
    db 075h, 010h                     ; jne 0x2ca0
    db 00Ch, 020h                     ; or al, 0x20
    db 02Ch, 061h                     ; sub al, 0x61
    db 08Ah, 0D0h                     ; mov dl, al
    db 0B4h, 00Eh                     ; mov ah, 0xe
    db 0CDh, 021h                     ; int 0x21
    db 080h, 07Dh, 002h, 000h         ; cmp byte [di + 2], 0
    db 074h, 014h                     ; je 0x2cb4
    db 08Bh, 0D7h                     ; mov dx, di
    db 0B4h, 03Bh                     ; mov ah, 0x3b
    db 0CDh, 021h                     ; int 0x21
    db 073h, 00Ch                     ; jae 0x2cb4
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 006h                     ; je 0x2cb4
    db 0B8h, 003h, 000h               ; mov ax, 3
    db 0E8h, 0D6h, 0F9h               ; call 0x268a
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    push ax                                  ; 50
    db 03Dh, 008h, 000h               ; cmp ax, 8
    db 075h, 00Bh                     ; jne 0x2cc8
    db 0BFh, 044h, 002h               ; mov di, 0x244
    db 0BEh, 030h, 000h               ; mov si, 0x30
    db 0E8h, 02Eh, 000h               ; call 0x2cf4
    db 0EBh, 00Ah                     ; jmp 0x2cd2
    db 00Bh, 0C0h                     ; or ax, ax
    db 078h, 003h                     ; js 0x2ccf
    db 0B8h, 002h, 000h               ; mov ax, 2
    db 0E8h, 002h, 000h               ; call 0x2cd4
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0BEh, 030h, 000h               ; mov si, 0x30
    push ax                                  ; 50
    db 0BBh, 050h, 000h               ; mov bx, 0x50
    db 02Bh, 0E3h                     ; sub sp, bx
    db 08Bh, 0FCh                     ; mov di, sp
    db 036h, 088h, 03Dh               ; mov byte ss:[di], bh
    db 016h                           ; push ss
    push ax                                  ; 50
    db 016h                           ; push ss
    push di                                  ; 57
    push bx                                  ; 53
    db 09Ah, 0BCh, 010h, 000h, 000h   ; lcall 0, 0x10bc
    db 0E8h, 005h, 000h               ; call 0x2cf4
    db 083h, 0C4h, 050h               ; add sp, 0x50
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0B9h, 091h, 000h               ; mov cx, 0x91
    db 033h, 0C0h                     ; xor ax, ax
    push ax                                  ; 50
    db 016h                           ; push ss
    push di                                  ; 57
    db 016h                           ; push ss
    push cx                                  ; 51
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0C3h                           ; ret
    db 0BFh, 0FDh, 01Fh               ; mov di, 0x1ffd
    db 0BEh, 008h, 000h               ; mov si, 8
    db 0E8h, 00Eh, 000h               ; call 0x2d1c
    db 074h, 005h                     ; je 0x2d15
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0BEh, 0F1h, 01Fh               ; mov si, 0x1ff1
    db 0C3h                           ; ret
    db 0BFh, 005h, 020h               ; mov di, 0x2005
    db 0BEh, 005h, 000h               ; mov si, 5
    db 09Ah, 0F2h, 027h, 000h, 000h   ; lcall 0, 0x27f2
    db 08Eh, 0D8h                     ; mov ds, ax
    db 08Eh, 01Eh, 02Ch, 000h         ; mov ds, word [0x2c]
    db 00Eh                           ; push cs
    db 007h                           ; pop es
    db 08Bh, 0CEh                     ; mov cx, si
    db 033h, 0F6h                     ; xor si, si
    push cx                                  ; 51
    push di                                  ; 57
    db 0F3h, 0A6h                     ; repe cmpsb byte [si], byte es:[di]
    pop di                                   ; 5F
    pop cx                                   ; 59
    db 074h, 00Ch                     ; je 0x2d41
    db 0ACh                           ; lodsb al, byte [si]
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 0FBh                     ; jne 0x2d35
    db 080h, 03Ch, 000h               ; cmp byte [si], 0
    db 075h, 0EEh                     ; jne 0x2d2d
    db 00Bh, 0C9h                     ; or cx, cx
    db 0C3h                           ; ret
    db 033h, 0C0h                     ; xor ax, ax
    db 0A0h, 0F7h, 000h               ; mov al, byte [0xf7]
    db 0F6h, 046h, 0FFh, 080h         ; test byte [bp - 1], 0x80
    db 074h, 002h                     ; je 0x2d4f
    db 0FEh, 0C4h                     ; inc ah
    db 0C3h                           ; ret
    push di                                  ; 57
    dec cx                                   ; 49
    dec si                                   ; 4E
    dec di                                   ; 4F
    dec sp                                   ; 4C
    inc sp                                   ; 44
    inc cx                                   ; 41
    push ax                                  ; 50
    db 02Eh, 047h                     ; inc di
    push dx                                  ; 52
    inc dx                                   ; 42
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 000h ; cmp byte cs:[0x2d5e], 0
    clc                                      ; F8
    db 074h, 03Fh                     ; je 0x2db0
    db 09Ah, 0A8h, 027h, 000h, 000h   ; lcall 0, 0x27a8
    db 08Eh, 0D8h                     ; mov ds, ax
    db 08Ch, 0D7h                     ; mov di, ss
    db 08Bh, 0F4h                     ; mov si, sp
    db 03Bh, 03Eh, 004h, 000h         ; cmp di, word [4]
    db 075h, 003h                     ; jne 0x2d85
    db 0E9h, 008h, 002h               ; jmp 0x2f8d
    cli                                      ; FA
    db 083h, 03Eh, 002h, 000h, 000h   ; cmp word [2], 0
    db 074h, 024h                     ; je 0x2db1
    db 08Eh, 016h, 004h, 000h         ; mov ss, word [4]
    db 08Bh, 026h, 002h, 000h         ; mov sp, word [2]
    db 0C7h, 006h, 002h, 000h, 000h, 000h ; mov word [2], 0
    sti                                      ; FB
    db 08Bh, 0ECh                     ; mov bp, sp
    db 083h, 0C5h, 010h               ; add bp, 0x10
    db 01Eh                           ; push ds
    db 0E8h, 0E8h, 001h               ; call 0x2f8d
    db 01Fh                           ; pop ds
    db 089h, 026h, 002h, 000h         ; mov word [2], sp
    cli                                      ; FA
    db 08Eh, 0D7h                     ; mov ss, di
    db 08Bh, 0E6h                     ; mov sp, si
    sti                                      ; FB
    db 0C3h                           ; ret
    stc                                      ; F9
    sti                                      ; FB
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 072h, 02Dh, 000h, 000h   ; lcall 0, 0x2d72
    db 08Eh, 0D8h                     ; mov ds, ax
    pop ax                                   ; 58
    pop dx                                   ; 5A
    db 08Ch, 0D7h                     ; mov di, ss
    db 039h, 03Eh, 004h, 000h         ; cmp word [4], di
    db 074h, 02Fh                     ; je 0x2df7
    db 08Bh, 0F4h                     ; mov si, sp
    cli                                      ; FA
    db 083h, 03Eh, 002h, 000h, 000h   ; cmp word [2], 0
    db 074h, 02Ch                     ; je 0x2dfe
    db 08Eh, 016h, 004h, 000h         ; mov ss, word [4]
    db 08Bh, 026h, 002h, 000h         ; mov sp, word [2]
    db 0C7h, 006h, 002h, 000h, 000h, 000h ; mov word [2], 0
    sti                                      ; FB
    db 08Bh, 0ECh                     ; mov bp, sp
    db 083h, 0C5h, 010h               ; add bp, 0x10
    nop                                      ; 90
    db 00Eh                           ; push cs
    db 0E8h, 00Bh, 0E6h               ; call 0x13f6
    db 089h, 026h, 002h, 000h         ; mov word [2], sp
    cli                                      ; FA
    db 08Eh, 0D7h                     ; mov ss, di
    db 08Bh, 0E6h                     ; mov sp, si
    sti                                      ; FB
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    nop                                      ; 90
    db 00Eh                           ; push cs
    db 0E8h, 0FAh, 0E5h               ; call 0x13f6
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    stc                                      ; F9
    db 0EBh, 0F4h                     ; jmp 0x2df5
    push bx                                  ; 53
    db 0BEh, 042h, 004h               ; mov si, 0x442
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 032h                     ; jne 0x2e3b
    db 0E3h, 00Ah                     ; jcxz 0x2e15
    db 0F6h, 006h, 0F7h, 000h, 020h   ; test byte [0xf7], 0x20
    db 074h, 003h                     ; je 0x2e15
    wait                                     ; 9B
    db 0DDh, 034h                     ; fnsave dword [si]
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 075h, 056h                     ; jne 0x2e72
    db 02Eh, 080h, 03Eh, 061h, 02Dh, 000h ; cmp byte cs:[0x2d61], 0
    db 075h, 04Eh                     ; jne 0x2e72
    db 0E8h, 08Eh, 000h               ; call 0x2eb5
    db 074h, 003h                     ; je 0x2e2c
    db 0E8h, 061h, 000h               ; call 0x2e8d
    db 08Eh, 006h, 012h, 000h         ; mov es, word [0x12]
    db 08Ch, 0D8h                     ; mov ax, ds
    db 026h, 039h, 006h, 000h, 000h   ; cmp word es:[0], ax
    db 074h, 036h                     ; je 0x2e6f
    db 0EBh, 037h                     ; jmp 0x2e72
    db 0E3h, 00Eh                     ; jcxz 0x2e4b
    db 0F6h, 006h, 0F7h, 000h, 020h   ; test byte [0xf7], 0x20
    db 074h, 007h                     ; je 0x2e4b
    db 033h, 0C0h                     ; xor ax, ax
    db 0E6h, 0F0h                     ; out 0xf0, al
    wait                                     ; 9B
    db 0DDh, 024h                     ; frstor dword [si]
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 075h, 020h                     ; jne 0x2e72
    db 08Eh, 006h, 012h, 000h         ; mov es, word [0x12]
    db 08Ch, 0D8h                     ; mov ax, ds
    db 026h, 039h, 006h, 000h, 000h   ; cmp word es:[0], ax
    db 075h, 015h                     ; jne 0x2e74
    db 02Eh, 080h, 03Eh, 061h, 02Dh, 000h ; cmp byte cs:[0x2d61], 0
    db 075h, 00Bh                     ; jne 0x2e72
    db 0E8h, 04Bh, 000h               ; call 0x2eb5
    db 074h, 003h                     ; je 0x2e6f
    db 0E8h, 027h, 000h               ; call 0x2e96
    db 0E8h, 0DEh, 000h               ; call 0x2f50
    pop bx                                   ; 5B
    db 0CBh                           ; retf
    pop bx                                   ; 5B
    db 083h, 03Eh, 0A7h, 004h, 000h   ; cmp word [0x4a7], 0
    db 075h, 00Bh                     ; jne 0x2e87
    db 089h, 01Eh, 0A7h, 004h         ; mov word [0x4a7], bx
    db 09Ah, 01Dh, 02Dh, 000h, 000h   ; lcall 0, 0x2d1d
    db 08Bh, 0DAh                     ; mov bx, dx
    db 0CBh                           ; retf
    db 0E8h, 02Ah, 000h               ; call 0x2eb5
    db 074h, 016h                     ; je 0x2ea3
    db 033h, 0C9h                     ; xor cx, cx
    db 0EBh, 00Fh                     ; jmp 0x2ea0
    db 0E8h, 021h, 000h               ; call 0x2eb5
    db 074h, 00Dh                     ; je 0x2ea3
    db 0F6h, 006h, 0A0h, 004h, 003h   ; test byte [0x4a0], 3
    db 074h, 006h                     ; je 0x2ea3
    db 0B9h, 000h, 008h               ; mov cx, 0x800
    db 0E8h, 020h, 000h               ; call 0x2ec3
    db 0E4h, 061h                     ; in al, 0x61
    db 08Ah, 0E0h                     ; mov ah, al
    db 086h, 006h, 0A0h, 004h         ; xchg byte [0x4a0], al
    db 080h, 0E4h, 0FCh               ; and ah, 0xfc
    db 024h, 003h                     ; and al, 3
    db 00Ah, 0C4h                     ; or al, ah
    db 0E6h, 061h                     ; out 0x61, al
    db 0C3h                           ; ret
    db 033h, 0FFh                     ; xor di, di
    db 08Eh, 0C7h                     ; mov es, di
    db 026h, 08Bh, 03Eh, 022h, 000h   ; mov di, word es:[0x22]
    db 03Bh, 03Eh, 0E2h, 001h         ; cmp di, word [0x1e2]
    db 0C3h                           ; ret
    db 0E4h, 021h                     ; in al, 0x21
    db 00Ch, 001h                     ; or al, 1
    db 0EBh, 000h                     ; jmp 0x2ec9
    db 0E6h, 021h                     ; out 0x21, al
    db 08Ah, 0C1h                     ; mov al, cl
    db 0E6h, 040h                     ; out 0x40, al
    db 0EBh, 000h                     ; jmp 0x2ed1
    db 08Ah, 0C5h                     ; mov al, ch
    db 0E6h, 040h                     ; out 0x40, al
    db 0E4h, 021h                     ; in al, 0x21
    db 024h, 07Eh                     ; and al, 0x7e
    db 0EBh, 000h                     ; jmp 0x2edb
    db 0E6h, 021h                     ; out 0x21, al
    db 0C3h                           ; ret
    db 0B0h, 001h                     ; mov al, 1
    db 0E6h, 042h                     ; out 0x42, al
    db 0EBh, 000h                     ; jmp 0x2ee4
    db 0B0h, 000h                     ; mov al, 0
    db 0E6h, 042h                     ; out 0x42, al
    db 0C3h                           ; ret
    db 033h, 0C0h                     ; xor ax, ax
    db 0BBh, 001h, 02Eh               ; mov bx, 0x2e01
    push ax                                  ; 50
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 033h, 0C0h                     ; xor ax, ax
    db 0BBh, 0F6h, 013h               ; mov bx, 0x13f6
    push ax                                  ; 50
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0BBh, 070h, 001h               ; mov bx, 0x170
    db 08Ch, 0DAh                     ; mov dx, ds
    db 08Eh, 0DAh                     ; mov ds, dx
    db 08Bh, 00Fh                     ; mov cx, word [bx]
    db 0E3h, 0CFh                     ; jcxz 0x2edd
    db 08Bh, 077h, 002h               ; mov si, word [bx + 2]
    db 0C4h, 07Fh, 004h               ; les di, [bx + 4]
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 083h, 0C3h, 008h               ; add bx, 8
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    db 0EBh, 0E9h                     ; jmp 0x2f08
    db 033h, 0FFh                     ; xor di, di
    push di                                  ; 57
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0F2h, 02Eh, 000h, 000h   ; lcall 0, 0x2ef2
    push di                                  ; 57
    push di                                  ; 57
    push di                                  ; 57
    db 09Ah, 0FFh, 02Eh, 000h, 000h   ; lcall 0, 0x2eff
    cld                                      ; FC
    db 0BBh, 070h, 001h               ; mov bx, 0x170
    db 08Ch, 0DAh                     ; mov dx, ds
    db 08Eh, 0DAh                     ; mov ds, dx
    db 08Bh, 00Fh                     ; mov cx, word [bx]
    db 0E3h, 0A0h                     ; jcxz 0x2edd
    db 033h, 0FFh                     ; xor di, di
    db 08Eh, 0C7h                     ; mov es, di
    db 08Bh, 07Fh, 002h               ; mov di, word [bx + 2]
    db 0C5h, 077h, 004h               ; lds si, [bx + 4]
    db 083h, 0C3h, 008h               ; add bx, 8
    cli                                      ; FA
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    sti                                      ; FB
    db 0EBh, 0E7h                     ; jmp 0x2f37
    std                                      ; FD
    sti                                      ; FB
    db 0BBh, 070h, 001h               ; mov bx, 0x170
    db 08Ch, 0DAh                     ; mov dx, ds
    db 08Eh, 0DAh                     ; mov ds, dx
    db 08Bh, 00Fh                     ; mov cx, word [bx]
    db 0E3h, 02Dh                     ; jcxz 0x2f8a
    db 033h, 0FFh                     ; xor di, di
    db 08Eh, 0C7h                     ; mov es, di
    db 08Bh, 07Fh, 002h               ; mov di, word [bx + 2]
    db 0C5h, 077h, 004h               ; lds si, [bx + 4]
    db 08Bh, 0C1h                     ; mov ax, cx
    dec ax                                   ; 48
    db 0D1h, 0E0h                     ; shl ax, 1
    db 003h, 0F8h                     ; add di, ax
    db 003h, 0F0h                     ; add si, ax
    db 083h, 0C3h, 008h               ; add bx, 8
    db 0F3h, 0A7h                     ; repe cmpsw word [si], word es:[di]
    db 074h, 0E0h                     ; je 0x2f57
    cli                                      ; FA
    db 08Bh, 044h, 002h               ; mov ax, word [si + 2]
    db 026h, 087h, 045h, 002h         ; xchg word es:[di + 2], ax
    db 089h, 044h, 002h               ; mov word [si + 2], ax
    db 0E3h, 0D3h                     ; jcxz 0x2f57
    db 0F3h, 0A7h                     ; repe cmpsw word [si], word es:[di]
    db 075h, 0F0h                     ; jne 0x2f78
    db 0EBh, 0CDh                     ; jmp 0x2f57
    cli                                      ; FA
    cld                                      ; FC
    db 0C3h                           ; ret
    push si                                  ; 56
    push di                                  ; 57
    db 02Eh, 0C5h, 036h, 0A4h, 034h   ; lds si, cs:[0x34a4]
    db 08Ah, 004h                     ; mov al, byte [si]
    db 02Eh, 0C5h, 036h, 0A8h, 034h   ; lds si, cs:[0x34a8]
    db 00Ah, 004h                     ; or al, byte [si]
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    stc                                      ; F9
    db 075h, 062h                     ; jne 0x3004
    db 0E8h, 01Ch, 008h               ; call 0x37c1
    db 0BEh, 00Fh, 000h               ; mov si, 0xf
    db 0E8h, 05Ch, 000h               ; call 0x3007
    db 072h, 053h                     ; jb 0x3000
    db 0C7h, 006h, 028h, 004h, 001h, 000h ; mov word [0x428], 1
    db 0B0h, 000h                     ; mov al, 0
    db 02Eh, 086h, 006h, 05Eh, 02Dh   ; xchg byte cs:[0x2d5e], al
    push ax                                  ; 50
    cli                                      ; FA
    db 0E8h, 091h, 0FFh               ; call 0x2f50
    db 0E8h, 01Ch, 0FFh               ; call 0x2ede
    db 0E8h, 0C3h, 0FEh               ; call 0x2e88
    sti                                      ; FB
    db 0E8h, 067h, 003h               ; call 0x3330
    db 0E8h, 010h, 003h               ; call 0x32dc
    db 02Eh, 0FEh, 006h, 05Fh, 02Dh   ; inc byte cs:[0x2d5f]
    db 09Ah, 081h, 02Eh, 000h, 000h   ; lcall 0, 0x2e81
    push ax                                  ; 50
    db 08Bh, 0DAh                     ; mov bx, dx
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 0E8h, 036h, 000h               ; call 0x3016
    pop bx                                   ; 5B
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 0FEh, 00Eh, 05Fh, 02Dh   ; dec byte cs:[0x2d5f]
    db 0E8h, 08Ah, 001h               ; call 0x3177
    cli                                      ; FA
    db 0E8h, 0A0h, 0FEh               ; call 0x2e91
    db 0E8h, 05Ch, 0FFh               ; call 0x2f50
    sti                                      ; FB
    pop ax                                   ; 58
    db 02Eh, 0A2h, 05Eh, 02Dh         ; mov byte cs:[0x2d5e], al
    db 0BEh, 012h, 000h               ; mov si, 0x12
    db 0E8h, 007h, 000h               ; call 0x3007
    db 0E8h, 0E1h, 007h               ; call 0x37e4
    clc                                      ; F8
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 0C3h                           ; ret
    db 0C4h, 006h, 036h, 004h         ; les ax, [0x436]
    db 08Ch, 0C2h                     ; mov dx, es
    db 08Eh, 006h, 034h, 004h         ; mov es, word [0x434]
    db 033h, 0FFh                     ; xor di, di
    db 0E9h, 0A6h, 001h               ; jmp 0x31bc
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 006h                           ; push es
    push si                                  ; 56
    db 0E8h, 0EEh, 0E4h               ; call 0x150c
    db 083h, 03Eh, 028h, 004h, 001h   ; cmp word [0x428], 1
    db 074h, 0F6h                     ; je 0x301b
    pop si                                   ; 5E
    db 007h                           ; pop es
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    db 0C3h                           ; ret
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0A3h, 040h, 004h               ; mov word [0x440], ax
    db 08Bh, 036h, 044h, 000h         ; mov si, word [0x44]
    db 08Bh, 03Eh, 04Ah, 000h         ; mov di, word [0x4a]
    db 0F6h, 006h, 040h, 004h, 095h   ; test byte [0x440], 0x95
    db 075h, 02Fh                     ; jne 0x306e
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 000h ; cmp byte cs:[0x2d5e], 0
    db 075h, 051h                     ; jne 0x3098
    db 02Eh, 0FEh, 006h, 05Dh, 02Dh   ; inc byte cs:[0x2d5d]
    db 080h, 03Eh, 041h, 004h, 000h   ; cmp byte [0x441], 0
    db 074h, 062h                     ; je 0x30b5
    push si                                  ; 56
    push di                                  ; 57
    db 09Ah, 0A9h, 00Eh, 000h, 000h   ; lcall 0, 0xea9
    push si                                  ; 56
    db 09Ah, 08Ch, 019h, 000h, 000h   ; lcall 0, 0x198c
    db 0E8h, 0B3h, 0FFh               ; call 0x3016
    db 0E8h, 05Eh, 006h               ; call 0x36c4
    db 0E8h, 08Eh, 0D5h               ; call 0x5f7
    db 0E8h, 0ACh, 002h               ; call 0x3318
    db 0EBh, 044h                     ; jmp 0x30b2
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 000h ; cmp byte cs:[0x2d5e], 0
    db 075h, 022h                     ; jne 0x3098
    db 0BFh, 002h, 000h               ; mov di, 2
    push si                                  ; 56
    push di                                  ; 57
    db 09Ah, 056h, 030h, 000h, 000h   ; lcall 0, 0x3056
    db 039h, 03Eh, 04Ah, 000h         ; cmp word [0x4a], di
    db 075h, 012h                     ; jne 0x3098
    db 02Eh, 0FEh, 006h, 05Fh, 02Dh   ; inc byte cs:[0x2d5f]
    db 0E8h, 088h, 0FFh               ; call 0x3016
    db 02Eh, 0FEh, 00Eh, 05Fh, 02Dh   ; dec byte cs:[0x2d5f]
    db 0E8h, 038h, 001h               ; call 0x31ce
    db 072h, 0EEh                     ; jb 0x3086
    db 0E8h, 0DCh, 000h               ; call 0x3177
    db 0BAh, 0A1h, 004h               ; mov dx, 0x4a1
    db 0B9h, 001h, 000h               ; mov cx, 1
    db 08Bh, 0D9h                     ; mov bx, cx
    db 0B4h, 040h                     ; mov ah, 0x40
    db 0CDh, 021h                     ; int 0x21
    db 033h, 0C0h                     ; xor ax, ax
    db 0A3h, 028h, 004h               ; mov word [0x428], ax
    db 038h, 006h, 041h, 004h         ; cmp byte [0x441], al
    db 074h, 003h                     ; je 0x30b5
    db 0E8h, 034h, 0FEh               ; call 0x2ee9
    db 0B8h, 000h, 00Ch               ; mov ax, 0xc00
    db 0CDh, 021h                     ; int 0x21
    db 033h, 0C0h                     ; xor ax, ax
    db 0F6h, 006h, 0F9h, 000h, 080h   ; test byte [0xf9], 0x80
    db 074h, 003h                     ; je 0x30c6
    db 0A3h, 092h, 001h               ; mov word [0x192], ax
    db 0F6h, 006h, 0F9h, 000h, 040h   ; test byte [0xf9], 0x40
    db 074h, 003h                     ; je 0x30d0
    db 0A3h, 094h, 001h               ; mov word [0x194], ax
    db 0C3h                           ; ret
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0A3h, 040h, 004h               ; mov word [0x440], ax
    db 033h, 0C9h                     ; xor cx, cx
    db 08Eh, 0C1h                     ; mov es, cx
    db 039h, 00Eh, 092h, 001h         ; cmp word [0x192], cx
    db 075h, 009h                     ; jne 0x30e9
    db 026h, 08Bh, 00Eh, 000h, 004h   ; mov cx, word es:[0x400]
    db 089h, 00Eh, 092h, 001h         ; mov word [0x192], cx
    db 083h, 03Eh, 094h, 001h, 000h   ; cmp word [0x194], 0
    db 075h, 009h                     ; jne 0x30f9
    db 026h, 08Bh, 00Eh, 002h, 004h   ; mov cx, word es:[0x402]
    db 089h, 00Eh, 094h, 001h         ; mov word [0x194], cx
    db 0E8h, 0BCh, 008h               ; call 0x39b8
    db 080h, 03Eh, 041h, 004h, 000h   ; cmp byte [0x441], 0
    db 074h, 003h                     ; je 0x3106
    db 0E8h, 019h, 0FEh               ; call 0x2f1f
    db 0F6h, 006h, 040h, 004h, 095h   ; test byte [0x440], 0x95
    db 075h, 00Bh                     ; jne 0x3118
    db 0E8h, 02Fh, 002h               ; call 0x333f
    db 0E8h, 023h, 000h               ; call 0x3136
    db 074h, 0A0h                     ; je 0x30b5
    db 0E9h, 07Dh, 0D6h               ; jmp 0x795
    db 0E8h, 01Bh, 000h               ; call 0x3136
    db 075h, 003h                     ; jne 0x3120
    db 0EBh, 024h                     ; jmp 0x3143
    nop                                      ; 90
    db 0E8h, 020h, 000h               ; call 0x3143
    db 033h, 0C0h                     ; xor ax, ax
    db 087h, 006h, 0EAh, 003h         ; xchg word [0x3ea], ax
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 006h                     ; je 0x3133
    push ax                                  ; 50
    db 09Ah, 086h, 00Ah, 000h, 000h   ; lcall 0, 0xa86
    db 0E9h, 07Ah, 0D0h               ; jmp 0x1b0
    db 080h, 03Eh, 041h, 004h, 000h   ; cmp byte [0x441], 0
    db 074h, 005h                     ; je 0x3142
    db 0C6h, 006h, 020h, 000h, 001h   ; mov byte [0x20], 1
    db 0C3h                           ; ret
    db 02Eh, 0FEh, 00Eh, 05Eh, 02Dh   ; dec byte cs:[0x2d5e]
    db 075h, 02Ch                     ; jne 0x3176
    db 0E8h, 0E3h, 001h               ; call 0x3330
    db 0F6h, 006h, 0F9h, 000h, 010h   ; test byte [0xf9], 0x10
    db 075h, 008h                     ; jne 0x315c
    db 0BEh, 009h, 000h               ; mov si, 9
    db 08Bh, 0C6h                     ; mov ax, si
    db 0E8h, 060h, 000h               ; call 0x31bc
    db 0E8h, 07Dh, 001h               ; call 0x32dc
    db 033h, 0C0h                     ; xor ax, ax
    db 0A3h, 02Ch, 004h               ; mov word [0x42c], ax
    db 02Eh, 038h, 006h, 05Fh, 02Dh   ; cmp byte cs:[0x2d5f], al
    db 075h, 00Bh                     ; jne 0x3176
    db 02Eh, 087h, 006h, 064h, 02Dh   ; xchg word cs:[0x2d64], ax
    push ax                                  ; 50
    db 09Ah, 02Fh, 031h, 000h, 000h   ; lcall 0, 0x312f
    db 0C3h                           ; ret
    db 02Eh, 0FEh, 006h, 05Eh, 02Dh   ; inc byte cs:[0x2d5e]
    db 02Eh, 080h, 03Eh, 05Eh, 02Dh, 001h ; cmp byte cs:[0x2d5e], 1
    db 075h, 047h                     ; jne 0x31cb
    db 0E8h, 0BFh, 001h               ; call 0x3346
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0E8h, 08Ch, 00Bh               ; call 0x3d1b
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0E8h, 08Ah, 001h               ; call 0x331e
    db 08Bh, 00Eh, 034h, 004h         ; mov cx, word [0x434]
    db 0E3h, 009h                     ; jcxz 0x31a3
    db 0E8h, 0E8h, 001h               ; call 0x3385
    db 0E8h, 009h, 002h               ; call 0x33a9
    db 0B9h, 001h, 000h               ; mov cx, 1
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0BEh, 003h, 000h               ; mov si, 3
    db 08Bh, 00Eh, 02Ch, 004h         ; mov cx, word [0x42c]
    db 0E3h, 019h                     ; jcxz 0x31cb
    db 0C4h, 006h, 02Eh, 004h         ; les ax, [0x42e]
    db 08Ch, 0C2h                     ; mov dx, es
    db 08Eh, 0C1h                     ; mov es, cx
    db 033h, 0FFh                     ; xor di, di
    db 02Eh, 089h, 036h, 062h, 02Dh   ; mov word cs:[0x2d62], si
    db 02Eh, 08Eh, 01Eh, 064h, 02Dh   ; mov ds, word cs:[0x2d64]
    db 02Eh, 0FFh, 01Eh, 062h, 02Dh   ; lcall cs:[0x2d62]
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 0A0h, 0F9h, 000h               ; mov al, byte [0xf9]
    db 0E8h, 068h, 00Bh               ; call 0x3d3c
    db 073h, 00Ah                     ; jae 0x31e0
    db 0C7h, 006h, 028h, 004h, 001h, 000h ; mov word [0x428], 1
    db 0E8h, 0D8h, 0FAh               ; call 0x2cb7
    stc                                      ; F9
    db 0C3h                           ; ret
    db 033h, 0C0h                     ; xor ax, ax
    db 02Eh, 039h, 006h, 064h, 02Dh   ; cmp word cs:[0x2d64], ax
    db 075h, 0E1h                     ; jne 0x31cb
    db 0A3h, 02Ch, 004h               ; mov word [0x42c], ax
    db 0BAh, 050h, 02Dh               ; mov dx, 0x2d50
    db 081h, 0ECh, 080h, 000h         ; sub sp, 0x80
    db 08Bh, 0CCh                     ; mov cx, sp
    db 0B8h, 000h, 028h               ; mov ax, 0x2800
    db 00Eh                           ; push cs
    push dx                                  ; 52
    db 016h                           ; push ss
    push cx                                  ; 51
    push ax                                  ; 50
    db 09Ah, 00Ch, 02Bh, 000h, 000h   ; lcall 0, 0x2b0c
    db 081h, 0C4h, 080h, 000h         ; add sp, 0x80
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    stc                                      ; F9
    db 074h, 042h                     ; je 0x324f
    db 033h, 0C9h                     ; xor cx, cx
    db 033h, 0D2h                     ; xor dx, dx
    db 0B8h, 002h, 042h               ; mov ax, 0x4202
    db 0CDh, 021h                     ; int 0x21
    db 072h, 037h                     ; jb 0x324f
    push dx                                  ; 52
    push ax                                  ; 50
    db 0E8h, 089h, 0F9h               ; call 0x2ba6
    db 08Bh, 0F0h                     ; mov si, ax
    pop ax                                   ; 58
    pop dx                                   ; 5A
    stc                                      ; F9
    db 074h, 02Bh                     ; je 0x324f
    db 02Eh, 089h, 036h, 064h, 02Dh   ; mov word cs:[0x2d64], si
    push bx                                  ; 53
    db 0E8h, 092h, 0F9h               ; call 0x2bbf
    db 02Eh, 089h, 01Eh, 066h, 02Dh   ; mov word cs:[0x2d66], bx
    pop bx                                   ; 5B
    db 033h, 0C9h                     ; xor cx, cx
    db 033h, 0D2h                     ; xor dx, dx
    db 0B8h, 000h, 042h               ; mov ax, 0x4200
    db 0CDh, 021h                     ; int 0x21
    db 072h, 011h                     ; jb 0x324f
    db 01Eh                           ; push ds
    db 08Eh, 0DEh                     ; mov ds, si
    db 0B9h, 0FFh, 0FFh               ; mov cx, 0xffff
    db 033h, 0D2h                     ; xor dx, dx
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0CDh, 021h                     ; int 0x21
    db 0B4h, 03Eh                     ; mov ah, 0x3e
    db 0CDh, 021h                     ; int 0x21
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 0B0h, 001h                     ; mov al, 1
    db 0F6h, 006h, 0F7h, 000h, 095h   ; test byte [0xf7], 0x95
    db 074h, 022h                     ; je 0x327b
    db 0E8h, 068h, 004h               ; call 0x36c4
    db 073h, 008h                     ; jae 0x3266
    db 0BEh, 030h, 010h               ; mov si, 0x1030
    db 0E8h, 073h, 0FAh               ; call 0x2cd7
    db 0EBh, 013h                     ; jmp 0x3279
    db 0B8h, 001h, 004h               ; mov ax, 0x401
    db 0BBh, 000h, 080h               ; mov bx, 0x8000
    db 0FFh, 036h, 044h, 000h         ; push word [0x44]
    push ax                                  ; 50
    push bx                                  ; 53
    push bx                                  ; 53
    push bx                                  ; 53
    db 09Ah, 07Dh, 010h, 000h, 000h   ; lcall 0, 0x107d
    db 033h, 0C0h                     ; xor ax, ax
    db 099h                           ; cdq
    db 0C3h                           ; ret
    push ax                                  ; 50
    db 083h, 03Eh, 02Ch, 004h, 000h   ; cmp word [0x42c], 0
    db 075h, 020h                     ; jne 0x32a5
    db 0A8h, 008h                     ; test al, 8
    db 075h, 01Ch                     ; jne 0x32a5
    db 0A8h, 002h                     ; test al, 2
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 074h, 001h                     ; je 0x3291
    inc ax                                   ; 40
    db 0BEh, 000h, 000h               ; mov si, 0
    db 0E8h, 025h, 0FFh               ; call 0x31bc
    db 0A3h, 02Eh, 004h               ; mov word [0x42e], ax
    db 089h, 016h, 030h, 004h         ; mov word [0x430], dx
    db 0E8h, 01Eh, 0F9h               ; call 0x2bbf
    db 089h, 01Eh, 032h, 004h         ; mov word [0x432], bx
    pop ax                                   ; 58
    db 00Ah, 0E4h                     ; or ah, ah
    db 074h, 031h                     ; je 0x32db
    db 0A8h, 014h                     ; test al, 0x14
    db 075h, 02Dh                     ; jne 0x32db
    db 083h, 03Eh, 034h, 004h, 000h   ; cmp word [0x434], 0
    db 075h, 026h                     ; jne 0x32db
    db 0E8h, 0F5h, 004h               ; call 0x37ad
    db 0A3h, 03Eh, 004h               ; mov word [0x43e], ax
    db 0A1h, 0F5h, 000h               ; mov ax, word [0xf5]
    db 03Dh, 010h, 000h               ; cmp ax, 0x10
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 072h, 001h                     ; jb 0x32c7
    inc ax                                   ; 40
    db 0BEh, 00Ch, 000h               ; mov si, 0xc
    db 0E8h, 0EFh, 0FEh               ; call 0x31bc
    db 0A3h, 036h, 004h               ; mov word [0x436], ax
    db 089h, 016h, 038h, 004h         ; mov word [0x438], dx
    db 0E8h, 0E8h, 0F8h               ; call 0x2bbf
    db 089h, 01Eh, 03Ah, 004h         ; mov word [0x43a], bx
    db 0C3h                           ; ret
    db 02Eh, 0FEh, 006h, 061h, 02Dh   ; inc byte cs:[0x2d61]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 02Eh, 080h, 03Eh, 05Dh, 02Dh, 000h ; cmp byte cs:[0x2d5d], 0
    db 074h, 003h                     ; je 0x32f6
    db 0E8h, 022h, 000h               ; call 0x3318
    db 02Eh, 0FEh, 00Eh, 061h, 02Dh   ; dec byte cs:[0x2d61]
    db 0E8h, 0CFh, 000h               ; call 0x33cd
    db 033h, 0FFh                     ; xor di, di
    db 087h, 03Eh, 0A2h, 004h         ; xchg word [0x4a2], di
    db 083h, 0FFh, 001h               ; cmp di, 1
    db 072h, 0D2h                     ; jb 0x32db
    db 077h, 006h                     ; ja 0x3311
    db 0B8h, 009h, 000h               ; mov ax, 9
    db 0E9h, 0C3h, 0F9h               ; jmp 0x2cd4
    db 08Bh, 036h, 0A4h, 004h         ; mov si, word [0x4a4]
    db 0E9h, 01Ch, 0D7h               ; jmp 0xa34
    db 0E8h, 046h, 000h               ; call 0x3361
    db 0E8h, 067h, 000h               ; call 0x3385
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 001h ; test byte cs:[0x2d60], 1
    db 075h, 009h                     ; jne 0x332f
    db 0E8h, 0A5h, 006h               ; call 0x39ce
    db 02Eh, 080h, 00Eh, 060h, 02Dh, 001h ; or byte cs:[0x2d60], 1
    db 0C3h                           ; ret
    db 0BEh, 006h, 000h               ; mov si, 6
    db 083h, 03Eh, 02Ch, 004h, 000h   ; cmp word [0x42c], 0
    db 074h, 00Ch                     ; je 0x3346
    db 0E8h, 07Fh, 0FEh               ; call 0x31bc
    db 0EBh, 007h                     ; jmp 0x3346
    db 02Eh, 0FEh, 00Eh, 05Dh, 02Dh   ; dec byte cs:[0x2d5d]
    db 075h, 01Ah                     ; jne 0x3360
    db 0E8h, 02Ah, 000h               ; call 0x3373
    db 0E8h, 04Bh, 000h               ; call 0x3397
    db 0E8h, 06Ch, 000h               ; call 0x33bb
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 001h ; test byte cs:[0x2d60], 1
    db 074h, 009h                     ; je 0x3360
    db 0E8h, 098h, 006h               ; call 0x39f2
    db 02Eh, 080h, 026h, 060h, 02Dh, 0FEh ; and byte cs:[0x2d60], 0xfe
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 075h, 009h                     ; jne 0x3372
    db 0E8h, 0E1h, 007h               ; call 0x3b4d
    db 02Eh, 080h, 00Eh, 060h, 02Dh, 004h ; or byte cs:[0x2d60], 4
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 004h ; test byte cs:[0x2d60], 4
    db 074h, 009h                     ; je 0x3384
    db 0E8h, 01Bh, 008h               ; call 0x3b99
    db 02Eh, 080h, 026h, 060h, 02Dh, 0FBh ; and byte cs:[0x2d60], 0xfb
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 002h ; test byte cs:[0x2d60], 2
    db 075h, 009h                     ; jne 0x3396
    db 0E8h, 084h, 006h               ; call 0x3a14
    db 02Eh, 080h, 00Eh, 060h, 02Dh, 002h ; or byte cs:[0x2d60], 2
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 002h ; test byte cs:[0x2d60], 2
    db 074h, 009h                     ; je 0x33a8
    db 0E8h, 08Ch, 006h               ; call 0x3a2e
    db 02Eh, 080h, 026h, 060h, 02Dh, 0FDh ; and byte cs:[0x2d60], 0xfd
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 008h ; test byte cs:[0x2d60], 8
    db 075h, 009h                     ; jne 0x33ba
    db 0E8h, 0EEh, 006h               ; call 0x3aa2
    db 02Eh, 080h, 00Eh, 060h, 02Dh, 008h ; or byte cs:[0x2d60], 8
    db 0C3h                           ; ret
    db 02Eh, 0F6h, 006h, 060h, 02Dh, 008h ; test byte cs:[0x2d60], 8
    db 074h, 009h                     ; je 0x33cc
    db 0E8h, 0F6h, 006h               ; call 0x3abc
    db 02Eh, 080h, 026h, 060h, 02Dh, 0F7h ; and byte cs:[0x2d60], 0xf7
    db 0C3h                           ; ret
    db 08Bh, 00Eh, 02Ch, 004h         ; mov cx, word [0x42c]
    db 0E3h, 0D5h                     ; jcxz 0x33a8
    db 08Eh, 0C1h                     ; mov es, cx
    db 026h, 08Bh, 00Eh, 002h, 000h   ; mov cx, word es:[2]
    db 0E3h, 0CCh                     ; jcxz 0x33a8
    db 0C7h, 006h, 0A2h, 004h, 000h, 000h ; mov word [0x4a2], 0
    db 026h, 08Bh, 036h, 000h, 000h   ; mov si, word es:[0]
    dec si                                   ; 4E
    db 074h, 04Dh                     ; je 0x3437
    db 026h, 0A1h, 004h, 000h         ; mov ax, word es:[4]
    db 026h, 08Bh, 01Eh, 006h, 000h   ; mov bx, word es:[6]
    db 026h, 08Bh, 00Eh, 008h, 000h   ; mov cx, word es:[8]
    db 026h, 08Bh, 016h, 00Ah, 000h   ; mov dx, word es:[0xa]
    db 0BFh, 00Ch, 000h               ; mov di, 0xc
    db 083h, 0FEh, 002h               ; cmp si, 2
    db 075h, 003h                     ; jne 0x3408
    db 0BFh, 010h, 000h               ; mov di, 0x10
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 006h                           ; push es
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 04Fh                     ; je 0x3466
    db 08Bh, 0F8h                     ; mov di, ax
    db 083h, 0FEh, 002h               ; cmp si, 2
    db 0BEh, 002h, 000h               ; mov si, 2
    db 075h, 03Bh                     ; jne 0x345c
    db 08Eh, 006h, 02Ch, 004h         ; mov es, word [0x42c]
    push di                                  ; 57
    db 026h, 0FFh, 036h, 00Ch, 000h   ; push word es:[0xc]
    db 026h, 0FFh, 036h, 00Eh, 000h   ; push word es:[0xe]
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0EBh, 025h                     ; jmp 0x345c
    db 08Bh, 0C1h                     ; mov ax, cx
    inc ax                                   ; 40
    db 0E8h, 020h, 0D7h               ; call 0xb5d
    db 074h, 027h                     ; je 0x3466
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Bh, 0F8h                     ; mov di, ax
    db 08Eh, 01Eh, 02Ch, 004h         ; mov ds, word [0x42c]
    db 0BEh, 002h, 000h               ; mov si, 2
    db 0ADh                           ; lodsw ax, word [si]
    db 08Bh, 0C8h                     ; mov cx, ax
    db 0F3h, 0A4h                     ; rep movsb byte es:[di], byte [si]
    db 026h, 0C6h, 005h, 000h         ; mov byte es:[di], 0
    db 0E8h, 0F9h, 0D6h               ; call 0xb4f
    db 0E8h, 0E9h, 0D6h               ; call 0xb42
    db 0BEh, 001h, 000h               ; mov si, 1
    db 089h, 036h, 0A4h, 004h         ; mov word [0x4a4], si
    db 089h, 03Eh, 0A2h, 004h         ; mov word [0x4a2], di
    db 0EBh, 004h                     ; jmp 0x346a
    db 0FFh, 006h, 0A2h, 004h         ; inc word [0x4a2]
    db 08Eh, 006h, 02Ch, 004h         ; mov es, word [0x42c]
    db 026h, 0C7h, 006h, 002h, 000h, 000h, 000h ; mov word es:[2], 0
    db 0C3h                           ; ret
    db 09Ah, 0D2h, 02Fh, 000h, 000h   ; lcall 0, 0x2fd2
    db 08Bh, 0DAh                     ; mov bx, dx
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 0E8h, 0ACh, 0FEh               ; call 0x3330
    db 0F6h, 006h, 040h, 004h, 095h   ; test byte [0x440], 0x95
    db 074h, 00Ah                     ; je 0x3495
    db 09Ah, 0E2h, 032h, 000h, 000h   ; lcall 0, 0x32e2
    db 09Ah, 0E7h, 032h, 000h, 000h   ; lcall 0, 0x32e7
    db 0E9h, 0F5h, 0D9h               ; jmp 0xe8d
    aas                                      ; 3F
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 04Bh, 045h               ; add byte [bp + di + 0x45], cl
    push dx                                  ; 52
    dec si                                   ; 4E
    inc bp                                   ; 45
    dec sp                                   ; 4C
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
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 0A3h, 012h, 000h         ; add byte [bp + di + 0x12], ah
    db 08Eh, 0C0h                     ; mov es, ax
    db 026h, 08Ch, 016h, 000h, 000h   ; mov word es:[0], ss
    db 026h, 089h, 01Eh, 002h, 000h   ; mov word es:[2], bx
    db 08Bh, 0D8h                     ; mov bx, ax
    db 026h, 0FEh, 006h, 008h, 000h   ; inc byte es:[8]
    db 0E8h, 05Ah, 004h               ; call 0x396a
    db 0E3h, 005h                     ; jcxz 0x3517
    db 026h, 0FEh, 006h, 004h, 000h   ; inc byte es:[4]
    db 083h, 0C3h, 001h               ; add bx, 1
    db 083h, 03Eh, 03Ah, 004h, 000h   ; cmp word [0x43a], 0
    db 074h, 00Dh                     ; je 0x352e
    db 026h, 0FEh, 006h, 005h, 000h   ; inc byte es:[5]
    db 089h, 01Eh, 034h, 004h         ; mov word [0x434], bx
    db 003h, 01Eh, 03Ah, 004h         ; add bx, word [0x43a]
    db 083h, 03Eh, 032h, 004h, 000h   ; cmp word [0x432], 0
    db 074h, 00Dh                     ; je 0x3542
    db 026h, 0FEh, 006h, 006h, 000h   ; inc byte es:[6]
    db 089h, 01Eh, 02Ch, 004h         ; mov word [0x42c], bx
    db 003h, 01Eh, 032h, 004h         ; add bx, word [0x432]
    db 083h, 03Eh, 03Eh, 004h, 000h   ; cmp word [0x43e], 0
    db 074h, 00Dh                     ; je 0x3556
    db 026h, 0FEh, 006h, 007h, 000h   ; inc byte es:[7]
    db 089h, 01Eh, 03Ch, 004h         ; mov word [0x43c], bx
    db 003h, 01Eh, 03Eh, 004h         ; add bx, word [0x43e]
    dec ax                                   ; 48
    db 08Eh, 0C0h                     ; mov es, ax
    db 0C3h                           ; ret
    push ax                                  ; 50
    push ax                                  ; 50
    db 09Ah, 0AFh, 00Ah, 000h, 000h   ; lcall 0, 0xaaf
    db 007h                           ; pop es
    db 08Bh, 0D8h                     ; mov bx, ax
    db 033h, 0C0h                     ; xor ax, ax
    cld                                      ; FC
    db 033h, 0FFh                     ; xor di, di
    db 00Bh, 0D2h                     ; or dx, dx
    db 074h, 010h                     ; je 0x357d
    db 0B9h, 000h, 080h               ; mov cx, 0x8000
    db 0F3h, 0ABh                     ; rep stosw word es:[di], ax
    db 08Ch, 0C1h                     ; mov cx, es
    db 081h, 0C1h, 000h, 010h         ; add cx, 0x1000
    db 08Eh, 0C1h                     ; mov es, cx
    dec dx                                   ; 4A
    db 0EBh, 0EAh                     ; jmp 0x3567
    db 08Bh, 0CBh                     ; mov cx, bx
    db 0F3h, 0AAh                     ; rep stosb byte es:[di], al
    db 0C3h                           ; ret
    db 08Ch, 0C3h                     ; mov bx, es
    db 08Eh, 006h, 012h, 000h         ; mov es, word [0x12]
    db 08Ch, 0C0h                     ; mov ax, es
    db 02Bh, 0D8h                     ; sub bx, ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0A3h, 012h, 000h               ; mov word [0x12], ax
    db 026h, 0A3h, 000h, 000h         ; mov word es:[0], ax
    db 026h, 038h, 006h, 005h, 000h   ; cmp byte es:[5], al
    db 074h, 003h                     ; je 0x359f
    db 0A3h, 034h, 004h               ; mov word [0x434], ax
    db 026h, 038h, 006h, 007h, 000h   ; cmp byte es:[7], al
    db 074h, 003h                     ; je 0x35a9
    db 0A3h, 03Ch, 004h               ; mov word [0x43c], ax
    db 026h, 038h, 006h, 006h, 000h   ; cmp byte es:[6], al
    db 074h, 019h                     ; je 0x35c9
    db 006h                           ; push es
    db 026h, 080h, 03Eh, 008h, 000h, 001h ; cmp byte es:[8], 1
    db 077h, 00Ch                     ; ja 0x35c5
    db 0E8h, 01Ah, 0F6h               ; call 0x2bd6
    db 006h                           ; push es
    push di                                  ; 57
    push si                                  ; 56
    push ax                                  ; 50
    db 09Ah, 049h, 027h, 000h, 000h   ; lcall 0, 0x2749
    db 0E8h, 005h, 0FEh               ; call 0x33cd
    db 007h                           ; pop es
    db 026h, 0FEh, 00Eh, 008h, 000h   ; dec byte es:[8]
    db 075h, 006h                     ; jne 0x35d6
    db 006h                           ; push es
    db 09Ah, 072h, 031h, 000h, 000h   ; lcall 0, 0x3172
    db 0C3h                           ; ret
    db 02Eh, 080h, 03Eh, 0B3h, 034h, 041h ; cmp byte cs:[0x34b3], 0x41
    db 072h, 0F7h                     ; jb 0x35d6
    db 0E8h, 095h, 000h               ; call 0x3677
    db 072h, 0F2h                     ; jb 0x35d6
    db 09Ah, 0B8h, 02Dh, 000h, 000h   ; lcall 0, 0x2db8
    db 033h, 0DBh                     ; xor bx, bx
    db 033h, 0F6h                     ; xor si, si
    db 08Eh, 0C2h                     ; mov es, dx
    db 08Ch, 0D1h                     ; mov cx, ss
    db 026h, 08Bh, 016h, 004h, 000h   ; mov dx, word es:[4]
    db 03Bh, 0D1h                     ; cmp dx, cx
    db 074h, 03Dh                     ; je 0x3637
    db 08Eh, 0DAh                     ; mov ds, dx
    db 081h, 03Eh, 010h, 000h, 043h, 050h ; cmp word [0x10], 0x5043
    db 075h, 033h                     ; jne 0x3637
    db 08Bh, 00Eh, 012h, 000h         ; mov cx, word [0x12]
    db 0E3h, 02Dh                     ; jcxz 0x3637
    db 08Eh, 0D9h                     ; mov ds, cx
    db 08Bh, 00Eh, 000h, 000h         ; mov cx, word [0]
    db 0E3h, 00Bh                     ; jcxz 0x361d
    db 03Bh, 0CAh                     ; cmp cx, dx
    db 075h, 01Bh                     ; jne 0x3631
    db 080h, 03Eh, 004h, 000h, 000h   ; cmp byte [4], 0
    db 074h, 014h                     ; je 0x3631
    db 08Ch, 0D8h                     ; mov ax, ds
    dec ax                                   ; 48
    db 08Eh, 0D8h                     ; mov ds, ax
    inc ax                                   ; 40
    db 03Bh, 01Eh, 003h, 000h         ; cmp bx, word [3]
    db 073h, 006h                     ; jae 0x362f
    db 08Bh, 01Eh, 003h, 000h         ; mov bx, word [3]
    db 08Bh, 0F0h                     ; mov si, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 08Bh, 00Eh, 002h, 000h         ; mov cx, word [2]
    db 0EBh, 0D1h                     ; jmp 0x3608
    db 026h, 08Bh, 016h, 000h, 000h   ; mov dx, word es:[0]
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 0ADh                     ; jne 0x35ed
    db 00Bh, 0F6h                     ; or si, si
    stc                                      ; F9
    db 074h, 02Fh                     ; je 0x3674
    db 08Eh, 0DEh                     ; mov ds, si
    db 03Bh, 0DFh                     ; cmp bx, di
    db 072h, 029h                     ; jb 0x3674
    push bx                                  ; 53
    db 0E8h, 032h, 003h               ; call 0x3981
    pop bx                                   ; 5B
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 004h                     ; jne 0x3658
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 072h, 01Ch                     ; jb 0x3674
    db 08Bh, 01Eh, 000h, 000h         ; mov bx, word [0]
    db 00Bh, 0DBh                     ; or bx, bx
    db 074h, 005h                     ; je 0x3665
    db 0E8h, 0A2h, 000h               ; call 0x3705
    db 072h, 00Fh                     ; jb 0x3674
    db 0FFh, 036h, 008h, 000h         ; push word [8]
    db 08Ch, 0D8h                     ; mov ax, ds
    db 0E8h, 0ECh, 0FEh               ; call 0x355a
    pop ax                                   ; 58
    db 0A2h, 008h, 000h               ; mov byte [8], al
    db 08Ch, 0D8h                     ; mov ax, ds
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    clc                                      ; F8
    db 0F6h, 006h, 0F7h, 000h, 010h   ; test byte [0xf7], 0x10
    db 075h, 008h                     ; jne 0x3687
    db 0F6h, 006h, 0F9h, 000h, 0C0h   ; test byte [0xf9], 0xc0
    db 074h, 001h                     ; je 0x3687
    stc                                      ; F9
    db 0C3h                           ; ret
    db 036h, 083h, 03Eh, 0A7h, 004h, 000h ; cmp word ss:[0x4a7], 0
    db 074h, 0F7h                     ; je 0x3687
    push ax                                  ; 50
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    push si                                  ; 56
    push di                                  ; 57
    db 006h                           ; push es
    db 01Eh                           ; push ds
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0E8h, 0C5h, 0D1h               ; call 0x862
    db 080h, 03Eh, 023h, 000h, 000h   ; cmp byte [0x23], 0
    db 075h, 005h                     ; jne 0x36a9
    db 0E8h, 065h, 0DEh               ; call 0x150c
    db 0EBh, 0F4h                     ; jmp 0x369d
    db 0E8h, 018h, 000h               ; call 0x36c4
    db 0E8h, 0A1h, 0F8h               ; call 0x2f50
    sti                                      ; FB
    db 033h, 0DBh                     ; xor bx, bx
    db 036h, 087h, 01Eh, 0A7h, 004h   ; xchg word ss:[0x4a7], bx
    db 0B4h, 050h                     ; mov ah, 0x50
    db 0CDh, 021h                     ; int 0x21
    db 01Fh                           ; pop ds
    db 007h                           ; pop es
    pop di                                   ; 5F
    pop si                                   ; 5E
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0C3h                           ; ret
    db 0FEh, 006h, 0A6h, 004h         ; inc byte [0x4a6]
    db 08Eh, 01Eh, 012h, 000h         ; mov ds, word [0x12]
    db 08Bh, 01Eh, 000h, 000h         ; mov bx, word [0]
    db 08Ch, 0D0h                     ; mov ax, ss
    db 03Bh, 0C3h                     ; cmp ax, bx
    db 074h, 01Eh                     ; je 0x36f4
    db 00Bh, 0DBh                     ; or bx, bx
    db 074h, 008h                     ; je 0x36e2
    db 0E8h, 028h, 000h               ; call 0x3705
    db 0B8h, 005h, 000h               ; mov ax, 5
    db 072h, 01Ch                     ; jb 0x36fe
    db 08Ch, 0D3h                     ; mov bx, ss
    db 0FFh, 036h, 008h, 000h         ; push word [8]
    db 0E8h, 07Ah, 000h               ; call 0x3765
    pop ax                                   ; 58
    db 0A2h, 008h, 000h               ; mov byte [8], al
    db 0B8h, 00Ah, 000h               ; mov ax, 0xa
    db 072h, 00Ah                     ; jb 0x36fe
    db 08Bh, 00Eh, 002h, 000h         ; mov cx, word [2]
    db 0E3h, 004h                     ; jcxz 0x36fe
    db 08Eh, 0D9h                     ; mov ds, cx
    db 0EBh, 0CEh                     ; jmp 0x36cc
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0FEh, 00Eh, 0A6h, 004h         ; dec byte [0x4a6]
    db 0C3h                           ; ret
    db 08Ch, 0DEh                     ; mov si, ds
    db 033h, 0DEh                     ; xor bx, si
    push bx                                  ; 53
    db 0BEh, 000h, 03Ch               ; mov si, 0x3c00
    db 0E8h, 06Bh, 000h               ; call 0x377b
    db 0B4h, 040h                     ; mov ah, 0x40
    db 0E8h, 008h, 000h               ; call 0x371d
    pop bx                                   ; 5B
    db 073h, 0ECh                     ; jae 0x3704
    db 0E8h, 05Dh, 000h               ; call 0x3778
    stc                                      ; F9
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 083h, 0FBh, 0FFh               ; cmp bx, -1
    stc                                      ; F9
    db 074h, 03Fh                     ; je 0x3763
    push ax                                  ; 50
    push bx                                  ; 53
    db 01Eh                           ; push ds
    db 09Ah, 05Dh, 035h, 000h, 000h   ; lcall 0, 0x355d
    db 08Bh, 0FAh                     ; mov di, dx
    db 08Bh, 0F0h                     ; mov si, ax
    pop bx                                   ; 5B
    pop ax                                   ; 58
    db 0B9h, 000h, 0F0h               ; mov cx, 0xf000
    db 00Bh, 0FFh                     ; or di, di
    db 075h, 006h                     ; jne 0x373f
    db 03Bh, 0F1h                     ; cmp si, cx
    db 073h, 002h                     ; jae 0x373f
    db 08Bh, 0CEh                     ; mov cx, si
    db 033h, 0D2h                     ; xor dx, dx
    push ax                                  ; 50
    db 0CDh, 021h                     ; int 0x21
    db 03Bh, 0C1h                     ; cmp ax, cx
    pop ax                                   ; 58
    stc                                      ; F9
    db 075h, 013h                     ; jne 0x375d
    db 08Ch, 0DAh                     ; mov dx, ds
    db 081h, 0C2h, 000h, 00Fh         ; add dx, 0xf00
    db 08Eh, 0DAh                     ; mov ds, dx
    db 02Bh, 0F1h                     ; sub si, cx
    db 083h, 0DFh, 000h               ; sbb di, 0
    db 08Bh, 0D6h                     ; mov dx, si
    db 00Bh, 0D7h                     ; or dx, di
    db 075h, 0D5h                     ; jne 0x3732
    pushf                                    ; 9C
    db 0B4h, 03Eh                     ; mov ah, 0x3e
    db 0CDh, 021h                     ; int 0x21
    popf                                     ; 9D
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 08Ch, 0DEh                     ; mov si, ds
    db 033h, 0DEh                     ; xor bx, si
    push bx                                  ; 53
    db 0BEh, 000h, 03Dh               ; mov si, 0x3d00
    db 0E8h, 00Bh, 000h               ; call 0x377b
    db 0B4h, 03Fh                     ; mov ah, 0x3f
    db 0E8h, 0A8h, 0FFh               ; call 0x371d
    pop bx                                   ; 5B
    db 072h, 034h                     ; jb 0x37ac
    db 0BEh, 000h, 041h               ; mov si, 0x4100
    db 01Eh                           ; push ds
    push di                                  ; 57
    db 00Eh                           ; push cs
    db 007h                           ; pop es
    db 02Eh, 08Bh, 03Eh, 0F3h, 034h   ; mov di, word cs:[0x34f3]
    db 0B9h, 004h, 000h               ; mov cx, 4
    db 08Bh, 0C3h                     ; mov ax, bx
    db 024h, 00Fh                     ; and al, 0xf
    db 004h, 041h                     ; add al, 0x41
    db 0AAh                           ; stosb byte es:[di], al
    db 0D1h, 0EBh                     ; shr bx, 1
    db 0D1h, 0EBh                     ; shr bx, 1
    db 0D1h, 0EBh                     ; shr bx, 1
    db 0D1h, 0EBh                     ; shr bx, 1
    db 0E2h, 0EFh                     ; loop 0x3787
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0BAh, 0B3h, 034h               ; mov dx, 0x34b3
    db 033h, 0C9h                     ; xor cx, cx
    db 08Bh, 0C6h                     ; mov ax, si
    db 0CDh, 021h                     ; int 0x21
    db 073h, 003h                     ; jae 0x37a8
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 08Bh, 0D8h                     ; mov bx, ax
    pop di                                   ; 5F
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 02Eh, 0A1h, 0F5h, 034h         ; mov ax, word cs:[0x34f5]
    db 00Bh, 0C0h                     ; or ax, ax
    db 075h, 004h                     ; jne 0x37b9
    db 02Eh, 0A1h, 09Ch, 034h         ; mov ax, word cs:[0x349c]
    db 005h, 00Fh, 000h               ; add ax, 0xf
    db 0B1h, 004h                     ; mov cl, 4
    db 0D3h, 0E8h                     ; shr ax, cl
    db 0C3h                           ; ret
    db 08Bh, 00Eh, 03Ch, 004h         ; mov cx, word [0x43c]
    db 0E3h, 01Ch                     ; jcxz 0x37e3
    db 08Eh, 0C1h                     ; mov es, cx
    db 02Eh, 08Eh, 01Eh, 09Eh, 034h   ; mov ds, word cs:[0x349e]
    db 02Eh, 08Bh, 016h, 0F5h, 034h   ; mov dx, word cs:[0x34f5]
    db 00Bh, 0D2h                     ; or dx, dx
    db 074h, 005h                     ; je 0x37dc
    db 0B8h, 002h, 000h               ; mov ax, 2
    db 0CDh, 033h                     ; int 0x33
    db 0E8h, 04Bh, 000h               ; call 0x382a
    db 033h, 0C0h                     ; xor ax, ax
    db 0CDh, 033h                     ; int 0x33
    db 0C3h                           ; ret
    db 08Bh, 00Eh, 03Ch, 004h         ; mov cx, word [0x43c]
    db 0E3h, 0F9h                     ; jcxz 0x37e3
    db 08Eh, 0D9h                     ; mov ds, cx
    db 02Eh, 08Eh, 006h, 09Eh, 034h   ; mov es, word cs:[0x349e]
    db 02Eh, 08Bh, 016h, 0F5h, 034h   ; mov dx, word cs:[0x34f5]
    db 0E8h, 031h, 000h               ; call 0x382a
    db 033h, 0C9h                     ; xor cx, cx
    db 033h, 0D2h                     ; xor dx, dx
    db 033h, 0F6h                     ; xor si, si
    db 033h, 0FFh                     ; xor di, di
    db 0B8h, 010h, 000h               ; mov ax, 0x10
    db 0CDh, 033h                     ; int 0x33
    db 02Eh, 08Bh, 016h, 0F5h, 034h   ; mov dx, word cs:[0x34f5]
    db 00Bh, 0D2h                     ; or dx, dx
    db 074h, 017h                     ; je 0x3826
    db 0B8h, 020h, 000h               ; mov ax, 0x20
    db 0CDh, 033h                     ; int 0x33
    db 0B8h, 021h, 000h               ; mov ax, 0x21
    db 0CDh, 033h                     ; int 0x33
    db 08Eh, 01Eh, 03Ch, 004h         ; mov ds, word [0x43c]
    db 0E8h, 00Ah, 000h               ; call 0x382a
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0CDh, 033h                     ; int 0x33
    db 0C3h                           ; ret
    db 08Eh, 01Eh, 03Ch, 004h         ; mov ds, word [0x43c]
    cld                                      ; FC
    db 033h, 0FFh                     ; xor di, di
    db 033h, 0F6h                     ; xor si, si
    db 02Eh, 08Bh, 00Eh, 09Ch, 034h   ; mov cx, word cs:[0x349c]
    db 00Bh, 0D2h                     ; or dx, dx
    db 074h, 002h                     ; je 0x383a
    db 08Bh, 0CAh                     ; mov cx, dx
    db 0D1h, 0E9h                     ; shr cx, 1
    cli                                      ; FA
    db 0F3h, 0A5h                     ; rep movsw word es:[di], word [si]
    sti                                      ; FB
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    push bx                                  ; 53
    db 077h, 061h                     ; ja 0x38a7
    db 070h, 044h                     ; jo 0x388c
    db 069h, 073h, 06Bh, 000h, 053h   ; imul si, word [bp + di + 0x6b], 0x5300
    db 077h, 061h                     ; ja 0x38b0
    db 070h, 053h                     ; jo 0x38a4
    db 069h, 07Ah, 065h, 000h, 033h   ; imul di, word [bp + si + 0x65], 0x3300
    db 0C0h, 08Eh, 0C0h, 026h, 08Bh   ; ror byte [bp + 0x26c0], 0x8b
    db 01Eh                           ; push ds
    db 0CCh                           ; int3
    db 000h, 026h, 08Bh, 016h         ; add byte [0x168b], ah
    into                                     ; CE
    db 000h, 08Bh, 0CBh, 00Bh         ; add byte [bp + di + 0xbcb], cl
    db 0CAh, 0E3h, 02Dh               ; retf 0x2de3
    db 08Eh, 0C2h                     ; mov es, dx
    db 026h, 081h, 07Fh, 010h, 04Ch, 04Fh ; cmp word es:[bx + 0x10], 0x4f4c
    db 075h, 00Dh                     ; jne 0x3880
    db 026h, 0A1h, 001h, 001h         ; mov ax, word es:[0x101]
    db 005h, 003h, 001h               ; add ax, 0x103
    db 02Eh, 0A3h, 0F5h, 034h         ; mov word cs:[0x34f5], ax
    db 0EBh, 00Ch                     ; jmp 0x388c
    db 0B8h, 04Dh, 000h               ; mov ax, 0x4d
    db 0CDh, 033h                     ; int 0x33
    db 026h, 081h, 03Dh, 043h, 06Fh   ; cmp word es:[di], 0x6f43
    db 075h, 00Ah                     ; jne 0x3896
    db 02Eh, 089h, 01Eh, 09Ch, 034h   ; mov word cs:[0x349c], bx
    db 02Eh, 089h, 016h, 09Eh, 034h   ; mov word cs:[0x349e], dx
    db 0BFh, 0DBh, 01Fh               ; mov di, 0x1fdb
    db 0BBh, 043h, 038h               ; mov bx, 0x3843
    db 0B9h, 098h, 034h               ; mov cx, 0x3498
    db 0BAh, 002h, 000h               ; mov dx, 2
    db 00Eh                           ; push cs
    push di                                  ; 57
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 00Eh                           ; push cs
    push cx                                  ; 51
    db 00Eh                           ; push cs
    push cx                                  ; 51
    push dx                                  ; 52
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 033h, 0C0h                     ; xor ax, ax
    db 0BEh, 0B3h, 034h               ; mov si, 0x34b3
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    push ax                                  ; 50
    db 00Eh                           ; push cs
    push di                                  ; 57
    push si                                  ; 56
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 0A1h, 098h, 034h               ; mov ax, word [0x3498]
    db 03Ch, 03Fh                     ; cmp al, 0x3f
    db 074h, 021h                     ; je 0x38ea
    db 072h, 023h                     ; jb 0x38ee
    db 024h, 0DFh                     ; and al, 0xdf
    db 03Ah, 006h, 0B3h, 034h         ; cmp al, byte [0x34b3]
    db 074h, 017h                     ; je 0x38ea
    db 00Ch, 080h                     ; or al, 0x80
    inc si                                   ; 46
    push ax                                  ; 50
    db 00Eh                           ; push cs
    push di                                  ; 57
    push si                                  ; 56
    db 01Eh                           ; push ds
    push si                                  ; 56
    db 09Ah, 0BEh, 038h, 000h, 000h   ; lcall 0, 0x38be
    db 08Bh, 004h                     ; mov ax, word [si]
    db 089h, 044h, 0FFh               ; mov word [si - 1], ax
    db 0C6h, 044h, 001h, 05Ch         ; mov byte [si + 1], 0x5c
    db 00Bh, 0D2h                     ; or dx, dx
    db 075h, 007h                     ; jne 0x38f5
    db 0C6h, 006h, 0B3h, 034h, 000h   ; mov byte [0x34b3], 0
    db 0EBh, 01Ch                     ; jmp 0x3911
    db 0ACh                           ; lodsb al, byte [si]
    db 03Ch, 07Eh                     ; cmp al, 0x7e
    db 075h, 0FBh                     ; jne 0x38f5
    db 083h, 0C6h, 003h               ; add si, 3
    db 089h, 036h, 0F3h, 034h         ; mov word [0x34f3], si
    db 033h, 0C0h                     ; xor ax, ax
    db 0BFh, 04Ch, 038h               ; mov di, 0x384c
    db 0E8h, 044h, 0F2h               ; call 0x2b4d
    db 0B1h, 006h                     ; mov cl, 6
    db 0D3h, 0E0h                     ; shl ax, cl
    db 02Eh, 0A3h, 09Ah, 034h         ; mov word cs:[0x349a], ax
    db 0B8h, 03Fh, 035h               ; mov ax, 0x353f
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0A0h, 034h   ; mov word cs:[0x34a0], bx
    db 02Eh, 08Ch, 006h, 0A2h, 034h   ; mov word cs:[0x34a2], es
    db 0B4h, 034h                     ; mov ah, 0x34
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0A4h, 034h   ; mov word cs:[0x34a4], bx
    db 02Eh, 08Ch, 006h, 0A6h, 034h   ; mov word cs:[0x34a6], es
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 02Eh, 0A3h, 0A8h, 034h         ; mov word cs:[0x34a8], ax
    db 02Eh, 089h, 016h, 0AAh, 034h   ; mov word cs:[0x34aa], dx
    db 0B8h, 0ACh, 034h               ; mov ax, 0x34ac
    db 00Eh                           ; push cs
    push ax                                  ; 50
    db 09Ah, 0A5h, 020h, 000h, 000h   ; lcall 0, 0x20a5
    db 0BFh, 043h, 038h               ; mov di, 0x3843
    db 0B9h, 03Ch, 039h               ; mov cx, 0x393c
    db 02Bh, 0CFh                     ; sub cx, di
    push ax                                  ; 50
    db 00Eh                           ; push cs
    push di                                  ; 57
    push cx                                  ; 51
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Eh                           ; push cs
    db 007h                           ; pop es
    db 0E8h, 024h, 0F2h               ; call 0x2b80
    db 0B8h, 050h, 049h               ; mov ax, 0x4950
    db 0ABh                           ; stosw word es:[di], ax
    db 0B8h, 046h, 05Ch               ; mov ax, 0x5c46
    db 0ABh                           ; stosw word es:[di], ax
    db 033h, 0C0h                     ; xor ax, ax
    db 0AAh                           ; stosb byte es:[di], al
    db 016h                           ; push ss
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 033h, 0C9h                     ; xor cx, cx
    db 0F6h, 006h, 0F7h, 000h, 014h   ; test byte [0xf7], 0x14
    db 075h, 00Dh                     ; jne 0x3980
    db 0F6h, 006h, 0F9h, 000h, 0C0h   ; test byte [0xf9], 0xc0
    db 075h, 006h                     ; jne 0x3980
    db 02Eh, 08Bh, 016h, 09Ah, 034h   ; mov dx, word cs:[0x349a]
    inc cx                                   ; 41
    db 0C3h                           ; ret
    db 02Eh, 08Ah, 016h, 0B3h, 034h   ; mov dl, byte cs:[0x34b3]
    db 080h, 0EAh, 040h               ; sub dl, 0x40
    db 0B4h, 036h                     ; mov ah, 0x36
    db 0CDh, 021h                     ; int 0x21
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0D1h, 0E9h                     ; shr cx, 1
    db 0F7h, 0E1h                     ; mul cx
    db 0F7h, 0E3h                     ; mul bx
    db 0C3h                           ; ret
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
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    db 000h, 000h                     ; add byte [bx + si], al
    cli                                      ; FA
    db 0E4h, 021h                     ; in al, 0x21
    db 024h, 0E7h                     ; and al, 0xe7
    db 0E6h, 021h                     ; out 0x21, al
    sti                                      ; FB
    db 0C3h                           ; ret
    db 00Eh                           ; push cs
    db 01Fh                           ; pop ds
    db 0B4h, 025h                     ; mov ah, 0x25
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 0C6h, 006h, 0B6h, 039h, 000h ; mov byte cs:[0x39b6], 0
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 09Ah, 077h, 034h, 000h, 000h   ; lcall 0, 0x3477
    db 02Eh, 089h, 016h, 0B4h, 039h   ; mov word cs:[0x39b4], dx
    db 0B8h, 012h, 035h               ; mov ax, 0x3512
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0A4h, 039h   ; mov word cs:[0x39a4], bx
    db 02Eh, 08Ch, 006h, 0A6h, 039h   ; mov word cs:[0x39a6], es
    db 0BAh, 0FFh, 039h               ; mov dx, 0x39ff
    db 0B0h, 012h                     ; mov al, 0x12
    db 0E8h, 0D1h, 0FFh               ; call 0x39c1
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 02Eh, 0C5h, 016h, 0A4h, 039h   ; lds dx, cs:[0x39a4]
    db 0B0h, 012h                     ; mov al, 0x12
    db 0E8h, 0C6h, 0FFh               ; call 0x39c3
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    push cx                                  ; 51
    push dx                                  ; 52
    db 09Ah, 0D0h, 039h, 000h, 000h   ; lcall 0, 0x39d0
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0A1h, 002h, 000h               ; mov ax, word [2]
    db 0B1h, 006h                     ; mov cl, 6
    db 0D3h, 0E8h                     ; shr ax, cl
    pop dx                                   ; 5A
    pop cx                                   ; 59
    db 01Fh                           ; pop ds
    iret                                     ; CF
    db 01Eh                           ; push ds
    db 0B8h, 016h, 035h               ; mov ax, 0x3516
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0ACh, 039h   ; mov word cs:[0x39ac], bx
    db 02Eh, 08Ch, 006h, 0AEh, 039h   ; mov word cs:[0x39ae], es
    db 0BAh, 055h, 03Ah               ; mov dx, 0x3a55
    db 0B0h, 016h                     ; mov al, 0x16
    db 0E8h, 095h, 0FFh               ; call 0x39c1
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 02Eh, 0C5h, 016h, 0ACh, 039h   ; lds dx, cs:[0x39ac]
    db 0B0h, 016h                     ; mov al, 0x16
    db 0E8h, 08Ah, 0FFh               ; call 0x39c3
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 0E8h, 0EFh, 000h               ; call 0x3b2d
    db 0B4h, 001h                     ; mov ah, 1
    db 0E8h, 00Bh, 000h               ; call 0x3a4e
    db 074h, 008h                     ; je 0x3a4d
    db 0B4h, 000h                     ; mov ah, 0
    db 0E8h, 004h, 000h               ; call 0x3a4e
    db 080h, 0CBh, 001h               ; or bl, 1
    db 0C3h                           ; ret
    pushf                                    ; 9C
    db 02Eh, 0FFh, 01Eh, 0ACh, 039h   ; lcall cs:[0x39ac]
    db 0C3h                           ; ret
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 08Bh, 06Eh, 004h               ; mov bp, word [bp + 4]
    db 02Eh, 039h, 02Eh, 0B4h, 039h   ; cmp word cs:[0x39b4], bp
    db 076h, 006h                     ; jbe 0x3a68
    pop bp                                   ; 5D
    db 02Eh, 0FFh, 02Eh, 0ACh, 039h   ; ljmp cs:[0x39ac]
    sti                                      ; FB
    db 080h, 0FCh, 002h               ; cmp ah, 2
    db 074h, 0F4h                     ; je 0x3a62
    db 080h, 0FCh, 091h               ; cmp ah, 0x91
    db 074h, 0EFh                     ; je 0x3a62
    db 006h                           ; push es
    push si                                  ; 56
    push di                                  ; 57
    push dx                                  ; 52
    push cx                                  ; 51
    push bx                                  ; 53
    db 080h, 0FCh, 001h               ; cmp ah, 1
    db 075h, 013h                     ; jne 0x3a91
    db 0B4h, 00Bh                     ; mov ah, 0xb
    db 0E8h, 031h, 0F3h               ; call 0x2db4
    db 00Ah, 0C0h                     ; or al, al
    db 08Bh, 0C2h                     ; mov ax, dx
    pop bx                                   ; 5B
    pop cx                                   ; 59
    pop dx                                   ; 5A
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 007h                           ; pop es
    pop bp                                   ; 5D
    db 0CAh, 002h, 000h               ; retf 2
    db 00Ah, 0E4h                     ; or ah, ah
    db 075h, 005h                     ; jne 0x3a9a
    db 0B4h, 006h                     ; mov ah, 6
    db 0E8h, 01Ah, 0F3h               ; call 0x2db4
    pop bx                                   ; 5B
    pop cx                                   ; 59
    pop dx                                   ; 5A
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 007h                           ; pop es
    pop bp                                   ; 5D
    iret                                     ; CF
    db 01Eh                           ; push ds
    db 0B8h, 009h, 035h               ; mov ax, 0x3509
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 09Ch, 039h   ; mov word cs:[0x399c], bx
    db 02Eh, 08Ch, 006h, 09Eh, 039h   ; mov word cs:[0x399e], es
    db 0BAh, 0C9h, 03Ah               ; mov dx, 0x3ac9
    db 0B0h, 009h                     ; mov al, 9
    db 0E8h, 007h, 0FFh               ; call 0x39c1
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 02Eh, 0C5h, 016h, 09Ch, 039h   ; lds dx, cs:[0x399c]
    db 0B0h, 009h                     ; mov al, 9
    db 0E8h, 0FCh, 0FEh               ; call 0x39c3
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    push ax                                  ; 50
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0F6h, 006h, 017h, 004h, 008h   ; test byte [0x417], 8
    db 075h, 007h                     ; jne 0x3add
    pop ax                                   ; 58
    db 01Fh                           ; pop ds
    db 02Eh, 0FFh, 02Eh, 09Ch, 039h   ; ljmp cs:[0x399c]
    db 0E4h, 060h                     ; in al, 0x60
    db 03Ch, 00Fh                     ; cmp al, 0xf
    db 074h, 00Ch                     ; je 0x3aef
    db 03Ch, 01Ch                     ; cmp al, 0x1c
    db 075h, 0EFh                     ; jne 0x3ad6
    db 02Eh, 080h, 03Eh, 0B6h, 039h, 000h ; cmp byte cs:[0x39b6], 0
    db 075h, 0E7h                     ; jne 0x3ad6
    pushf                                    ; 9C
    db 02Eh, 0FFh, 01Eh, 09Ch, 039h   ; lcall cs:[0x399c]
    push bp                                  ; 55
    db 08Bh, 0ECh                     ; mov bp, sp
    push bx                                  ; 53
    push cx                                  ; 51
    push dx                                  ; 52
    db 006h                           ; push es
    db 09Ah, 003h, 03Ah, 000h, 000h   ; lcall 0, 0x3a03
    db 08Eh, 0D8h                     ; mov ds, ax
    db 083h, 03Eh, 044h, 000h, 000h   ; cmp word [0x44], 0
    db 074h, 01Bh                     ; je 0x3b25
    db 02Eh, 0C6h, 006h, 0B6h, 039h, 001h ; mov byte cs:[0x39b6], 1
    db 039h, 046h, 008h               ; cmp word [bp + 8], ax
    db 072h, 010h                     ; jb 0x3b25
    db 0A1h, 002h, 000h               ; mov ax, word [2]
    db 039h, 046h, 008h               ; cmp word [bp + 8], ax
    db 073h, 008h                     ; jae 0x3b25
    push si                                  ; 56
    push di                                  ; 57
    sti                                      ; FB
    db 0E8h, 012h, 000h               ; call 0x3b35
    pop di                                   ; 5F
    pop si                                   ; 5E
    db 007h                           ; pop es
    pop dx                                   ; 5A
    pop cx                                   ; 59
    pop bx                                   ; 5B
    pop bp                                   ; 5D
    pop ax                                   ; 58
    db 01Fh                           ; pop ds
    iret                                     ; CF
    db 02Eh, 080h, 03Eh, 0B6h, 039h, 000h ; cmp byte cs:[0x39b6], 0
    db 074h, 017h                     ; je 0x3b4c
    db 0B0h, 00Bh                     ; mov al, 0xb
    db 0E6h, 020h                     ; out 0x20, al
    db 0EBh, 000h                     ; jmp 0x3b3b
    db 0E4h, 020h                     ; in al, 0x20
    db 00Ah, 0C0h                     ; or al, al
    db 075h, 00Bh                     ; jne 0x3b4c
    db 0E8h, 024h, 0F2h               ; call 0x2d68
    db 072h, 006h                     ; jb 0x3b4c
    db 02Eh, 0C6h, 006h, 0B6h, 039h, 000h ; mov byte cs:[0x39b6], 0
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 0B8h, 010h, 035h               ; mov ax, 0x3510
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0A0h, 039h   ; mov word cs:[0x39a0], bx
    db 02Eh, 08Ch, 006h, 0A2h, 039h   ; mov word cs:[0x39a2], es
    db 0B8h, 015h, 035h               ; mov ax, 0x3515
    db 0CDh, 021h                     ; int 0x21
    db 02Eh, 089h, 01Eh, 0A8h, 039h   ; mov word cs:[0x39a8], bx
    db 02Eh, 08Ch, 006h, 0AAh, 039h   ; mov word cs:[0x39aa], es
    db 0BAh, 0EEh, 03Bh               ; mov dx, 0x3bee
    db 0B0h, 010h                     ; mov al, 0x10
    db 0E8h, 04Dh, 0FEh               ; call 0x39c1
    db 0BAh, 004h, 03Dh               ; mov dx, 0x3d04
    db 0B0h, 015h                     ; mov al, 0x15
    db 0E8h, 045h, 0FEh               ; call 0x39c1
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 0B8h, 007h, 050h               ; mov ax, 0x5007
    db 087h, 006h, 049h, 004h         ; xchg word [0x449], ax
    db 02Eh, 0A3h, 0B2h, 039h         ; mov word cs:[0x39b2], ax
    db 0A1h, 010h, 004h               ; mov ax, word [0x410]
    db 02Eh, 0A3h, 0B0h, 039h         ; mov word cs:[0x39b0], ax
    db 00Ch, 030h                     ; or al, 0x30
    db 0A3h, 010h, 004h               ; mov word [0x410], ax
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 02Eh, 0C5h, 016h, 0A0h, 039h   ; lds dx, cs:[0x39a0]
    db 0B0h, 010h                     ; mov al, 0x10
    db 0E8h, 01Fh, 0FEh               ; call 0x39c3
    db 02Eh, 0C5h, 016h, 0A8h, 039h   ; lds dx, cs:[0x39a8]
    db 0B0h, 015h                     ; mov al, 0x15
    db 0E8h, 015h, 0FEh               ; call 0x39c3
    db 033h, 0C0h                     ; xor ax, ax
    db 08Eh, 0D8h                     ; mov ds, ax
    db 02Eh, 0A1h, 0B0h, 039h         ; mov ax, word cs:[0x39b0]
    db 0A3h, 010h, 004h               ; mov word [0x410], ax
    db 02Eh, 0A1h, 0B2h, 039h         ; mov ax, word cs:[0x39b2]
    db 0A3h, 049h, 004h               ; mov word [0x449], ax
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    push cx                                  ; 51
    db 03Ch, 061h                     ; cmp al, 0x61
    db 03Ch, 079h                     ; cmp al, 0x79
    db 03Ch, 06Ah                     ; cmp al, 0x6a
    db 03Ch, 06Dh                     ; cmp al, 0x6d
    db 03Ch, 08Dh                     ; cmp al, 0x8d
    db 03Ch, 073h                     ; cmp al, 0x73
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 06Ah                     ; cmp al, 0x6a
    db 03Ch, 06Ah                     ; cmp al, 0x6a
    db 03Ch, 09Bh                     ; cmp al, 0x9b
    db 03Ch, 06Ah                     ; cmp al, 0x6a
    db 03Ch, 06Ah                     ; cmp al, 0x6a
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 068h                     ; cmp al, 0x68
    db 03Ch, 0A4h                     ; cmp al, 0xa4
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 072h                     ; cmp al, 0x72
    db 03Ch, 0AEh                     ; cmp al, 0xae
    db 03Ch, 055h                     ; cmp al, 0x55
    db 08Bh, 0ECh                     ; mov bp, sp
    db 08Bh, 06Eh, 004h               ; mov bp, word [bp + 4]
    db 02Eh, 039h, 02Eh, 0B4h, 039h   ; cmp word cs:[0x39b4], bp
    db 076h, 01Eh                     ; jbe 0x3c19
    db 01Eh                           ; push ds
    db 033h, 0EDh                     ; xor bp, bp
    db 08Eh, 0DDh                     ; mov ds, bp
    db 02Eh, 08Bh, 02Eh, 0B0h, 039h   ; mov bp, word cs:[0x39b0]
    db 089h, 02Eh, 010h, 004h         ; mov word [0x410], bp
    db 02Eh, 08Bh, 02Eh, 0B2h, 039h   ; mov bp, word cs:[0x39b2]
    db 089h, 02Eh, 049h, 004h         ; mov word [0x449], bp
    db 01Fh                           ; pop ds
    pop bp                                   ; 5D
    db 02Eh, 0FFh, 02Eh, 0A0h, 039h   ; ljmp cs:[0x39a0]
    sti                                      ; FB
    db 080h, 0FCh, 013h               ; cmp ah, 0x13
    db 072h, 005h                     ; jb 0x3c24
    db 080h, 0FCh, 0FEh               ; cmp ah, 0xfe
    db 072h, 02Bh                     ; jb 0x3c4f
    push si                                  ; 56
    db 006h                           ; push es
    push di                                  ; 57
    push dx                                  ; 52
    push cx                                  ; 51
    push bx                                  ; 53
    push ax                                  ; 50
    push ax                                  ; 50
    db 08Ah, 0C4h                     ; mov al, ah
    db 098h                           ; cwde
    db 0D1h, 0E0h                     ; shl ax, 1
    db 0BEh, 0C6h, 03Bh               ; mov si, 0x3bc6
    db 003h, 0F0h                     ; add si, ax
    pop ax                                   ; 58
    db 080h, 0C4h, 00Ch               ; add ah, 0xc
    db 01Eh                           ; push ds
    db 033h, 0EDh                     ; xor bp, bp
    db 08Eh, 0DDh                     ; mov ds, bp
    db 080h, 03Eh, 000h, 005h, 001h   ; cmp byte [0x500], 1
    db 01Fh                           ; pop ds
    db 02Eh, 0FFh, 014h               ; call word cs:[si]
    pop ax                                   ; 58
    pop bx                                   ; 5B
    pop cx                                   ; 59
    pop dx                                   ; 5A
    pop di                                   ; 5F
    db 007h                           ; pop es
    pop si                                   ; 5E
    pop bp                                   ; 5D
    iret                                     ; CF
    db 0B4h, 018h                     ; mov ah, 0x18
    db 0E8h, 05Eh, 0F1h               ; call 0x2db4
    db 08Bh, 0F8h                     ; mov di, ax
    pop ax                                   ; 58
    pop ax                                   ; 58
    pop bx                                   ; 5B
    pop cx                                   ; 59
    pop dx                                   ; 5A
    pop si                                   ; 5E
    pop si                                   ; 5E
    db 0EBh, 0EDh                     ; jmp 0x3c4e
    db 0B4h, 019h                     ; mov ah, 0x19
    db 08Bh, 0DFh                     ; mov bx, di
    db 0E9h, 04Ch, 0F1h               ; jmp 0x2db4
    db 0B4h, 008h                     ; mov ah, 8
    db 0E9h, 047h, 0F1h               ; jmp 0x2db4
    db 074h, 062h                     ; je 0x3cd1
    db 0E9h, 042h, 0F1h               ; jmp 0x2db4
    db 0C3h                           ; ret
    db 033h, 0C0h                     ; xor ax, ax
    pop bx                                   ; 5B
    pop bx                                   ; 5B
    db 0EBh, 0D0h                     ; jmp 0x3c49
    db 0B8h, 000h, 012h               ; mov ax, 0x1200
    db 033h, 0C9h                     ; xor cx, cx
    db 0BAh, 04Fh, 018h               ; mov dx, 0x184f
    db 0B7h, 007h                     ; mov bh, 7
    db 0E8h, 02Eh, 0F1h               ; call 0x2db4
    db 033h, 0D2h                     ; xor dx, dx
    db 0B4h, 00Eh                     ; mov ah, 0xe
    db 0E9h, 027h, 0F1h               ; jmp 0x2db4
    db 074h, 059h                     ; je 0x3ce8
    db 0E8h, 022h, 0F1h               ; call 0x2db4
    db 08Bh, 0C8h                     ; mov cx, ax
    pop ax                                   ; 58
    pop ax                                   ; 58
    pop bx                                   ; 5B
    pop di                                   ; 5F
    pop di                                   ; 5F
    db 0EBh, 0B1h                     ; jmp 0x3c4c
    db 074h, 059h                     ; je 0x3cf6
    db 0E8h, 014h, 0F1h               ; call 0x2db4
    pop bx                                   ; 5B
    pop bx                                   ; 5B
    db 0EBh, 0A5h                     ; jmp 0x3c49
    db 0B8h, 007h, 050h               ; mov ax, 0x5007
    db 0B7h, 000h                     ; mov bh, 0
    pop cx                                   ; 59
    pop cx                                   ; 59
    pop cx                                   ; 59
    db 0EBh, 09Ch                     ; jmp 0x3c4a
    db 0D0h, 0E6h                     ; shl dh, 1
    db 0D0h, 0E6h                     ; shl dh, 1
    db 0D0h, 0E6h                     ; shl dh, 1
    db 0D0h, 0E6h                     ; shl dh, 1
    db 00Ah, 0D6h                     ; or dl, dh
    db 08Ah, 0F3h                     ; mov dh, bl
    db 08Bh, 0DDh                     ; mov bx, bp
    db 0B4h, 01Ah                     ; mov ah, 0x1a
    db 0E9h, 0F3h, 0F0h               ; jmp 0x2db4
    push dx                                  ; 52
    push ax                                  ; 50
    db 09Ah, 0E5h, 035h, 000h, 000h   ; lcall 0, 0x35e5
    db 08Eh, 0D8h                     ; mov ds, ax
    pop ax                                   ; 58
    pop dx                                   ; 5A
    db 08Eh, 01Eh, 004h, 000h         ; mov ds, word [4]
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 0E8h, 0ECh, 0FFh               ; call 0x3cc1
    db 080h, 0FEh, 019h               ; cmp dh, 0x19
    db 072h, 003h                     ; jb 0x3cdd
    db 080h, 0EEh, 019h               ; sub dh, 0x19
    db 08Bh, 0DAh                     ; mov bx, dx
    db 087h, 016h, 0D3h, 002h         ; xchg word [0x2d3], dx
    db 0E8h, 0B9h, 0D9h               ; call 0x169f
    db 01Fh                           ; pop ds
    db 0C3h                           ; ret
    db 01Eh                           ; push ds
    db 0E8h, 0D5h, 0FFh               ; call 0x3cc1
    db 0A1h, 0EFh, 003h               ; mov ax, word [0x3ef]
    db 08Bh, 016h, 0D3h, 002h         ; mov dx, word [0x2d3]
    db 01Fh                           ; pop ds
    db 0EBh, 09Ch                     ; jmp 0x3c92
    db 01Eh                           ; push ds
    db 0E8h, 0C7h, 0FFh               ; call 0x3cc1
    db 0C4h, 03Eh, 0E8h, 003h         ; les di, [0x3e8]
    db 026h, 08Bh, 005h               ; mov ax, word es:[di]
    db 01Fh                           ; pop ds
    db 0EBh, 09Ch                     ; jmp 0x3ca0
    db 03Dh, 022h, 010h               ; cmp ax, 0x1022
    db 075h, 004h                     ; jne 0x3d0d
    db 0BBh, 0FFh, 0FFh               ; mov bx, 0xffff
    iret                                     ; CF
    db 03Dh, 034h, 010h               ; cmp ax, 0x1034
    db 075h, 004h                     ; jne 0x3d16
    db 0BBh, 001h, 000h               ; mov bx, 1
    iret                                     ; CF
    db 02Eh, 0FFh, 02Eh, 0A8h, 039h   ; ljmp cs:[0x39a8]
    db 02Eh, 08Eh, 01Eh, 064h, 02Dh   ; mov ds, word cs:[0x2d64]
    db 0BEh, 015h, 000h               ; mov si, 0x15
    db 080h, 03Ch, 0E9h               ; cmp byte [si], 0xe9
    db 075h, 003h                     ; jne 0x3d2b
    db 0E9h, 091h, 0F4h               ; jmp 0x31bc
    db 0CDh, 011h                     ; int 0x11
    db 024h, 030h                     ; and al, 0x30
    db 03Ch, 010h                     ; cmp al, 0x10
    db 0B8h, 003h, 000h               ; mov ax, 3
    db 075h, 003h                     ; jne 0x3d39
    db 0B8h, 001h, 000h               ; mov ax, 1
    db 0CDh, 010h                     ; int 0x10
    db 0C3h                           ; ret
    db 033h, 0F6h                     ; xor si, si
    db 08Eh, 0C6h                     ; mov es, si
    db 0BFh, 001h, 080h               ; mov di, 0x8001
    db 0A8h, 080h                     ; test al, 0x80
    db 074h, 007h                     ; je 0x3d4e
    db 026h, 039h, 036h, 000h, 004h   ; cmp word es:[0x400], si
    db 074h, 00Eh                     ; je 0x3d5c
    db 0BFh, 002h, 080h               ; mov di, 0x8002
    db 0A8h, 040h                     ; test al, 0x40
    db 074h, 01Fh                     ; je 0x3d74
    db 026h, 039h, 036h, 002h, 004h   ; cmp word es:[0x402], si
    db 075h, 018h                     ; jne 0x3d74
    db 024h, 0C0h                     ; and al, 0xc0
    db 03Ch, 0C0h                     ; cmp al, 0xc0
    db 075h, 00Eh                     ; jne 0x3d70
    db 026h, 0A1h, 000h, 004h         ; mov ax, word es:[0x400]
    db 026h, 00Bh, 006h, 002h, 004h   ; or ax, word es:[0x402]
    db 075h, 007h                     ; jne 0x3d74
    db 0BFh, 003h, 080h               ; mov di, 0x8003
    db 08Bh, 0C7h                     ; mov ax, di
    stc                                      ; F9
    db 0C3h                           ; ret
    clc                                      ; F8
    db 0C3h                           ; ret
    db 000h, 000h                     ; add byte [bx + si], al
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d83
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d87
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d8b
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d8f
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d93
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d97
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d9b
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3d9f
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3da3
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3da7
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3dab
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 076h, 0FEh                     ; jbe 0x3daf
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh, 000h                     ; inc byte [bx + si]
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 03Bh, 0FFh                     ; cmp di, di
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    std                                      ; FD
    db 019h, 023h                     ; sbb word [bp + di], sp
    db 02Dh, 0FDh, 019h               ; sub ax, 0x19fd
    db 023h, 02Dh                     ; and bp, word [di]
    std                                      ; FD
    db 019h, 023h                     ; sbb word [bp + di], sp
    db 02Dh, 0FDh, 019h               ; sub ax, 0x19fd
    db 023h, 02Dh                     ; and bp, word [di]
    std                                      ; FD
    db 019h, 023h                     ; sbb word [bp + di], sp
    db 02Dh, 0FDh, 019h               ; sub ax, 0x19fd
    db 023h, 02Dh                     ; and bp, word [di]
    std                                      ; FD
    db 019h, 023h                     ; sbb word [bp + di], sp
    db 02Dh, 0FDh, 019h               ; sub ax, 0x19fd
    db 023h, 02Dh                     ; and bp, word [di]
    std                                      ; FD
    db 019h, 023h                     ; sbb word [bp + di], sp
    db 02Dh, 0FDh, 019h               ; sub ax, 0x19fd
    db 023h, 02Dh                     ; and bp, word [di]
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B7h, 030h                     ; mov bh, 0x30
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    std                                      ; FD
    db 0B9h, 03Bh, 0FFh               ; mov cx, 0xff3b
    std                                      ; FD
    std                                      ; FD
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B4h, 028h                     ; mov ah, 0x28
    db 0FFh                           ; FF
    db 0FEh                           ; FE
    db 0B5h, 0FFh                     ; mov ch, 0xff
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B6h, 027h                     ; mov dh, 0x27
    db 0FFh                           ; FF
    std                                      ; FD
    std                                      ; FD
    db 0FEh                           ; FE
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B1h, 026h                     ; mov cl, 0x26
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B2h, 0FFh                     ; mov dl, 0xff
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B3h, 025h                     ; mov bl, 0x25
    db 0FFh                           ; FF
    std                                      ; FD
    db 0B0h, 0FFh                     ; mov al, 0xff
    db 0FFh                           ; FF
    std                                      ; FD
    db 0AEh                           ; scasb al, byte es:[di]
    db 0FEh                           ; FE
    db 0FFh, 033h                     ; push word [bp + di]
    db 0DBh, 08Ah, 0DDh, 080h         ; fisttp dword [bp + si - 0x7f23]
    sti                                      ; FB
    push sp                                  ; 54
    db 077h, 02Bh                     ; ja 0x3efc
    db 0D1h, 0E3h                     ; shl bx, 1
    db 0D1h, 0E3h                     ; shl bx, 1
    db 081h, 0C3h, 07Bh, 03Dh         ; add bx, 0x3d7b
    db 08Ah, 0D6h                     ; mov dl, dh
    db 0F6h, 0D2h                     ; not dl
    db 0F6h, 0C2h, 0C0h               ; test dl, 0xc0
    db 075h, 003h                     ; jne 0x3ee5
    db 080h, 0E6h, 03Fh               ; and dh, 0x3f
    db 0D1h, 0E2h                     ; shl dx, 1
    db 072h, 00Bh                     ; jb 0x3ef4
    dec bx                                   ; 4B
    db 0D1h, 0E2h                     ; shl dx, 1
    db 072h, 006h                     ; jb 0x3ef4
    dec bx                                   ; 4B
    db 0D1h, 0E2h                     ; shl dx, 1
    db 072h, 001h                     ; jb 0x3ef4
    dec bx                                   ; 4B
    db 02Eh, 08Ah, 03Fh               ; mov bh, byte cs:[bx]
    db 080h, 0FFh, 0FFh               ; cmp bh, 0xff
    db 075h, 004h                     ; jne 0x3f00
    db 0B8h, 0FFh, 0FFh               ; mov ax, 0xffff
    db 0C3h                           ; ret
    db 080h, 0FFh, 0FEh               ; cmp bh, 0xfe
    db 075h, 009h                     ; jne 0x3f0e
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 0F2h                     ; je 0x3efc
    db 08Ah, 0E5h                     ; mov ah, ch
    db 0EBh, 021h                     ; jmp 0x3f2f
    db 080h, 0FFh, 0FDh               ; cmp bh, 0xfd
    db 075h, 00Dh                     ; jne 0x3f20
    db 032h, 0C9h                     ; xor cl, cl
    db 03Dh, 0FFh, 0FFh               ; cmp ax, 0xffff
    db 074h, 002h                     ; je 0x3f1c
    db 08Ah, 0C8h                     ; mov cl, al
    db 08Bh, 0C1h                     ; mov ax, cx
    db 0EBh, 00Fh                     ; jmp 0x3f2f
    db 08Ah, 0C7h                     ; mov al, bh
    db 024h, 07Fh                     ; and al, 0x7f
    db 08Ah, 0E5h                     ; mov ah, ch
    db 080h, 0FFh, 080h               ; cmp bh, 0x80
    db 073h, 023h                     ; jae 0x3f4e
    db 032h, 0C0h                     ; xor al, al
    db 002h, 0E7h                     ; add ah, bh
    db 00Ah, 0E4h                     ; or ah, ah
    db 074h, 01Bh                     ; je 0x3f4e
    db 03Ch, 080h                     ; cmp al, 0x80
    db 072h, 017h                     ; jb 0x3f4e
    push ax                                  ; 50
    db 0B4h, 000h                     ; mov ah, 0
    db 0BBh, 076h, 03Dh               ; mov bx, 0x3d76
    db 02Eh, 089h, 007h               ; mov word cs:[bx], ax
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 00Eh                           ; push cs
    push bx                                  ; 53
    db 09Ah, 0E6h, 00Ah, 000h, 000h   ; lcall 0, 0xae6
    pop ax                                   ; 58
    db 02Eh, 0A0h, 076h, 03Dh         ; mov al, byte cs:[0x3d76]
    db 0C3h                           ; ret
    db 000h, 05Bh, 02Bh               ; add byte [bp + di + 0x2b], bl
    db 0C4h, 073h, 018h               ; les si, [bp + di + 0x18]
    db 0F7h, 0D8h                     ; neg ax
    db 036h, 039h, 006h, 00Ah, 000h   ; cmp word ss:[0xa], ax
    db 077h, 00Fh                     ; ja 0x3f6d
    db 036h, 039h, 006h, 00Ch, 000h   ; cmp word ss:[0xc], ax
    db 076h, 004h                     ; jbe 0x3f69
    db 036h, 0A3h, 00Ch, 000h         ; mov word ss:[0xc], ax
    db 08Bh, 0E0h                     ; mov sp, ax
    db 0FFh, 0E3h                     ; jmp bx
    db 0B0h, 0FFh                     ; mov al, 0xff
    db 0BBh, 0B0h, 0FEh               ; mov bx, 0xfeb0
    db 0BBh, 0B0h, 0FDh               ; mov bx, 0xfdb0
    db 098h                           ; cwde
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 02Bh                     ; je 0x3fb0
    db 0C7h, 006h, 038h, 002h, 000h, 000h ; mov word [0x238], 0
    db 089h, 00Eh, 0B0h, 004h         ; mov word [0x4b0], cx
    push di                                  ; 57
    push si                                  ; 56
    db 006h                           ; push es
    push bx                                  ; 53
    push dx                                  ; 52
    db 0E8h, 0E1h, 0C2h               ; call 0x278
    db 033h, 0C0h                     ; xor ax, ax
    push ax                                  ; 50
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    push di                                  ; 57
    db 09Ah, 0FFh, 0FFh, 000h, 000h   ; lcall 0, 0xffff
    db 00Bh, 0C0h                     ; or ax, ax
    db 074h, 007h                     ; je 0x3fb0
    db 0E8h, 058h, 0C0h               ; call 4
    push ax                                  ; 50
    db 0E8h, 009h, 0C2h               ; call 0x1b9
    db 0B8h, 0FFh, 04Ch               ; mov ax, 0x4cff
    db 0CDh, 021h                     ; int 0x21
    db 0C3h                           ; ret