; THINKJET/seg3.asm
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
    add byte [bx + di - 0x4000], ch          ; 00 A9 00 C0
    add ax, word [bx + si]                   ; 03 00
    db 005h, 001h, 000h               ; add ax, 1
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
    rol byte [bx + si], 0x60                 ; C0 00 60
    add bh, dl                               ; 00 D7
    add byte [bp - 0x13ff], ch               ; 00 AE 01 EC
    or word [di - 0x3ffa], bx                ; 09 9D 06 C0
    add ax, word [bx + si]                   ; 03 00
    sti                                      ; FB
    cmp byte [bp + di + 0x25], ah            ; 38 63 25
    inc dx                                   ; 42
    rol byte [bp + di], 0                    ; C0 03 00
    sti                                      ; FB
    db 0E8h, 003h, 09Bh               ; call 0xffff9b56
    db 002h, 0C0h                     ; add al, al
    add ax, word [bx + si]                   ; 03 00
    sti                                      ; FB
    adc byte [bx], ah                        ; 10 27
    or bx, word [bp + si]                    ; 0B 1A
    rol byte [bp + di], 0                    ; C0 03 00
    sti                                      ; FB
    inc ax                                   ; 40
    cmp byte [bx + si - 0x3fdb], al          ; 38 80 25 C0
    add ax, word [bx + si]                   ; 03 00
    sti                                      ; FB
    pushaw                                   ; 60
    add al, al                               ; 00 C0
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add word [bp + si], ax                   ; 01 02
    add byte [bx + di - 0x200], ch           ; 00 A9 00 FE
    add byte [bx + si], al                   ; 00 00
    add ax, 0x3c0                            ; 05 C0 03
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
    pushaw                                   ; 60
    add al, al                               ; 00 C0
    add bh, dl                               ; 00 D7
    add byte [bp - 0x62ff], ch               ; 00 AE 01 9D
    push es                                  ; 06
    in al, dx                                ; EC
    or word [bx + si], ax                    ; 09 00
    add ax, 0xfc40                           ; 05 40 FC
    and ax, 0x3842                           ; 25 42 38
    arpl word [bx + si], ax                  ; 63 00
    add ax, 0xfc40                           ; 05 40 FC
    wait                                     ; 9B
    db 002h, 0E8h                     ; add ch, al
    add ax, word [bx + si]                   ; 03 00
    add ax, 0xfc40                           ; 05 40 FC
    or bx, word [bp + si]                    ; 0B 1A
    adc byte [bx], ah                        ; 10 27
    add byte [di], al                        ; 00 05
    inc ax                                   ; 40
    cld                                      ; FC
    and byte [di], 0x40                      ; 80 25 40
    cmp byte [bx + si], al                   ; 38 00
    add ax, 0xfc40                           ; 05 40 FC
    rol byte [bx + si], 0x60                 ; C0 00 60
    add byte [bx + di], al                   ; 00 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [di], cl                        ; 00 0D
    db 01Bh, 040h, 000h               ; sbb ax, word [bx + si]
    adc al, byte [bx + si]                   ; 12 00
    adc al, byte [bx + si]                   ; 12 00
    or al, 0                                 ; 0C 00
    or ax, 0x401b                            ; 0D 1B 40
    add byte [bx + si + 0x88], cl            ; 00 88 88 00
    add byte [bx + si], al                   ; 00 00
    db 005h, 060h, 000h               ; add ax, 0x60
    mov al, byte [0x100]                     ; A0 00 01
    add word [bx + si], ax                   ; 01 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    cmp al, 0                                ; 3C 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 000h, 090h, 003h, 000h         ; add byte [bx + si + 3], dl
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + di + 0x88], cl            ; 00 89 88 00
    db 000h, 060h, 000h               ; add byte [bx + si], ah
    add byte [di], al                        ; 00 05
    or al, 0                                 ; 0C 00
    add word [bx + di], ax                   ; 01 01
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], bh                        ; 00 3C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    nop                                      ; 90
    add ax, word [bx + si]                   ; 03 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bp + di], bl                   ; 00 1B
    dec sp                                   ; 4C
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 01Bh, 041h, 000h               ; sbb ax, word [bx + di]
    or al, byte [bp + di]                    ; 0A 03
    or ax, 0xd00                             ; 0D 00 0D
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 064h, 074h, 04Dh               ; je 0x1e2
    dec di                                   ; 4F
    inc sp                                   ; 44
    inc bp                                   ; 45
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    db 0AEh                           ; scasb al, byte es:[di]
    xlatb                                    ; D7
    pushaw                                   ; 60
    rol byte [di + 0x6c], 0x69               ; C0 45 6C 69
    db 074h, 065h                     ; je 0x20a
    and byte [bp + di + 0x6f], al            ; 20 43 6F
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x21d
    db 065h, 073h, 073h               ; jae 0x221
    db 065h, 064h, 000h, 045h, 06Ch   ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4500        ; 69 74 65 00 45
    db 06Ch                           ; insb byte es:[di], dx
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x230
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 020h, 043h, 06Fh ; and byte fs:[bp + di + 0x6f], al
    db 06Dh                           ; insw word es:[di], dx
    db 070h, 072h                     ; jo 0x23d
    db 065h, 073h, 073h               ; jae 0x241
    db 065h, 064h, 000h, 045h, 06Ch   ; add byte fs:[di + 0x6c], al
    imul si, word [si + 0x65], 0x4520        ; 69 74 65 20 45
    db 078h, 070h                     ; js 0x24a
    popaw                                    ; 61
    db 06Eh                           ; outsb dx, byte [si]
    db 064h, 065h, 064h, 000h, 000h   ; add byte fs:[bx + si], al
    add byte [bx + si], al                   ; 00 00
    add cx, word [si]                        ; 03 0C
    or word [bx + si], ax                    ; 09 00
    add al, 0                                ; 04 00
    add byte [bx + di], al                   ; 00 01
    add cx, word [si]                        ; 03 0C
    adc byte [bx + si], al                   ; 10 00
    add al, 0                                ; 04 00
    add byte [bp + si], al                   ; 00 02
    add cx, word [si]                        ; 03 0C
    adc al, byte [bx + si]                   ; 12 00
    add al, 0                                ; 04 00
    add byte [bp + di], al                   ; 00 03
    add cx, word [si]                        ; 03 0C
    and byte [bx + si], al                   ; 20 00
    add al, 0xa0                             ; 04 A0
    add word [bx + di - 0x48ff], si          ; 01 B1 01 B7
    add cx, dx                               ; 01 D1
    add word [bx + si], sp                   ; 01 20
    add byte [bx + si - 0x4100], bh          ; 00 B8 00 BF
    add byte [bx - 0x4600], ch               ; 00 AF 00 BA
    add byte [si + 0x7c00], bh               ; 00 BC 00 7C
    add byte [di - 0x5500], bh               ; 00 BD 00 AB
    add byte [0xf900], ch                    ; 00 2E 00 F9
    add bl, bh                               ; 00 FB
    add byte [0xf600], ch                    ; 00 2E 00 F6
    add byte [0xb000], ch                    ; 00 2E 00 B0
    add byte [bp + di - 0x200], dh           ; 00 B3 00 FE
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add byte [bx + si + 0x2e00], ch          ; 00 A8 00 2E
    add byte [0xfc00], ch                    ; 00 2E 00 FC
    add byte [0x2e00], ch                    ; 00 2E 00 2E
    add dl, bh                               ; 00 FA
    add ch, bh                               ; 00 FD
    add bh, dh                               ; 00 F7
    add al, bh                               ; 00 F8
    add byte [0xb900], ch                    ; 00 2E 00 B9
    add byte [bx + di - 0x2000], ah          ; 00 A1 00 E0
    add byte [bp + si - 0x1f00], ah          ; 00 A2 00 E1
    add al, bl                               ; 00 D8
    add al, dl                               ; 00 D0
    add bl, dl                               ; 00 D3
    add byte [si - 0x5d00], dh               ; 00 B4 00 A3
    add ah, bl                               ; 00 DC
    add byte [si - 0x5b00], ah               ; 00 A4 00 A5
    add dh, ah                               ; 00 E6
    add ch, ah                               ; 00 E5
    add byte [bp - 0x5900], ah               ; 00 A6 00 A7
    add bl, ah                               ; 00 E3
    add byte [bp - 0x1800], dh               ; 00 B6 00 E8
    add bh, ah                               ; 00 E7
    add bh, bl                               ; 00 DF
    add cl, ch                               ; 00 E9
    add dl, bl                               ; 00 DA
    add byte [0xd200], ch                    ; 00 2E 00 D2
    add byte [di - 0x1300], ch               ; 00 AD 00 ED
    add byte [bp - 0x2500], ch               ; 00 AE 00 DB
    add byte [bx + di - 0x58], bl            ; 00 59 A8
    db 0F0h                           ; F0
    add dh, bl                               ; 00 DE
    add al, cl                               ; 00 C8
    add ah, al                               ; 00 C4
    add al, al                               ; 00 C0
    add dl, ah                               ; 00 E2
    add ah, cl                               ; 00 CC
    add ah, dl                               ; 00 D4
    add bh, dl                               ; 00 D7
    add byte [di - 0x3700], dh               ; 00 B5 00 C9
    add ch, al                               ; 00 C5
    add cl, al                               ; 00 C1
    add ch, cl                               ; 00 CD
    add cl, bl                               ; 00 D9
    add ch, dl                               ; 00 D5
    add cl, dl                               ; 00 D1
    add ch, bl                               ; 00 DD
    add byte [0xb700], ch                    ; 00 2E 00 B7
    add dl, cl                               ; 00 CA
    add dh, al                               ; 00 C6
    add dl, al                               ; 00 C2
    add dl, ch                               ; 00 EA
    add dh, cl                               ; 00 CE
    add byte [0xd600], ch                    ; 00 2E 00 D6
    add bl, cl                               ; 00 CB
    add bh, al                               ; 00 C7
    add bl, al                               ; 00 C3
    add bh, cl                               ; 00 CF
    add byte [bx + di - 0x58], bh            ; 00 79 A8
    int1                                     ; F1
    add bh, ch                               ; 00 EF
    add byte [bx + di + 0xa05], ah           ; 00 A1 05 0A
    mov word [0xc0c], ax                     ; A3 0C 0C
    db 0A4h                           ; movsb byte es:[di], byte [si]
    or al, 0xc                               ; 0C 0C
    db 0A5h                           ; movsw word es:[di], word [si]
    or al, 0xc                               ; 0C 0C
    db 0A7h                           ; cmpsw word [si], word es:[di]
    or cl, byte [si]                         ; 0A 0C
    test al, 8                               ; A8 08
    or word [bx + si + 0x808], si            ; 09 B0 08 08
    mov di, 0xb0c                            ; BF 0C 0B
    les cx, [si]                             ; C4 0C
    or al, 0xc5                              ; 0C C5
    or al, 0xc                               ; 0C 0C
    db 0C6h                           ; C6
    or al, 0xc                               ; 0C 0C
    leave                                    ; C9
    or al, 0xc                               ; 0C 0C
    ror word [si], 1                         ; D1 0C
    or al, 0xd6                              ; 0C D6
    or al, 0xc                               ; 0C 0C
    fmul dword [si]                          ; D8 0C
    or al, 0xdc                              ; 0C DC
    or al, 0xc                               ; 0C 0C
    fisttp word [bp + di]                    ; DF 0B
    db 00Bh, 0E0h                     ; or sp, ax
    or al, 0xb                               ; 0C 0B
    in al, 0xc                               ; E4 0C
    db 00Bh, 0E6h                     ; or sp, si
    or al, 0xc                               ; 0C 0C
    out 0xb, ax                              ; E7 0B
    db 00Bh, 0E8h                     ; or bp, ax
    or al, 0xb                               ; 0C 0B
    db 0E9h, 00Ch, 00Bh               ; jmp 0xe19
    in al, dx                                ; EC
    or byte [bx + si], cl                    ; 08 08
    int1                                     ; F1
    or cx, word [si]                         ; 0B 0C
    db 0F2h, 00Ah, 00Bh               ; or cl, byte [bp + di]
    db 0F6h, 00Ah, 00Bh               ; test byte [bp + si], 0xb
    clc                                      ; F8
    or al, 0xb                               ; 0C 0B
    stc                                      ; F9
    or cx, word [bp + di]                    ; 0B 0B
    cld                                      ; FC
    or cx, word [si]                         ; 0B 0C
    db 01Bh, 045h, 000h               ; sbb ax, word [di]
    sbb bp, word [di]                        ; 1B 2D
    xor word [bx + si], ax                   ; 31 00
    sbb ax, word [bp]                        ; 1B 46 00
    sbb bp, word [di]                        ; 1B 2D
    xor byte [bx + si], al                   ; 30 00
    db 074h, 068h                     ; je 0x39a
    imul bp, word [bp + 0x6b], 0x656a        ; 69 6E 6B 6A 65
    db 074h, 000h                     ; je 0x339
    add byte [bx], cl                        ; 00 0F
    adc cl, byte [bx]                        ; 12 0F
    push cs                                  ; 0E
    adc al, 0x12                             ; 14 12
    push cs                                  ; 0E
    adc al, 0x1b                             ; 14 1B
    inc ax                                   ; 40
    sbb ax, word [bp + di + 0x1b]            ; 1B 43 1B
    inc cx                                   ; 41
    sbb ax, word [di + 0x1b]                 ; 1B 45 1B
    inc si                                   ; 46
    sbb bp, word [di]                        ; 1B 2D
    xor word [bp + di], bx                   ; 31 1B
    db 02Dh, 030h, 000h               ; sub ax, 0x30
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [bx + si], al                   ; 00 00
    add byte [si], dl                        ; 00 14
    add byte [bx + si + 6], ah               ; 00 60 06
    and byte [si], al                        ; 20 04
    mov al, 0                                ; B0 00
    xor byte [bx + si], al                   ; 30 00
    and byte [si], al                        ; 20 04
    add al, byte [bx + si]                   ; 02 00
    adc ax, 0x6000                           ; 15 00 60
    push es                                  ; 06
    db 062h, 004h                     ; bound ax, dword [si]
    mov al, 0                                ; B0 00
    inc dx                                   ; 42
    add byte [bp + si + 4], ah               ; 00 62 04
    adc al, 0                                ; 14 00
    push ss                                  ; 16
    add byte [bx + si + 6], ah               ; 00 60 06
    add byte [si], 0xb0                      ; 80 04 B0
    db 000h, 060h, 000h               ; add byte [bx + si], ah
    add byte [si], 0x32                      ; 80 04 32
    add byte [si], dl                        ; 00 14
    add byte [bx + si], ah                   ; 00 20
    add al, 0x60                             ; 04 60
    push es                                  ; 06
    xor byte [bx + si], al                   ; 30 00
    mov al, 0                                ; B0 00
    and byte [si], al                        ; 20 04
    add al, byte [bx + si]                   ; 02 00
    adc ax, 0x6200                           ; 15 00 62
    add al, 0x60                             ; 04 60
    push es                                  ; 06
    inc dx                                   ; 42
    add byte [bx + si + 0x6200], dh          ; 00 B0 00 62
    add al, 0x14                             ; 04 14
    add byte [0x8000], dl                    ; 00 16 00 80
    add al, 0x60                             ; 04 60
    push es                                  ; 06
    pushaw                                   ; 60
    add byte [bx + si - 0x8000], dh          ; 00 B0 00 80
    add al, 0x32                             ; 04 32
    add byte [bp + si], bh                   ; 00 3A
    add sp, word [bp + di + 8]               ; 03 63 08
    add byte [bx + si], ah                   ; 00 20
    add byte [bx + si], al                   ; 00 00
    add byte [bx], cl                        ; 00 0F
    add byte [bp + si], dl                   ; 00 12