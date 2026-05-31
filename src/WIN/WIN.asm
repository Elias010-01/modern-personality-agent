; ============================================================
; WIN.COM - Windows 1.03 boot loader / splash screen displayer
; ============================================================
; Disassembled from original/WIN.COM by bootstrap/disasm_win_com.py
; Origin: CS:0100 (DOS .COM)
; File size: 4873 bytes  (1186 code, 3687 data)
; Entry: 0x01C1 (JMP from offset 0)
;
; THE BYTES ARE THE AUTHORITY. The instruction text below is what
; Capstone disassembled; it may be wrong in some cases. The `;[bytes]`
; comments preserve every byte exactly for byte-exact reassembly.
; ============================================================

        .8086
_TEXT   SEGMENT BYTE PUBLIC 'CODE'
        ASSUME  cs:_TEXT, ds:_TEXT, ss:_TEXT, es:_TEXT
        ORG     100h

win_com_start:
; -- data 0x0000..0x01C0 (449B) --
        db E9h, BEh, 01h, 00h, 35h, 00h, 00h, 00h, 00h, 49h, 6Eh, 73h, 65h, 72h, 74h, 20h ;[E9 BE 01 00 35 00 00 00 00 49 6E 73 65 72 74 20]
d_0010:  db 'DOS$Insert Application$Insert Windows Startup$ disk in drive x:'                    ;[44 4f 53 24 49 6e 73 65 72 74 20 41 70 70 6c 69 63 61 74 69 6f 6e 24 49 6e 73 65 72 74 20 57 69 6e 64 6f 77 73 20 53 74 61 72 74 75 70 24 20 64 69 73 6b 20 69 6e 20 64 72 69 76 65 20 78 3a]
        db 0Dh, 0Ah, 50h, 72h, 65h, 73h, 73h, 20h, 61h, 6Eh, 79h, 20h, 6Bh, 65h, 79h, 20h ;[0D 0A 50 72 65 73 73 20 61 6E 79 20 6B 65 79 20]
d_005F:  db 'when ready $'                    ;[77 68 65 6e 20 72 65 61 64 79 20 24]
        db 0Dh, 0Ah, 0Dh, 0Ah, 24h, 50h, 72h, 6Fh, 67h, 72h, 61h, 6Dh, 20h, 74h, 6Fh, 6Fh ;[0D 0A 0D 0A 24 50 72 6F 67 72 61 6D 20 74 6F 6F]
d_007B:  db ' big to fit in memory'                    ;[20 62 69 67 20 74 6f 20 66 69 74 20 69 6e 20 6d 65 6d 6f 72 79]
        db 00h, 4Eh, 6Fh, 74h, 20h, 65h, 6Eh, 6Fh, 75h, 67h, 68h, 20h, 64h, 69h, 73h, 6Bh ;[00 4E 6F 74 20 65 6E 6F 75 67 68 20 64 69 73 6B]
d_00A0:  db ' space for screen exchange'                    ;[20 73 70 61 63 65 20 66 6f 72 20 73 63 72 65 65 6e 20 65 78 63 68 61 6e 67 65]
        db 00h, 43h, 61h, 6Eh, 6Eh, 6Fh, 74h, 20h, 66h, 69h, 6Eh, 64h, 20h, 57h, 69h, 6Eh ;[00 43 61 6E 6E 6F 74 20 66 69 6E 64 20 57 69 6E]
d_00CA:  db 'dows startup files'                    ;[64 6f 77 73 20 73 74 61 72 74 75 70 20 66 69 6c 65 73]
        db 00h, 41h, 3Ah, 5Ch, 43h, 4Fh, 4Dh, 4Dh, 41h, 4Eh, 44h, 2Eh, 43h, 4Fh, 4Dh, 00h ;[00 41 3A 5C 43 4F 4D 4D 41 4E 44 2E 43 4F 4D 00]
d_00EC:  db 'COMSPEC='                    ;[43 4f 4d 53 50 45 43 3d]
        db 00h, 50h, 41h, 54h, 48h, 3Dh, 00h, 57h, 49h, 4Eh, 31h, 30h, 30h, 2Eh, 42h, 49h ;[00 50 41 54 48 3D 00 57 49 4E 31 30 30 2E 42 49]
        db 4Eh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[4E 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 5Ch, 78h, 63h, 68h, 67h, 2Eh, 24h, 24h, 24h, 00h, 00h, 00h ;[00 00 00 00 5C 78 63 68 67 2E 24 24 24 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00]
; -- code 0x01C1..0x03BC (508B) --
L_01C1: mov    sp, 0x890                       ;[bc 90 08]  @ 02C1h
L_01C4: call   0x74a                           ;[e8 83 04]  @ 02C4h
L_01C7: call   0x6e3                           ;[e8 19 04]  @ 02C7h
L_01CA: mov    word ptr [0x100], 0x27a         ;[c7 06 00 01 7a 02]  @ 02CAh
L_01D0: mov    ah, 0x30                        ;[b4 30]  @ 02D0h
L_01D2: int    0x21                            ;[cd 21]  @ 02D2h
L_01D4: mov    byte ptr [0x262], al            ;[a2 62 02]  @ 02D4h
L_01D7: call   0x6a6                           ;[e8 cc 03]  @ 02D7h
L_01DA: mov    ax, 0x5758                      ;[b8 58 57]  @ 02DAh
L_01DD: mov    word ptr [0x263], ax            ;[a3 63 02]  @ 02DDh
L_01E0: mov    byte ptr [0x281], 0             ;[c6 06 81 02 00]  @ 02E0h
L_01E5: call   0x41a                           ;[e8 32 01]  @ 02E5h
L_01E8: pushf                                  ;[9c]  @ 02E8h
L_01E9: push   ax                              ;[50]  @ 02E9h
L_01EA: call   0x745                           ;[e8 58 04]  @ 02EAh
L_01ED: pop    ax                              ;[58]  @ 02EDh
L_01EE: popf                                   ;[9d]  @ 02EEh
L_01EF: jae    0x31a                           ;[73 29]  @ 02EFh
L_01F1: cmp    byte ptr [0x269], 0             ;[80 3e 69 02 00]  @ 02F1h
L_01F6: jne    0x309                           ;[75 11]  @ 02F6h
L_01F8: cmp    al, 8                           ;[3c 08]  @ 02F8h
L_01FA: jne    0x301                           ;[75 05]  @ 02FAh
L_01FC: call   0x3de                           ;[e8 df 00]  @ 02FCh
L_01FF: int    0x20                            ;[cd 20]  @ 02FFh
L_0201: mov    si, 0x1bb                       ;[be bb 01]  @ 0301h
L_0204: call   0x3e1                           ;[e8 da 00]  @ 0304h
L_0207: int    0x20                            ;[cd 20]  @ 0307h
L_0209: cmp    al, 8                           ;[3c 08]  @ 0309h
L_020B: jne    0x312                           ;[75 05]  @ 030Bh
L_020D: call   0x654                           ;[e8 44 03]  @ 030Dh
L_0210: jmp    0x2d7                           ;[eb c5]  @ 0310h
L_0212: call   0x4da                           ;[e8 c5 01]  @ 0312h
L_0215: call   0x3fa                           ;[e8 e2 00]  @ 0315h
L_0218: jmp    0x2d7                           ;[eb bd]  @ 0318h
L_021A: mov    byte ptr [0x269], 1             ;[c6 06 69 02 01]  @ 031Ah
L_021F: cmp    byte ptr [0x281], 0             ;[80 3e 81 02 00]  @ 031Fh
L_0224: jne    0x329                           ;[75 03]  @ 0324h
L_0226: jmp    0x3bf                           ;[e9 96 00]  @ 0326h
L_0229: call   0x5a1                           ;[e8 75 02]  @ 0329h
L_022C: mov    ax, word ptr [0x27e]            ;[a1 7e 02]  @ 032Ch
L_022F: or     ax, ax                          ;[0b c0]  @ 032Fh
L_0231: je     0x342                           ;[74 0f]  @ 0331h
L_0233: mov    si, 0                           ;[be 00 00]  @ 0333h
L_0236: call   0x5c5                           ;[e8 8c 02]  @ 0336h
L_0239: call   0x5d5                           ;[e8 99 02]  @ 0339h
L_023C: mov    si, 3                           ;[be 03 00]  @ 033Ch
L_023F: call   0x5c5                           ;[e8 83 02]  @ 033Fh
L_0242: mov    dx, 0x281                       ;[ba 81 02]  @ 0342h
L_0245: call   0x476                           ;[e8 2e 01]  @ 0345h
L_0248: jae    0x36c                           ;[73 22]  @ 0348h
L_024A: cmp    ax, 2                           ;[3d 02 00]  @ 034Ah
L_024D: jne    0x35a                           ;[75 0b]  @ 034Dh
L_024F: mov    dx, 0x114                       ;[ba 14 01]  @ 034Fh
L_0252: mov    si, 0x281                       ;[be 81 02]  @ 0352h
L_0255: call   0x3fd                           ;[e8 a5 00]  @ 0355h
L_0258: jmp    0x342                           ;[eb e8]  @ 0358h
L_025A: cmp    ax, 8                           ;[3d 08 00]  @ 035Ah
L_025D: jne    0x36b                           ;[75 0c]  @ 035Dh
L_025F: cmp    byte ptr [0x262], 3             ;[80 3e 62 02 03]  @ 035Fh
L_0264: jae    0x36b                           ;[73 05]  @ 0364h
L_0266: call   0x654                           ;[e8 eb 02]  @ 0366h
L_0269: jmp    0x342                           ;[eb d7]  @ 0369h
L_026B: stc                                    ;[f9]  @ 036Bh
L_026C: mov    word ptr [0x80], 0xd00          ;[c7 06 80 00 00 0d]  @ 036Ch
L_0272: pushf                                  ;[9c]  @ 0372h
L_0273: cmp    word ptr [0x27e], 0             ;[83 3e 7e 02 00]  @ 0373h
L_0278: je     0x380                           ;[74 06]  @ 0378h
L_027A: mov    si, 6                           ;[be 06 00]  @ 037Ah
L_027D: call   0x5c5                           ;[e8 45 02]  @ 037Dh
L_0280: popf                                   ;[9d]  @ 0380h
L_0281: jae    0x389                           ;[73 06]  @ 0381h
L_0283: call   0x3de                           ;[e8 58 00]  @ 0383h
L_0286: jmp    0x2da                           ;[e9 51 ff]  @ 0386h
L_0289: call   0x647                           ;[e8 bb 02]  @ 0389h
L_028C: mov    si, 9                           ;[be 09 00]  @ 038Ch
L_028F: mov    ax, si                          ;[8b c6]  @ 038Fh
L_0291: jcxz   0x395                           ;[e3 02]  @ 0391h
L_0293: xor    ax, ax                          ;[33 c0]  @ 0393h
L_0295: test   byte ptr [0x280], 0x10          ;[f6 06 80 02 10]  @ 0395h
L_029A: jne    0x39f                           ;[75 03]  @ 039Ah
L_029C: call   0x5c5                           ;[e8 26 02]  @ 039Ch
L_029F: call   0x610                           ;[e8 6e 02]  @ 039Fh
L_02A2: pushf                                  ;[9c]  @ 03A2h
L_02A3: push   cx                              ;[51]  @ 03A3h
L_02A4: call   0x5fa                           ;[e8 53 02]  @ 03A4h
L_02A7: call   0x745                           ;[e8 9b 03]  @ 03A7h
L_02AA: pop    cx                              ;[59]  @ 03AAh
L_02AB: popf                                   ;[9d]  @ 03ABh
L_02AC: jb     0x3b4                           ;[72 06]  @ 03ACh
L_02AE: mov    ax, 0x5747                      ;[b8 47 57]  @ 03AEh
L_02B1: jmp    0x2dd                           ;[e9 29 ff]  @ 03B1h
L_02B4: jcxz   0x3bc                           ;[e3 06]  @ 03B4h
L_02B6: mov    si, 0x191                       ;[be 91 01]  @ 03B6h
L_02B9: call   0x3e1                           ;[e8 25 00]  @ 03B9h
L_02BC: jmp    0x2da                           ;[e9 1b ff]  @ 03BCh
L_02BF: mov    dx, 0x258                       ;[ba 58 02]  @ 03BFh
L_02C2: mov    ah, 0x41                        ;[b4 41]  @ 03C2h
L_02C4: int    0x21                            ;[cd 21]  @ 03C4h
L_02C6: mov    si, 0x6e3                       ;[be e3 06]  @ 03C6h
L_02C9: call   0x4dd                           ;[e8 11 01]  @ 03C9h
L_02CC: mov    dx, si                          ;[8b d6]  @ 03CCh
L_02CE: mov    ah, 0x3b                        ;[b4 3b]  @ 03CEh
L_02D0: int    0x21                            ;[cd 21]  @ 03D0h
L_02D2: mov    ah, 0x4d                        ;[b4 4d]  @ 03D2h
L_02D4: int    0x21                            ;[cd 21]  @ 03D4h
L_02D6: mov    ah, 0x4c                        ;[b4 4c]  @ 03D6h
L_02D8: int    0x21                            ;[cd 21]  @ 03D8h
L_02DA: cmp    al, 8                           ;[3c 08]  @ 03DAh
L_02DC: jne    0x3e1                           ;[75 03]  @ 03DCh
L_02DE: mov    si, 0x170                       ;[be 70 01]  @ 03DEh
L_02E1: lodsb  al, byte ptr [si]               ;[ac]  @ 03E1h
L_02E2: or     al, al                          ;[0a c0]  @ 03E2h
L_02E4: je     0x3ee                           ;[74 08]  @ 03E4h
L_02E6: mov    dl, al                          ;[8a d0]  @ 03E6h
L_02E8: mov    ah, 2                           ;[b4 02]  @ 03E8h
L_02EA: int    0x21                            ;[cd 21]  @ 03EAh
L_02EC: jmp    0x3e1                           ;[eb f3]  @ 03ECh
L_02EE: mov    dl, 0xd                         ;[b2 0d]  @ 03EEh
L_02F0: call   0x3f5                           ;[e8 02 00]  @ 03F0h
L_02F3: mov    dl, 0xa                         ;[b2 0a]  @ 03F3h
L_02F5: mov    ah, 2                           ;[b4 02]  @ 03F5h
L_02F7: int    0x21                            ;[cd 21]  @ 03F7h
L_02F9: ret                                    ;[c3]  @ 03F9h
L_02FA: mov    dx, 0x127                       ;[ba 27 01]  @ 03FAh
L_02FD: mov    ax, word ptr [si]               ;[8b 04]  @ 03FDh
L_02FF: mov    byte ptr [0x14d], al            ;[a2 4d 01]  @ 03FFh
L_0302: mov    ah, 9                           ;[b4 09]  @ 0402h
L_0304: int    0x21                            ;[cd 21]  @ 0404h
L_0306: mov    dx, 0x13e                       ;[ba 3e 01]  @ 0406h
L_0309: mov    ah, 9                           ;[b4 09]  @ 0409h
L_030B: int    0x21                            ;[cd 21]  @ 040Bh
L_030D: mov    ax, 0xc08                       ;[b8 08 0c]  @ 040Dh
L_0310: int    0x21                            ;[cd 21]  @ 0410h
L_0312: mov    dx, 0x16b                       ;[ba 6b 01]  @ 0412h
L_0315: mov    ah, 9                           ;[b4 09]  @ 0415h
L_0317: int    0x21                            ;[cd 21]  @ 0417h
L_0319: ret                                    ;[c3]  @ 0419h
L_031A: cld                                    ;[fc]  @ 041Ah
L_031B: push   ss                              ;[16]  @ 041Bh
L_031C: pop    es                              ;[07]  @ 041Ch
L_031D: mov    ax, word ptr [0x263]            ;[a1 63 02]  @ 041Dh
L_0320: mov    word ptr [0xfe], ax             ;[a3 fe 00]  @ 0420h
L_0323: mov    si, 0x1fb                       ;[be fb 01]  @ 0423h
L_0326: mov    cx, 0xd                         ;[b9 0d 00]  @ 0426h
L_0329: cmp    byte ptr [0x269], 0             ;[80 3e 69 02 00]  @ 0429h
L_032E: je     0x43e                           ;[74 0e]  @ 042Eh
L_0330: mov    si, 0x206                       ;[be 06 02]  @ 0430h
L_0333: mov    di, si                          ;[8b fe]  @ 0433h
L_0335: mov    cx, 0xffff                      ;[b9 ff ff]  @ 0435h
L_0338: xor    ax, ax                          ;[33 c0]  @ 0438h
L_033A: repne scasb al, byte ptr es:[di]            ;[f2 ae]  @ 043Ah
L_033C: not    cx                              ;[f7 d1]  @ 043Ch
L_033E: mov    di, 0x80                        ;[bf 80 00]  @ 043Eh
L_0341: xor    ax, ax                          ;[33 c0]  @ 0441h
L_0343: mov    al, byte ptr [di]               ;[8a 05]  @ 0443h
L_0345: add    al, cl                          ;[02 c1]  @ 0445h
L_0347: add    ax, 3                           ;[05 03 00]  @ 0447h
L_034A: sub    ax, 0x7e                        ;[2d 7e 00]  @ 044Ah
L_034D: jle    0x451                           ;[7e 02]  @ 044Dh
L_034F: sub    byte ptr [di], al               ;[28 05]  @ 044Fh
L_0351: xor    ax, ax                          ;[33 c0]  @ 0451h
L_0353: mov    al, byte ptr [di]               ;[8a 05]  @ 0453h
L_0355: inc    di                              ;[47]  @ 0455h
L_0356: add    di, ax                          ;[03 f8]  @ 0456h
L_0358: mov    al, 0xd                         ;[b0 0d]  @ 0458h
L_035A: stosb  byte ptr es:[di], al            ;[aa]  @ 045Ah
L_035B: mov    ax, cx                          ;[8b c1]  @ 045Bh
L_035D: stosb  byte ptr es:[di], al            ;[aa]  @ 045Dh
L_035E: cmp    byte ptr [0x269], 0             ;[80 3e 69 02 00]  @ 045Eh
L_0363: jne    0x471                           ;[75 0c]  @ 0463h
L_0365: mov    ah, 0x19                        ;[b4 19]  @ 0465h
L_0367: int    0x21                            ;[cd 21]  @ 0467h
L_0369: add    al, 0x41                        ;[04 41]  @ 0469h
L_036B: mov    ah, 0x3a                        ;[b4 3a]  @ 046Bh
L_036D: stosw  word ptr es:[di], ax            ;[ab]  @ 046Dh
L_036E: sub    cx, 2                           ;[83 e9 02]  @ 046Eh
L_0371: rep movsb byte ptr es:[di], byte ptr [si]    ;[f3 a4]  @ 0471h
L_0373: mov    dx, 0x206                       ;[ba 06 02]  @ 0473h
L_0376: mov    ax, ds                          ;[8c d8]  @ 0476h
L_0378: mov    es, ax                          ;[8e c0]  @ 0478h
L_037A: mov    word ptr [0x26c], 0x80          ;[c7 06 6c 02 80 00]  @ 047Ah
L_0380: mov    word ptr [0x26e], ds            ;[8c 1e 6e 02]  @ 0480h
L_0384: mov    word ptr [0x270], 0x5c          ;[c7 06 70 02 5c 00]  @ 0484h
L_038A: mov    word ptr [0x272], ds            ;[8c 1e 72 02]  @ 048Ah
L_038E: mov    word ptr [0x274], 0x6c          ;[c7 06 74 02 6c 00]  @ 048Eh
L_0394: mov    word ptr [0x276], ds            ;[8c 1e 76 02]  @ 0494h
L_0398: mov    si, 0x81                        ;[be 81 00]  @ 0498h
L_039B: mov    di, 0x5c                        ;[bf 5c 00]  @ 049Bh
L_039E: mov    ax, 0x2901                      ;[b8 01 29]  @ 049Eh
L_03A1: int    0x21                            ;[cd 21]  @ 04A1h
L_03A3: mov    di, 0x6c                        ;[bf 6c 00]  @ 04A3h
L_03A6: mov    ax, 0x2901                      ;[b8 01 29]  @ 04A6h
L_03A9: int    0x21                            ;[cd 21]  @ 04A9h
L_03AB: mov    bx, 0x26a                       ;[bb 6a 02]  @ 04ABh
L_03AE: push   ds                              ;[1e]  @ 04AEh
L_03AF: pop    es                              ;[07]  @ 04AFh
L_03B0: mov    ax, word ptr [0x2c]             ;[a1 2c 00]  @ 04B0h
L_03B3: mov    word ptr [bx], ax               ;[89 07]  @ 04B3h
L_03B5: push   ds                              ;[1e]  @ 04B5h
L_03B6: push   dx                              ;[52]  @ 04B6h
L_03B7: push   es                              ;[06]  @ 04B7h
L_03B8: push   bx                              ;[53]  @ 04B8h
L_03B9: call   0x4e7                           ;[e8 2b 00]  @ 04B9h
L_03BC: ret                                    ;[c3]  @ 04BCh
; -- data 0x03BD..0x03D9 (29B) --
        db E8h, 1Ah, 00h, 56h, ACh, 0Ah, C0h, 75h, FBh, B1h, 5Ch, 4Eh, 38h, 0Ch, 75h, FBh ;[E8 1A 00 56 AC 0A C0 75 FB B1 5C 4E 38 0C 75 FB]
        db C6h, 04h, 00h, 5Ah, B4h, 3Bh, CDh, 21h, 88h, 0Ch, 8Bh, F2h, C3h ;[C6 04 00 5A B4 3B CD 21 88 0C 8B F2 C3]
; -- code 0x03DA..0x067F (678B) --
L_03DA: mov    si, 0x206                       ;[be 06 02]  @ 04DAh
L_03DD: mov    dl, byte ptr [si]               ;[8a 14]  @ 04DDh
L_03DF: sub    dl, 0x41                        ;[80 ea 41]  @ 04DFh
L_03E2: mov    ah, 0xe                         ;[b4 0e]  @ 04E2h
L_03E4: int    0x21                            ;[cd 21]  @ 04E4h
L_03E6: ret                                    ;[c3]  @ 04E6h
L_03E7: push   bp                              ;[55]  @ 04E7h
L_03E8: mov    bp, sp                          ;[8b ec]  @ 04E8h
L_03EA: sub    sp, 0x54                        ;[83 ec 54]  @ 04EAh
L_03ED: push   ds                              ;[1e]  @ 04EDh
L_03EE: cld                                    ;[fc]  @ 04EEh
L_03EF: lds    si, ptr [bp + 8]                ;[c5 76 08]  @ 04EFh
L_03F2: push   ss                              ;[16]  @ 04F2h
L_03F3: pop    es                              ;[07]  @ 04F3h
L_03F4: lea    di, [bp - 0x52]                 ;[8d 7e ae]  @ 04F4h
L_03F7: mov    bx, di                          ;[8b df]  @ 04F7h
L_03F9: lodsb  al, byte ptr [si]               ;[ac]  @ 04F9h
L_03FA: cmp    al, 0x2f                        ;[3c 2f]  @ 04FAh
L_03FC: je     0x506                           ;[74 08]  @ 04FCh
L_03FE: cmp    al, 0x5c                        ;[3c 5c]  @ 04FEh
L_0400: je     0x506                           ;[74 04]  @ 0500h
L_0402: cmp    al, 0x3a                        ;[3c 3a]  @ 0502h
L_0404: jne    0x509                           ;[75 03]  @ 0504h
L_0406: mov    bx, di                          ;[8b df]  @ 0506h
L_0408: inc    bx                              ;[43]  @ 0508h
L_0409: stosb  byte ptr es:[di], al            ;[aa]  @ 0509h
L_040A: or     al, al                          ;[0a c0]  @ 050Ah
L_040C: jne    0x4f9                           ;[75 eb]  @ 050Ch
L_040E: mov    word ptr [bp - 0x54], bx        ;[89 5e ac]  @ 050Eh
L_0411: lds    dx, ptr [bp + 8]                ;[c5 56 08]  @ 0511h
L_0414: les    bx, ptr [bp + 4]                ;[c4 5e 04]  @ 0514h
L_0417: call   0x582                           ;[e8 68 00]  @ 0517h
L_041A: jae    0x57b                           ;[73 5f]  @ 051Ah
L_041C: cmp    al, 2                           ;[3c 02]  @ 051Ch
L_041E: je     0x524                           ;[74 04]  @ 051Eh
L_0420: cmp    al, 3                           ;[3c 03]  @ 0520h
L_0422: jne    0x57a                           ;[75 56]  @ 0522h
L_0424: call   0x682                           ;[e8 5b 01]  @ 0524h
L_0427: jne    0x57a                           ;[75 51]  @ 0527h
L_0429: les    di, ptr [bp + 8]                ;[c4 7e 08]  @ 0529h
L_042C: cmp    byte ptr [si + 1], 0x3a         ;[80 7c 01 3a]  @ 052Ch
L_0430: je     0x53b                           ;[74 09]  @ 0530h
L_0432: mov    ah, 0x19                        ;[b4 19]  @ 0532h
L_0434: int    0x21                            ;[cd 21]  @ 0534h
L_0436: add    al, 0x41                        ;[04 41]  @ 0536h
L_0438: mov    ah, 0x3a                        ;[b4 3a]  @ 0538h
L_043A: stosw  word ptr es:[di], ax            ;[ab]  @ 053Ah
L_043B: lodsb  al, byte ptr [si]               ;[ac]  @ 053Bh
L_043C: stosb  byte ptr es:[di], al            ;[aa]  @ 053Ch
L_043D: cmp    al, 0x3b                        ;[3c 3b]  @ 053Dh
L_043F: je     0x546                           ;[74 05]  @ 053Fh
L_0441: or     al, al                          ;[0a c0]  @ 0541h
L_0443: jne    0x53b                           ;[75 f6]  @ 0543h
L_0445: dec    si                              ;[4e]  @ 0545h
L_0446: mov    al, 0x5c                        ;[b0 5c]  @ 0546h
L_0448: cmp    byte ptr es:[di - 2], al        ;[26 38 45 fe]  @ 0548h
L_044C: jne    0x54f                           ;[75 01]  @ 054Ch
L_044E: dec    di                              ;[4f]  @ 054Eh
L_044F: mov    byte ptr es:[di - 1], al        ;[26 88 45 ff]  @ 054Fh
L_0453: push   ds                              ;[1e]  @ 0553h
L_0454: push   si                              ;[56]  @ 0554h
L_0455: push   ss                              ;[16]  @ 0555h
L_0456: pop    ds                              ;[1f]  @ 0556h
L_0457: mov    si, word ptr [bp - 0x54]        ;[8b 76 ac]  @ 0557h
L_045A: lodsb  al, byte ptr [si]               ;[ac]  @ 055Ah
L_045B: stosb  byte ptr es:[di], al            ;[aa]  @ 055Bh
L_045C: or     al, al                          ;[0a c0]  @ 055Ch
L_045E: jne    0x55a                           ;[75 fa]  @ 055Eh
L_0460: lds    dx, ptr [bp + 8]                ;[c5 56 08]  @ 0560h
L_0463: les    bx, ptr [bp + 4]                ;[c4 5e 04]  @ 0563h
L_0466: call   0x582                           ;[e8 19 00]  @ 0566h
L_0469: pop    si                              ;[5e]  @ 0569h
L_046A: pop    ds                              ;[1f]  @ 056Ah
L_046B: jae    0x57b                           ;[73 0e]  @ 056Bh
L_046D: cmp    al, 2                           ;[3c 02]  @ 056Dh
L_046F: je     0x575                           ;[74 04]  @ 056Fh
L_0471: cmp    al, 3                           ;[3c 03]  @ 0571h
L_0473: jne    0x57a                           ;[75 05]  @ 0573h
L_0475: cmp    byte ptr [si], 0                ;[80 3c 00]  @ 0575h
L_0478: jne    0x529                           ;[75 af]  @ 0578h
L_047A: stc                                    ;[f9]  @ 057Ah
L_047B: pop    ds                              ;[1f]  @ 057Bh
L_047C: mov    sp, bp                          ;[8b e5]  @ 057Ch
L_047E: pop    bp                              ;[5d]  @ 057Eh
L_047F: ret    8                               ;[c2 08 00]  @ 057Fh
L_0482: clc                                    ;[f8]  @ 0582h
L_0483: push   ds                              ;[1e]  @ 0583h
L_0484: push   bp                              ;[55]  @ 0584h
L_0485: mov    word ptr cs:[0x105], ss         ;[2e 8c 16 05 01]  @ 0585h
L_048A: mov    word ptr cs:[0x107], sp         ;[2e 89 26 07 01]  @ 058Ah
L_048F: mov    ax, 0x4b00                      ;[b8 00 4b]  @ 058Fh
L_0492: int    0x21                            ;[cd 21]  @ 0592h
L_0494: mov    ss, word ptr cs:[0x105]         ;[2e 8e 16 05 01]  @ 0594h
L_0499: mov    sp, word ptr cs:[0x107]         ;[2e 8b 26 07 01]  @ 0599h
L_049E: pop    bp                              ;[5d]  @ 059Eh
L_049F: pop    ds                              ;[1f]  @ 059Fh
L_04A0: ret                                    ;[c3]  @ 05A0h
L_04A1: push   es                              ;[06]  @ 05A1h
L_04A2: push   ds                              ;[1e]  @ 05A2h
L_04A3: mov    bx, word ptr [0x27c]            ;[8b 1e 7c 02]  @ 05A3h
L_04A7: mov    cx, bx                          ;[8b cb]  @ 05A7h
L_04A9: mov    ah, 0x48                        ;[b4 48]  @ 05A9h
L_04AB: int    0x21                            ;[cd 21]  @ 05ABh
L_04AD: mov    es, ax                          ;[8e c0]  @ 05ADh
L_04AF: xchg   word ptr [0x27a], ax            ;[87 06 7a 02]  @ 05AFh
L_04B3: mov    ds, ax                          ;[8e d8]  @ 05B3h
L_04B5: xor    si, si                          ;[33 f6]  @ 05B5h
L_04B7: xor    di, di                          ;[33 ff]  @ 05B7h
L_04B9: shl    cx, 1                           ;[d1 e1]  @ 05B9h
L_04BB: shl    cx, 1                           ;[d1 e1]  @ 05BBh
L_04BD: shl    cx, 1                           ;[d1 e1]  @ 05BDh
L_04BF: cld                                    ;[fc]  @ 05BFh
L_04C0: rep movsw word ptr es:[di], word ptr [si]    ;[f3 a5]  @ 05C0h
L_04C2: pop    ds                              ;[1f]  @ 05C2h
L_04C3: pop    es                              ;[07]  @ 05C3h
L_04C4: ret                                    ;[c3]  @ 05C4h
L_04C5: push   ds                              ;[1e]  @ 05C5h
L_04C6: mov    word ptr [0x278], si            ;[89 36 78 02]  @ 05C6h
L_04CA: mov    ds, word ptr [0x27a]            ;[8e 1e 7a 02]  @ 05CAh
L_04CE: lcall  ss:[0x278]                      ;[36 ff 1e 78 02]  @ 05CEh
L_04D3: pop    ds                              ;[1f]  @ 05D3h
L_04D4: ret                                    ;[c3]  @ 05D4h
L_04D5: push   ax                              ;[50]  @ 05D5h
L_04D6: add    ax, 0xf                         ;[05 0f 00]  @ 05D6h
L_04D9: mov    cl, 4                           ;[b1 04]  @ 05D9h
L_04DB: shr    ax, cl                          ;[d3 e8]  @ 05DBh
L_04DD: mov    bx, ax                          ;[8b d8]  @ 05DDh
L_04DF: mov    ah, 0x48                        ;[b4 48]  @ 05DFh
L_04E1: int    0x21                            ;[cd 21]  @ 05E1h
L_04E3: jb     0x5f9                           ;[72 14]  @ 05E3h
L_04E5: mov    es, ax                          ;[8e c0]  @ 05E5h
L_04E7: xor    di, di                          ;[33 ff]  @ 05E7h
L_04E9: xor    ax, ax                          ;[33 c0]  @ 05E9h
L_04EB: mov    word ptr [0x265], ax            ;[a3 65 02]  @ 05EBh
L_04EE: mov    word ptr [0x267], es            ;[8c 06 67 02]  @ 05EEh
L_04F2: stosw  word ptr es:[di], ax            ;[ab]  @ 05F2h
L_04F3: stosw  word ptr es:[di], ax            ;[ab]  @ 05F3h
L_04F4: pop    ax                              ;[58]  @ 05F4h
L_04F5: xor    dx, dx                          ;[33 d2]  @ 05F5h
L_04F7: mov    di, dx                          ;[8b fa]  @ 05F7h
L_04F9: ret                                    ;[c3]  @ 05F9h
L_04FA: mov    cx, word ptr [0x267]            ;[8b 0e 67 02]  @ 05FAh
L_04FE: jcxz   0x603                           ;[e3 03]  @ 05FEh
L_0500: call   0x609                           ;[e8 06 00]  @ 0600h
L_0503: mov    cx, word ptr [0x27a]            ;[8b 0e 7a 02]  @ 0603h
L_0507: jcxz   0x60f                           ;[e3 06]  @ 0607h
L_0509: mov    es, cx                          ;[8e c1]  @ 0609h
L_050B: mov    ah, 0x49                        ;[b4 49]  @ 060Bh
L_050D: int    0x21                            ;[cd 21]  @ 060Dh
L_050F: ret                                    ;[c3]  @ 060Fh
L_0510: call   0x647                           ;[e8 34 00]  @ 0610h
L_0513: jcxz   0x63e                           ;[e3 29]  @ 0613h
L_0515: push   ds                              ;[1e]  @ 0615h
L_0516: call   0x4da                           ;[e8 c1 fe]  @ 0616h
L_0519: mov    dx, 0x258                       ;[ba 58 02]  @ 0619h
L_051C: xor    cx, cx                          ;[33 c9]  @ 061Ch
L_051E: mov    ah, 0x3c                        ;[b4 3c]  @ 061Eh
L_0520: int    0x21                            ;[cd 21]  @ 0620h
L_0522: jb     0x63a                           ;[72 16]  @ 0622h
L_0524: mov    bx, ax                          ;[8b d8]  @ 0624h
L_0526: lds    dx, ptr [0x265]                 ;[c5 16 65 02]  @ 0626h
L_052A: mov    di, dx                          ;[8b fa]  @ 062Ah
L_052C: mov    cx, word ptr [di + 2]           ;[8b 4d 02]  @ 062Ch
L_052F: add    cx, 4                           ;[83 c1 04]  @ 062Fh
L_0532: mov    ah, 0x40                        ;[b4 40]  @ 0632h
L_0534: int    0x21                            ;[cd 21]  @ 0634h
L_0536: mov    ah, 0x3e                        ;[b4 3e]  @ 0636h
L_0538: int    0x21                            ;[cd 21]  @ 0638h
L_053A: pop    ds                              ;[1f]  @ 063Ah
L_053B: mov    cl, 1                           ;[b1 01]  @ 063Bh
L_053D: ret                                    ;[c3]  @ 063Dh
L_053E: mov    dx, 0x258                       ;[ba 58 02]  @ 063Eh
L_0541: mov    ah, 0x41                        ;[b4 41]  @ 0641h
L_0543: int    0x21                            ;[cd 21]  @ 0643h
L_0545: stc                                    ;[f9]  @ 0645h
L_0546: ret                                    ;[c3]  @ 0646h
L_0547: les    di, ptr [0x265]                 ;[c4 3e 65 02]  @ 0647h
L_054B: mov    cx, es                          ;[8c c1]  @ 064Bh
L_054D: jcxz   0x653                           ;[e3 04]  @ 064Dh
L_054F: mov    cx, word ptr es:[di + 2]        ;[26 8b 4d 02]  @ 064Fh
L_0553: ret                                    ;[c3]  @ 0653h
L_0554: mov    di, 0x1ec                       ;[bf ec 01]  @ 0654h
L_0557: mov    cx, 8                           ;[b9 08 00]  @ 0657h
L_055A: call   0x688                           ;[e8 2b 00]  @ 065Ah
L_055D: je     0x664                           ;[74 05]  @ 065Dh
L_055F: push   cs                              ;[0e]  @ 065Fh
L_0560: pop    ds                              ;[1f]  @ 0660h
L_0561: mov    si, 0x1dd                       ;[be dd 01]  @ 0661h
L_0564: mov    di, ds                          ;[8c df]  @ 0664h
L_0566: mov    ax, word ptr [si]               ;[8b 04]  @ 0666h
L_0568: mov    byte ptr cs:[0x14d], al         ;[2e a2 4d 01]  @ 0668h
L_056C: mov    ds, di                          ;[8e df]  @ 066Ch
L_056E: mov    dx, si                          ;[8b d6]  @ 066Eh
L_0570: mov    ax, 0x4300                      ;[b8 00 43]  @ 0670h
L_0573: int    0x21                            ;[cd 21]  @ 0673h
L_0575: push   cs                              ;[0e]  @ 0675h
L_0576: pop    ds                              ;[1f]  @ 0676h
L_0577: jae    0x681                           ;[73 08]  @ 0677h
L_0579: mov    dx, 0x109                       ;[ba 09 01]  @ 0679h
L_057C: call   0x402                           ;[e8 83 fd]  @ 067Ch
L_057F: jmp    0x66c                           ;[eb eb]  @ 067Fh
L_0581: ret                                    ;[c3]  @ 0681h
L_0582: mov    di, 0x1f5                       ;[bf f5 01]  @ 0682h
L_0585: mov    cx, 5                           ;[b9 05 00]  @ 0685h
L_0588: push   ss                              ;[16]  @ 0688h
L_0589: pop    es                              ;[07]  @ 0689h
L_058A: mov    ds, word ptr es:[0x2c]          ;[26 8e 1e 2c 00]  @ 068Ah
L_058F: xor    si, si                          ;[33 f6]  @ 068Fh
L_0591: push   cx                              ;[51]  @ 0691h
L_0592: push   di                              ;[57]  @ 0692h
L_0593: repe cmpsb byte ptr [si], byte ptr es:[di]    ;[f3 a6]  @ 0693h
L_0595: pop    di                              ;[5f]  @ 0695h
L_0596: pop    cx                              ;[59]  @ 0696h
L_0597: je     0x6a5                           ;[74 0c]  @ 0697h
L_0599: lodsb  al, byte ptr [si]               ;[ac]  @ 0699h
L_059A: or     al, al                          ;[0a c0]  @ 069Ah
L_059C: jne    0x699                           ;[75 fb]  @ 069Ch
L_059E: cmp    byte ptr [si], 0                ;[80 3c 00]  @ 069Eh
L_05A1: jne    0x691                           ;[75 ee]  @ 06A1h
L_05A3: or     cx, cx                          ;[0b c9]  @ 06A3h
L_05A5: ret                                    ;[c3]  @ 06A5h
L_05A6: cld                                    ;[fc]  @ 06A6h
L_05A7: push   ds                              ;[1e]  @ 06A7h
L_05A8: pop    es                              ;[07]  @ 06A8h
L_05A9: mov    di, 0x206                       ;[bf 06 02]  @ 06A9h
L_05AC: mov    ah, 0x19                        ;[b4 19]  @ 06ACh
L_05AE: int    0x21                            ;[cd 21]  @ 06AEh
L_05B0: add    al, 0x41                        ;[04 41]  @ 06B0h
L_05B2: stosb  byte ptr es:[di], al            ;[aa]  @ 06B2h
L_05B3: mov    ax, 0x5c3a                      ;[b8 3a 5c]  @ 06B3h
L_05B6: stosw  word ptr es:[di], ax            ;[ab]  @ 06B6h
L_05B7: mov    si, di                          ;[8b f7]  @ 06B7h
L_05B9: xor    dx, dx                          ;[33 d2]  @ 06B9h
L_05BB: mov    ah, 0x47                        ;[b4 47]  @ 06BBh
L_05BD: int    0x21                            ;[cd 21]  @ 06BDh
L_05BF: mov    si, 0x206                       ;[be 06 02]  @ 06BFh
L_05C2: mov    di, 0x6e3                       ;[bf e3 06]  @ 06C2h
L_05C5: lodsb  al, byte ptr [si]               ;[ac]  @ 06C5h
L_05C6: stosb  byte ptr es:[di], al            ;[aa]  @ 06C6h
L_05C7: or     al, al                          ;[0a c0]  @ 06C7h
L_05C9: jne    0x6c5                           ;[75 fa]  @ 06C9h
L_05CB: mov    al, 0x5c                        ;[b0 5c]  @ 06CBh
L_05CD: cmp    byte ptr [si - 2], al           ;[38 44 fe]  @ 06CDh
L_05D0: jne    0x6d3                           ;[75 01]  @ 06D0h
L_05D2: dec    si                              ;[4e]  @ 06D2h
L_05D3: mov    byte ptr [si - 1], al           ;[88 44 ff]  @ 06D3h
L_05D6: mov    di, si                          ;[8b fe]  @ 06D6h
L_05D8: mov    si, 0x1fb                       ;[be fb 01]  @ 06D8h
L_05DB: lodsb  al, byte ptr [si]               ;[ac]  @ 06DBh
L_05DC: stosb  byte ptr es:[di], al            ;[aa]  @ 06DCh
L_05DD: or     al, al                          ;[0a c0]  @ 06DDh
L_05DF: jne    0x6db                           ;[75 fa]  @ 06DFh
L_05E1: clc                                    ;[f8]  @ 06E1h
L_05E2: ret                                    ;[c3]  @ 06E2h
L_05E3: add    ax, 0x89f                       ;[05 9f 08]  @ 06E3h
L_05E6: mov    cl, 4                           ;[b1 04]  @ 06E6h
L_05E8: shr    ax, cl                          ;[d3 e8]  @ 06E8h
L_05EA: mov    bx, ax                          ;[8b d8]  @ 06EAh
L_05EC: push   ss                              ;[16]  @ 06ECh
L_05ED: pop    es                              ;[07]  @ 06EDh
L_05EE: mov    ah, 0x4a                        ;[b4 4a]  @ 06EEh
L_05F0: int    0x21                            ;[cd 21]  @ 06F0h
L_05F2: mov    bx, 0xffff                      ;[bb ff ff]  @ 06F2h
L_05F5: mov    ah, 0x48                        ;[b4 48]  @ 06F5h
L_05F7: int    0x21                            ;[cd 21]  @ 06F7h
L_05F9: cmp    bx, word ptr cs:[0x103]         ;[2e 3b 1e 03 01]  @ 06F9h
L_05FE: jae    0x709                           ;[73 09]  @ 06FEh
L_0600: call   0x745                           ;[e8 42 00]  @ 0700h
L_0603: call   0x3de                           ;[e8 d8 fc]  @ 0703h
L_0606: jmp    0x3bf                           ;[e9 b6 fc]  @ 0706h
L_0609: cmp    word ptr cs:[0x81], 0x2120      ;[2e 81 3e 81 00 20 21]  @ 0709h
L_0610: jne    0x744                           ;[75 32]  @ 0710h
L_0612: sub    bx, word ptr cs:[0x103]         ;[2e 2b 1e 03 01]  @ 0712h
L_0617: mov    byte ptr cs:[0x82], 0x20        ;[2e c6 06 82 00 20]  @ 0717h
L_061D: xor    ax, ax                          ;[33 c0]  @ 071Dh
L_061F: mov    al, byte ptr cs:[0x83]          ;[2e a0 83 00]  @ 071Fh
L_0623: sub    al, 0x30                        ;[2c 30]  @ 0723h
L_0625: cmp    al, 9                           ;[3c 09]  @ 0725h
L_0627: ja     0x740                           ;[77 17]  @ 0727h
L_0629: mov    byte ptr cs:[0x83], 0x20        ;[2e c6 06 83 00 20]  @ 0729h
L_062F: mov    cl, 0xc                         ;[b1 0c]  @ 072Fh
L_0631: shl    ax, cl                          ;[d3 e0]  @ 0731h
L_0633: or     ax, ax                          ;[0b c0]  @ 0733h
L_0635: jne    0x73a                           ;[75 03]  @ 0735h
L_0637: mov    ax, 0x400                       ;[b8 00 04]  @ 0737h
L_063A: cmp    ax, bx                          ;[3b c3]  @ 073Ah
L_063C: jae    0x744                           ;[73 06]  @ 073Ch
L_063E: sub    bx, ax                          ;[2b d8]  @ 073Eh
L_0640: mov    ah, 0x48                        ;[b4 48]  @ 0740h
L_0642: int    0x21                            ;[cd 21]  @ 0742h
L_0644: ret                                    ;[c3]  @ 0744h
L_0645: mov    di, 7                           ;[bf 07 00]  @ 0745h
L_0648: jmp    0x757                           ;[eb 0d]  @ 0748h
L_064A: mov    di, 4                           ;[bf 04 00]  @ 074Ah
L_064D: cmp    byte ptr [0x80], 0              ;[80 3e 80 00 00]  @ 074Dh
L_0652: je     0x757                           ;[74 03]  @ 0752h
L_0654: xor    ax, ax                          ;[33 c0]  @ 0754h
L_0656: ret                                    ;[c3]  @ 0756h
L_0657: push   ds                              ;[1e]  @ 0757h
L_0658: mov    si, cs                          ;[8c ce]  @ 0758h
L_065A: mov    ax, 0x89f                       ;[b8 9f 08]  @ 075Ah
L_065D: mov    cl, 4                           ;[b1 04]  @ 075Dh
L_065F: shr    ax, cl                          ;[d3 e8]  @ 075Fh
L_0661: add    si, ax                          ;[03 f0]  @ 0761h
L_0663: mov    ds, si                          ;[8e de]  @ 0763h
L_0665: xor    ax, ax                          ;[33 c0]  @ 0765h
L_0667: xor    si, si                          ;[33 f6]  @ 0767h
L_0669: cmp    word ptr [si], 0x4f4c           ;[81 3c 4c 4f]  @ 0769h
L_066D: jne    0x77e                           ;[75 0f]  @ 076Dh
L_066F: cmp    word ptr [si + 2], 0x4f47       ;[81 7c 02 47 4f]  @ 076Fh
L_0674: jne    0x77e                           ;[75 08]  @ 0774h
L_0676: push   cs                              ;[0e]  @ 0776h
L_0677: mov    ax, 0x77e                       ;[b8 7e 07]  @ 0777h
L_067A: push   ax                              ;[50]  @ 077Ah
L_067B: push   ds                              ;[1e]  @ 077Bh
L_067C: push   di                              ;[57]  @ 077Ch
L_067D: retf                                   ;[cb]  @ 077Dh
L_067E: pop    ds                              ;[1f]  @ 077Eh
L_067F: ret                                    ;[c3]  @ 077Fh
; -- data 0x0680..0x1308 (3209B) --
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
d_0790:  db 'LOGO'                    ;[4c 4f 47 4f]
        db E9h, C6h, 00h, 33h, C0h, 8Eh, C0h, A0h, 19h, 00h, 26h, A2h, 10h, 04h, A0h, 18h ;[E9 C6 00 33 C0 8E C0 A0 19 00 26 A2 10 04 A0 18]
        db 00h, CDh, 10h, CBh, 00h, 00h, 50h, 00h, A0h, 05h, A0h, 05h, 00h, 00h, 00h, 40h ;[00 CD 10 CB 00 00 50 00 A0 05 A0 05 00 00 00 40]
        db 00h, B8h, 1Fh, 0Eh, 4Dh, 69h, 63h, 72h, 6Fh, 73h, 6Fh, 66h, 74h, 20h, 57h, 69h ;[00 B8 1F 0E 4D 69 63 72 6F 73 6F 66 74 20 57 69]
d_07C4:  db 'ndows'                    ;[6e 64 6f 77 73]
        db 00h, 21h, 0Fh, 56h, 65h, 72h, 73h, 69h, 6Fh, 6Eh, 20h, 31h, 2Eh, 30h, 33h, 00h ;[00 21 0F 56 65 72 73 69 6F 6E 20 31 2E 30 33 00]
        db 05h, 17h, 43h, 6Fh, 70h, 79h, 72h, 69h, 67h, 68h, 74h, 20h, 28h, 63h, 29h, 20h ;[05 17 43 6F 70 79 72 69 67 68 74 20 28 63 29 20]
d_07E9:  db 'Microsoft Corporation, 1985, 1986.  All Rights Reserved.'                    ;[4d 69 63 72 6f 73 6f 66 74 20 43 6f 72 70 6f 72 61 74 69 6f 6e 2c 20 31 39 38 35 2c 20 31 39 38 36 2e 20 20 41 6c 6c 20 52 69 67 68 74 73 20 52 65 73 65 72 76 65 64 2e]
        db 00h, 0Dh, 18h, 4Dh, 69h, 63h, 72h, 6Fh, 73h, 6Fh, 66h, 74h, 20h, 69h, 73h, 20h ;[00 0D 18 4D 69 63 72 6F 73 6F 66 74 20 69 73 20]
d_0831:  db 'a registered trademark of Microsoft Corp.'                    ;[61 20 72 65 67 69 73 74 65 72 65 64 20 74 72 61 64 65 6d 61 72 6b 20 6f 66 20 4d 69 63 72 6f 73 6f 66 74 20 43 6f 72 70 2e]
        db 00h, 00h, 00h, FCh, E8h, 08h, 01h, 8Eh, 06h, 24h, 00h, E8h, B9h, 00h, E8h, CAh ;[00 00 00 FC E8 08 01 8E 06 24 00 E8 B9 00 E8 CA]
        db 00h, 8Bh, 16h, 1Ah, 00h, 80h, EAh, 43h, 2Bh, 16h, 20h, 00h, 2Bh, 16h, 20h, 00h ;[00 8B 16 1A 00 80 EA 43 2B 16 20 00 2B 16 20 00]
        db 03h, D2h, 8Bh, 3Eh, 1Ch, 00h, E8h, 42h, 00h, 8Bh, 3Eh, 1Ch, 00h, 03h, 3Eh, 1Eh ;[03 D2 8B 3E 1C 00 E8 42 00 8B 3E 1C 00 03 3E 1E]
        db 00h, A1h, 22h, 00h, D1h, E8h, 03h, F8h, 4Fh, E8h, 5Dh, 00h, 4Ah, 75h, E3h, FCh ;[00 A1 22 00 D1 E8 03 F8 4F E8 5D 00 4A 75 E3 FC]
        db BEh, 26h, 00h, 8Ah, 44h, 01h, 3Ch, 00h, 74h, 05h, E8h, 06h, 00h, EBh, F4h, B8h ;[BE 26 00 8A 44 01 3C 00 74 05 E8 06 00 EB F4 B8]
        db 1Ah, 00h, CBh, FCh, ADh, 8Bh, D0h, 33h, DBh, B3h, FFh, B4h, 02h, CDh, 10h, ACh ;[1A 00 CB FC AD 8B D0 33 DB B3 FF B4 02 CD 10 AC]
        db 0Ah, C0h, 74h, 06h, B4h, 0Eh, CDh, 10h, EBh, F5h, C3h, FCh, 52h, 32h, D2h, BEh ;[0A C0 74 06 B4 0E CD 10 EB F5 C3 FC 52 32 D2 BE]
        db 24h, 00h, D1h, EEh, 8Bh, 0Eh, 1Ah, 00h, D1h, E9h, 26h, 8Bh, 05h, 86h, C4h, D1h ;[24 00 D1 EE 8B 0E 1A 00 D1 E9 26 8B 05 86 C4 D1]
        db C8h, D1h, C8h, 8Ah, F4h, 80h, E6h, C0h, 80h, E4h, 3Fh, 0Ah, E2h, 8Ah, D6h, 86h ;[C8 D1 C8 8A F4 80 E6 C0 80 E4 3F 0A E2 8A D6 86]
        db C4h, ABh, E2h, E6h, 4Eh, 75h, DDh, 5Ah, C3h, FDh, 52h, 32h, D2h, BEh, 24h, 00h ;[C4 AB E2 E6 4E 75 DD 5A C3 FD 52 32 D2 BE 24 00]
        db D1h, EEh, 8Bh, 0Eh, 1Ah, 00h, D1h, E9h, 26h, 8Bh, 05h, 86h, C4h, D1h, C0h, D1h ;[D1 EE 8B 0E 1A 00 D1 E9 26 8B 05 86 C4 D1 C0 D1]
        db C0h, 8Ah, F0h, 80h, E6h, 03h, 24h, FCh, 0Ah, C2h, 8Ah, D6h, 86h, C4h, ABh, E2h ;[C0 8A F0 80 E6 03 24 FC 0A C2 8A D6 86 C4 AB E2]
        db E7h, 4Eh, 75h, DEh, 5Ah, FCh, C3h, BEh, 0Dh, 02h, B0h, 12h, F6h, 26h, 1Ah, 00h ;[E7 4E 75 DE 5A FC C3 BE 0D 02 B0 12 F6 26 1A 00]
        db 8Bh, F8h, 03h, 3Eh, 20h, 00h, BBh, 12h, 00h, EBh, 20h, B0h, 12h, F6h, 26h, 1Ah ;[8B F8 03 3E 20 00 BB 12 00 EB 20 B0 12 F6 26 1A]
        db 00h, 8Bh, 1Eh, 1Ah, 00h, 80h, EBh, 43h, 03h, C3h, 8Bh, 1Eh, 22h, 00h, D1h, EBh ;[00 8B 1E 1A 00 80 EB 43 03 C3 8B 1E 22 00 D1 EB]
        db 03h, C3h, 8Bh, F8h, 2Bh, 3Eh, 20h, 00h, BBh, 12h, 00h, A1h, 1Ah, 00h, 2Dh, 43h ;[03 C3 8B F8 2B 3E 20 00 BB 12 00 A1 1A 00 2D 43]
        db 00h, B9h, 43h, 00h, B9h, 43h, 00h, F3h, A4h, 03h, F8h, 4Bh, 75h, F3h, C3h, B4h ;[00 B9 43 00 B9 43 00 F3 A4 03 F8 4B 75 F3 C3 B4]
        db 0Fh, CDh, 10h, A2h, 18h, 00h, 33h, C0h, 8Eh, C0h, 26h, A0h, 10h, 04h, A2h, 19h ;[0F CD 10 A2 18 00 33 C0 8E C0 26 A0 10 04 A2 19]
        db 00h, F6h, D0h, A8h, 30h, 75h, 08h, F6h, D0h, 24h, EFh, 26h, A2h, 10h, 04h, B8h ;[00 F6 D0 A8 30 75 08 F6 D0 24 EF 26 A2 10 04 B8]
        db 06h, 00h, CDh, 10h, B8h, 00h, 10h, B7h, 01h, CDh, 10h, B8h, 01h, 10h, B7h, 01h ;[06 00 CD 10 B8 00 10 B7 01 CD 10 B8 01 10 B7 01]
        db CDh, 10h, C3h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[CD 10 C3 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, C0h, 00h, 00h, 00h, 00h, 3Fh, FFh, C3h ;[00 00 00 00 00 00 3F FF C0 00 00 00 00 3F FF C3]
        db FFh, C0h, 00h, 00h, 00h, 0Fh, FFh, FCh, 00h, 00h, 00h, 03h, FFh, FFh, FFh, F0h ;[FF C0 00 00 00 0F FF FC 00 00 00 03 FF FF FF F0]
        db 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, FFh, FFh, C0h, 00h, 00h, 00h, 00h, 0Fh, FFh ;[00 00 00 00 00 3F FF FF FF C0 00 00 00 00 0F FF]
        db F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, FCh, 00h, 00h, 00h, 00h, FFh, FFh, FFh ;[F0 00 00 00 00 00 0F FF FC 00 00 00 00 FF FF FF]
        db FFh, F0h, FFh, FFh, FFh, FFh, FFh, FFh, F0h, 3Fh, FFh, F0h, 00h, 00h, 00h, 00h ;[FF F0 FF FF FF FF FF FF F0 3F FF F0 00 00 00 00]
        db FFh, FFh, C3h, FFh, C0h, 00h, 00h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 03h, FFh ;[FF FF C3 FF C0 00 00 FF FF FF FF FF C0 00 03 FF]
        db FFh, FFh, FFh, FCh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[FF FF FF FC 00 00 00 00 00 00 00 00 00 00 00 00]
        db 03h, FFh, FFh, FFh, C0h, 00h, 00h, 00h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 00h ;[03 FF FF FF C0 00 00 00 FF FF FF FF FF C0 00 00]
        db FFh, FFh, FFh, FFh, F0h, FFh, FFh, FFh, FFh, FFh, FFh, F0h, 3Fh, FFh, FCh, 00h ;[FF FF FF FF F0 FF FF FF FF FF FF F0 3F FF FC 00]
        db 00h, 00h, 03h, FFh, FFh, C3h, FFh, C0h, 00h, 3Fh, FFh, FFh, FFh, FFh, FFh, FFh ;[00 00 03 FF FF C3 FF C0 00 3F FF FF FF FF FF FF]
        db 00h, 03h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 0Fh, FFh, FFh, C0h, 00h, 3Fh, FFh ;[00 03 FF FF FF FF FF C0 00 0F FF FF C0 00 3F FF]
        db FFh, C0h, 00h, 3Fh, FFh, FFh, FFh, FCh, 00h, 00h, 3Fh, FFh, FFh, FFh, FFh, FFh ;[FF C0 00 3F FF FF FF FC 00 00 3F FF FF FF FF FF]
        db FFh, 00h, 00h, FFh, FFh, FFh, FFh, F0h, FFh, FFh, FFh, FFh, FFh, FFh, F0h, 3Fh ;[FF 00 00 FF FF FF FF F0 FF FF FF FF FF FF F0 3F]
        db FFh, FFh, 00h, 00h, 00h, 0Fh, FFh, FFh, C3h, FFh, C0h, 03h, FFh, FCh, 00h, 00h ;[FF FF 00 00 00 0F FF FF C3 FF C0 03 FF FC 00 00]
        db 00h, 0Fh, FFh, F0h, 03h, FFh, C0h, 00h, 0Fh, FFh, F0h, 00h, 00h, 00h, 00h, 00h ;[00 0F FF F0 03 FF C0 00 0F FF F0 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, FFh, FFh, FFh, FFh, FFh, 00h, 03h, FFh, FCh, 00h ;[00 00 00 00 00 00 FF FF FF FF FF 00 03 FF FC 00]
        db 00h, 00h, 0Fh, FFh, F0h, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h ;[00 00 0F FF F0 00 FF F0 00 00 00 00 00 0F FF 00]
        db 00h, 00h, 3Fh, FFh, FFh, C0h, 00h, 00h, 3Fh, FFh, FFh, C3h, FFh, C0h, 3Fh, FFh ;[00 00 3F FF FF C0 00 00 3F FF FF C3 FF C0 3F FF]
        db 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, 03h, FFh, C0h, 00h, 00h, FFh, FCh, 03h, FFh ;[00 00 00 00 00 3F FF 03 FF C0 00 00 FF FC 03 FF]
        db C0h, 00h, 00h, 00h, 00h, 00h, 3Fh, FCh, 00h, FFh, FCh, 00h, 0Fh, FFh, 00h, 3Fh ;[C0 00 00 00 00 00 3F FC 00 FF FC 00 0F FF 00 3F]
        db FFh, 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h ;[FF 00 00 00 00 00 3F FF 00 FF F0 00 00 00 00 00]
        db 0Fh, FFh, 00h, 00h, 00h, 3Fh, FFh, FFh, F0h, 00h, 00h, FFh, FFh, FFh, C3h, FFh ;[0F FF 00 00 00 3F FF FF F0 00 00 FF FF FF C3 FF]
        db C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C3h, FFh, C0h, 00h, 00h, 3Fh ;[C0 FF F0 00 00 00 00 00 03 FF C3 FF C0 00 00 3F]
        db FCh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, FFh, 00h, 00h ;[FC 00 00 00 00 00 00 00 00 00 00 00 FF FF 00 00]
        db 00h, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C0h, FFh, F0h, 00h, 00h ;[00 00 FF F0 00 00 00 00 00 03 FF C0 FF F0 00 00]
        db 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FFh, FFh, FCh, 00h, 03h, FFh, FFh ;[00 00 00 0F FF 00 00 00 3F FF FF FC 00 03 FF FF]
        db FFh, C3h, FFh, C3h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, C3h, FFh, C0h ;[FF C3 FF C3 FF C0 00 00 00 00 00 00 FF C3 FF C0]
        db 00h, 00h, FFh, FCh, 3Fh, FCh, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C0h, 3Fh ;[00 00 FF FC 3F FC 00 00 00 00 00 00 03 FF C0 3F]
        db FFh, FCh, 00h, 00h, 00h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, C0h, FFh ;[FF FC 00 00 00 FF C0 00 00 00 00 00 00 FF C0 FF]
        db F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh, FFh, FFh, 00h ;[F0 00 00 00 00 00 0F FF 00 00 00 3F FC FF FF 00]
        db 0Fh, FFh, F3h, FFh, C3h, FFh, C3h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[0F FF F3 FF C3 FF C3 FF C0 00 00 00 00 00 00 00]
        db 03h, FFh, C0h, 00h, 0Fh, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[03 FF C0 00 0F FF F0 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 0Fh, FFh, FFh, FFh, 00h, 03h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 0F FF FF FF 00 03 FF C0 00 00 00 00 00 00]
        db FFh, F0h, FFh, FFh, FFh, FFh, F0h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh ;[FF F0 FF FF FF FF F0 00 00 0F FF 00 00 00 3F FC]
        db 3Fh, FFh, C0h, 3Fh, FFh, C3h, FFh, C3h, FFh, C3h, FFh, C0h, 00h, 00h, 00h, 00h ;[3F FF C0 3F FF C3 FF C3 FF C3 FF C0 00 00 00 00]
        db 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, C0h, FFh, FFh, FFh, C0h, 00h, 00h ;[00 00 00 03 FF FF FF FF FF C0 FF FF FF C0 00 00]
        db 00h, 3Fh, FFh, FFh, F0h, 00h, FFh, FFh, FFh, F0h, 03h, FFh, C0h, 00h, 00h, 00h ;[00 3F FF FF F0 00 FF FF FF F0 03 FF C0 00 00 00]
        db 00h, 00h, 00h, FFh, F0h, FFh, FFh, FFh, FFh, F0h, 00h, 00h, 0Fh, FFh, 00h, 00h ;[00 00 00 FF F0 FF FF FF FF F0 00 00 0F FF 00 00]
        db 00h, 3Fh, FCh, 0Fh, FFh, F0h, FFh, FFh, 03h, FFh, C3h, FFh, C3h, FFh, C0h, 00h ;[00 3F FC 0F FF F0 FF FF 03 FF C3 FF C3 FF C0 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FCh, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 03 FF FF FF FF FC 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, FFh, FFh, 03h, FFh, C0h ;[00 00 00 00 00 00 00 00 00 00 FF FF FF 03 FF C0]
        db 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, FFh, FFh, FFh, FFh, F0h, 00h, 00h, 0Fh ;[00 00 00 00 00 00 FF F0 FF FF FF FF F0 00 00 0F]
        db FFh, 00h, 00h, 00h, 3Fh, FCh, 03h, FFh, FFh, FFh, FCh, 03h, FFh, C3h, FFh, C0h ;[FF 00 00 00 3F FC 03 FF FF FF FC 03 FF C3 FF C0]
        db FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, 00h ;[FF C0 00 00 00 00 00 00 00 03 FF FF FF FF FF 00]
        db 3Fh, FCh, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C0h, 00h, 00h, 00h, 3Fh, FFh ;[3F FC 00 00 00 00 00 00 03 FF C0 00 00 00 3F FF]
        db C0h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, C0h, FFh, F0h, 00h, 00h, 00h ;[C0 FF C0 00 00 00 00 00 00 FF C0 FF F0 00 00 00]
        db 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh, 00h, FFh, FFh, FFh, F0h, 03h, FFh ;[00 00 0F FF 00 00 00 3F FC 00 FF FF FF F0 03 FF]
        db C3h, FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C3h, FFh, C0h, 00h ;[C3 FF C0 FF F0 00 00 00 00 00 03 FF C3 FF C0 00]
        db 3Fh, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C0h ;[3F FF C0 00 00 00 00 00 00 00 00 00 00 03 FF C0]
        db 00h, 03h, FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, C0h, FFh, F0h ;[00 03 FF C0 FF F0 00 00 00 00 00 03 FF C0 FF F0]
        db 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 3Fh, C0h, 3Fh, FCh, 00h, 3Fh, FFh, FFh ;[00 00 00 00 00 0F FF 00 3F C0 3F FC 00 3F FF FF]
        db C0h, 03h, FFh, C3h, FFh, C0h, 3Fh, FFh, 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, 03h ;[C0 03 FF C3 FF C0 3F FF 00 00 00 00 00 3F FF 03]
        db FFh, C0h, 00h, 03h, FFh, F0h, 03h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 3Fh, FCh ;[FF C0 00 03 FF F0 03 FF C0 00 00 00 00 00 3F FC]
        db 03h, FFh, F0h, 00h, 0Fh, FFh, C0h, 3Fh, FFh, 00h, 00h, 00h, 00h, 00h, 3Fh, FFh ;[03 FF F0 00 0F FF C0 3F FF 00 00 00 00 00 3F FF]
        db 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 03h, 00h, 0Ch, 3Fh, FCh, 00h ;[00 FF F0 00 00 00 00 00 0F FF 03 00 0C 3F FC 00]
        db 0Fh, FFh, FFh, 00h, 03h, FFh, C3h, FFh, C0h, 03h, FFh, FCh, 00h, 00h, 00h, 0Fh ;[0F FF FF 00 03 FF C3 FF C0 03 FF FC 00 00 00 0F]
        db FFh, F0h, 03h, FFh, C0h, 00h, 00h, FFh, FCh, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[FF F0 03 FF C0 00 00 FF FC 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, C0h, 03h, FFh, FCh, 00h, 00h, 00h ;[00 00 00 03 FF FF FF FF FF C0 03 FF FC 00 00 00]
        db 0Fh, FFh, F0h, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 0Ch, 30h, C3h ;[0F FF F0 00 FF F0 00 00 00 00 00 0F FF 0C 30 C3]
        db 3Fh, FCh, 00h, 03h, FFh, FCh, 00h, 03h, FFh, C3h, FFh, C0h, 00h, 3Fh, FFh, FFh ;[3F FC 00 03 FF FC 00 03 FF C3 FF C0 00 3F FF FF]
        db FFh, FFh, FFh, FFh, 00h, 03h, FFh, C0h, 00h, 00h, 3Fh, FCh, 00h, 0Fh, FFh, FFh ;[FF FF FF FF 00 03 FF C0 00 00 3F FC 00 0F FF FF]
        db C0h, 00h, 3Fh, FFh, FFh, 00h, 00h, 3Fh, FFh, FFh, FFh, FCh, 00h, 00h, 3Fh, FFh ;[C0 00 3F FF FF 00 00 3F FF FF FF FC 00 00 3F FF]
        db FFh, FFh, FFh, FFh, FFh, 00h, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh ;[FF FF FF FF FF 00 00 FF F0 00 00 00 00 00 0F FF]
        db 0Ch, 33h, 03h, 3Fh, FCh, 00h, 00h, FFh, F0h, 00h, 03h, FFh, C3h, FFh, C0h, 00h ;[0C 33 03 3F FC 00 00 FF F0 00 03 FF C3 FF C0 00]
        db 00h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 03h, FFh, C0h, 00h, 00h, 3Fh, FCh, 00h ;[00 FF FF FF FF FF C0 00 03 FF C0 00 00 3F FC 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, C0h, 00h ;[00 00 00 00 00 00 00 00 00 00 03 FF FF FF C0 00]
        db 00h, 00h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 00h, FFh, F0h, 00h, 00h, 00h, 00h ;[00 00 FF FF FF FF FF C0 00 00 FF F0 00 00 00 00]
        db 00h, 0Fh, FFh, 03h, 00h, 0Ch, 3Fh, FCh, 00h, 00h, 3Fh, C0h, 00h, 03h, FFh, C3h ;[00 0F FF 03 00 0C 3F FC 00 00 3F C0 00 03 FF C3]
        db FFh, C0h, 00h, 00h, 00h, 0Fh, FFh, FCh, 00h, 00h, 00h, 03h, FFh, C0h, 00h, 00h ;[FF C0 00 00 00 0F FF FC 00 00 00 03 FF C0 00 00]
        db 3Fh, FCh, 00h, 00h, 00h, 3Fh, FFh, FFh, FFh, C0h, 00h, 00h, 00h, 00h, 0Fh, FFh ;[3F FC 00 00 00 3F FF FF FF C0 00 00 00 00 0F FF]
        db F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, FCh, 00h, 00h, 00h, 00h, FFh, F0h, 00h ;[F0 00 00 00 00 00 0F FF FC 00 00 00 00 FF F0 00]
        db 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 3Fh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 0F FF 00 3F C0 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, FFh, F0h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 FF FF F0 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 3Fh, FFh, C0h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 3F FF C0 00]
        db 00h, 00h, 00h, 3Fh, FFh, C3h, FFh, C0h, 00h, 00h, 03h, FFh, FFh, FFh, F0h, 00h ;[00 00 00 3F FF C3 FF C0 00 00 03 FF FF FF F0 00]
        db 00h, 03h, FFh, FFh, FFh, FFh, 00h, 00h, 00h, 00h, 0Fh, FFh, FFh, FFh, FFh, FFh ;[00 03 FF FF FF FF 00 00 00 00 0F FF FF FF FF FF]
        db 00h, 00h, 00h, 00h, FFh, FFh, FFh, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, F0h ;[00 00 00 00 FF FF FF 00 00 00 00 03 FF FF FF F0]
        db 00h, 00h, 00h, FFh, FFh, FFh, FFh, F0h, FFh, FFh, FFh, FFh, FFh, FFh, F0h, 3Fh ;[00 00 00 FF FF FF FF F0 FF FF FF FF FF FF F0 3F]
        db FFh, F0h, 00h, 00h, 00h, 00h, FFh, FFh, C3h, FFh, C0h, 00h, 03h, FFh, FFh, FFh ;[FF F0 00 00 00 00 FF FF C3 FF C0 00 03 FF FF FF]
        db FFh, FFh, F0h, 00h, 03h, FFh, FFh, FFh, FFh, FCh, 00h, 00h, 03h, FFh, FFh, FFh ;[FF FF F0 00 03 FF FF FF FF FC 00 00 03 FF FF FF]
        db FFh, FFh, FFh, FCh, 00h, 00h, 0Fh, FFh, FFh, FFh, F0h, 00h, 00h, 03h, FFh, FFh ;[FF FF FF FC 00 00 0F FF FF FF F0 00 00 03 FF FF]
        db FFh, FFh, FFh, F0h, 00h, 00h, FFh, FFh, FFh, FFh, F0h, FFh, FFh, FFh, FFh, FFh ;[FF FF FF F0 00 00 FF FF FF FF F0 FF FF FF FF FF]
        db FFh, F0h, 3Fh, FFh, FCh, 00h, 00h, 00h, 03h, FFh, FFh, C3h, FFh, C0h, 00h, FFh ;[FF F0 3F FF FC 00 00 00 03 FF FF C3 FF C0 00 FF]
        db FFh, F0h, 00h, 03h, FFh, FFh, C0h, 03h, FFh, FFh, FFh, FFh, FFh, C0h, 00h, 3Fh ;[FF F0 00 03 FF FF C0 03 FF FF FF FF FF C0 00 3F]
        db FFh, F0h, 00h, 00h, 00h, FFh, FFh, C0h, 00h, 3Fh, FFh, FFh, FFh, FFh, 00h, 00h ;[FF F0 00 00 00 FF FF C0 00 3F FF FF FF FF 00 00]
        db FFh, FFh, F0h, 00h, 03h, FFh, FFh, C0h, 00h, FFh, FFh, FFh, FFh, F0h, FFh, FFh ;[FF FF F0 00 03 FF FF C0 00 FF FF FF FF F0 FF FF]
        db FFh, FFh, FFh, FFh, F0h, 3Fh, FFh, FFh, 00h, 00h, 00h, 0Fh, FFh, FFh, C3h, FFh ;[FF FF FF FF F0 3F FF FF 00 00 00 0F FF FF C3 FF]
        db C0h, 0Fh, FFh, F0h, 00h, 00h, 00h, 03h, FFh, FCh, 03h, FFh, C0h, 00h, 00h, FFh ;[C0 0F FF F0 00 00 00 03 FF FC 03 FF C0 00 00 FF]
        db F0h, 03h, FFh, FFh, FFh, FFh, FFh, FFh, FFh, FFh, FCh, 00h, FFh, FFh, C0h, FFh ;[F0 03 FF FF FF FF FF FF FF FF FC 00 FF FF C0 FF]
        db FFh, C0h, 0Fh, FFh, F0h, 00h, 00h, 00h, 03h, FFh, FCh, 00h, FFh, F0h, 00h, 00h ;[FF C0 0F FF F0 00 00 00 03 FF FC 00 FF F0 00 00]
        db 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FFh, FFh, C0h, 00h, 00h, 3Fh, FFh ;[00 00 00 0F FF 00 00 00 3F FF FF C0 00 00 3F FF]
        db FFh, C3h, FFh, C0h, 3Fh, FCh, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 03h, FFh, C0h ;[FF C3 FF C0 3F FC 00 00 00 00 00 0F FF 03 FF C0]
        db 00h, 00h, 3Fh, FCh, 0Fh, FFh, 00h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, FFh ;[00 00 3F FC 0F FF 00 00 00 00 00 00 0F FF 00 FF]
        db FCh, 00h, 0Fh, FFh, 00h, 3Fh, FCh, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, FFh ;[FC 00 0F FF 00 3F FC 00 00 00 00 00 0F FF 00 FF]
        db F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FFh, FFh, F0h, 00h ;[F0 00 00 00 00 00 0F FF 00 00 00 3F FF FF F0 00]
        db 00h, FFh, FFh, FFh, C3h, FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh ;[00 FF FF FF C3 FF C0 FF F0 00 00 00 00 00 03 FF]
        db C3h, FFh, C0h, 00h, 00h, 3Fh, FCh, 3Fh, FFh, FFh, FFh, 00h, 00h, 0Fh, FFh, FFh ;[C3 FF C0 00 00 3F FC 3F FF FF FF 00 00 0F FF FF]
        db FFh, C0h, 3Fh, FFh, C0h, 00h, 00h, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h ;[FF C0 3F FF C0 00 00 00 FF F0 00 00 00 00 00 03]
        db FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh ;[FF C0 FF F0 00 00 00 00 00 0F FF 00 00 00 3F FC]
        db FFh, FCh, 00h, 03h, FFh, F3h, FFh, C3h, FFh, C3h, FFh, C0h, 00h, 00h, 00h, 00h ;[FF FC 00 03 FF F3 FF C3 FF C3 FF C0 00 00 00 00]
        db 00h, 00h, 00h, 03h, FFh, C0h, 00h, 00h, FFh, F0h, 3Fh, F0h, 00h, 00h, 00h, 00h ;[00 00 00 03 FF C0 00 00 FF F0 3F F0 00 00 00 00]
        db 00h, 00h, 00h, FFh, C0h, 3Fh, FFh, FFh, F0h, 00h, 03h, FFh, C0h, 00h, 00h, 00h ;[00 00 00 FF C0 3F FF FF F0 00 03 FF C0 00 00 00]
        db 00h, 00h, 00h, FFh, F0h, FFh, FFh, FFh, FFh, F0h, 00h, 00h, 0Fh, FFh, 00h, 00h ;[00 00 00 FF F0 FF FF FF FF F0 00 00 0F FF 00 00]
        db 00h, 3Fh, FCh, 3Fh, FFh, 00h, 0Fh, FFh, C3h, FFh, C3h, FFh, C3h, FFh, C0h, 00h ;[00 3F FC 3F FF 00 0F FF C3 FF C3 FF C3 FF C0 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, C0h, FFh, F0h, 00h ;[00 00 00 00 00 00 03 FF FF FF FF FF C0 FF F0 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, 03h, FFh, FFh, FFh, C0h, 03h, FFh, C0h ;[00 00 00 00 00 00 FF F0 03 FF FF FF C0 03 FF C0]
        db 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, FFh, FFh, FFh, FFh, F0h, 00h, 00h, 0Fh ;[00 00 00 00 00 00 FF F0 FF FF FF FF F0 00 00 0F]
        db FFh, 00h, 00h, 00h, 3Fh, FCh, 0Fh, FFh, C0h, 3Fh, FFh, 03h, FFh, C3h, FFh, C3h ;[FF 00 00 00 3F FC 0F FF C0 3F FF 03 FF C3 FF C3]
        db FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, 00h ;[FF C0 00 00 00 00 00 00 00 03 FF FF FF FF FF 00]
        db FFh, F0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, 00h, 0Fh, FFh, FFh, FCh ;[FF F0 00 00 00 00 00 00 00 FF F0 00 0F FF FF FC]
        db 03h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, FFh, FFh, FFh, FFh, F0h ;[03 FF C0 00 00 00 00 00 00 FF F0 FF FF FF FF F0]
        db 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh, 03h, FFh, F0h, FFh, FCh, 03h, FFh ;[00 00 0F FF 00 00 00 3F FC 03 FF F0 FF FC 03 FF]
        db C3h, FFh, C3h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh ;[C3 FF C3 FF C0 00 00 00 00 00 00 00 03 FF FF FF]
        db FFh, FCh, 00h, 3Fh, F0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, C0h, 00h, 00h ;[FF FC 00 3F F0 00 00 00 00 00 00 00 FF C0 00 00]
        db 03h, FFh, FFh, 03h, FFh, C0h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, F0h, FFh, FFh ;[03 FF FF 03 FF C0 00 00 00 00 00 00 FF F0 FF FF]
        db FFh, FFh, F0h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh, 00h, FFh, FFh, FFh ;[FF FF F0 00 00 0F FF 00 00 00 3F FC 00 FF FF FF]
        db F0h, 03h, FFh, C3h, FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 03h ;[F0 03 FF C3 FF C0 FF F0 00 00 00 00 00 00 00 03]
        db FFh, C0h, 00h, FFh, FFh, 00h, 3Fh, FFh, FFh, FFh, 00h, 00h, 0Fh, FFh, FFh, FFh ;[FF C0 00 FF FF 00 3F FF FF FF 00 00 0F FF FF FF]
        db C0h, 00h, 00h, 00h, 0Fh, FFh, C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 03h, FFh ;[C0 00 00 00 0F FF C0 FF F0 00 00 00 00 00 03 FF]
        db C0h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, 00h, 00h, 3Fh, FCh, 00h ;[C0 FF F0 00 00 00 00 00 0F FF 00 00 00 3F FC 00]
        db 3Fh, FFh, FFh, C0h, 03h, FFh, C3h, FFh, C0h, 3Fh, FCh, 00h, 00h, 00h, 00h, 00h ;[3F FF FF C0 03 FF C3 FF C0 3F FC 00 00 00 00 00]
        db 0Fh, FFh, 03h, FFh, C0h, 00h, 0Fh, FFh, C0h, 0Fh, FFh, 00h, 00h, 00h, 00h, 00h ;[0F FF 03 FF C0 00 0F FF C0 0F FF 00 00 00 00 00]
        db 00h, 0Fh, FFh, 03h, FFh, F0h, 00h, 03h, FFh, C0h, 3Fh, FCh, 00h, 00h, 00h, 00h ;[00 0F FF 03 FF F0 00 03 FF C0 3F FC 00 00 00 00]
        db 00h, 0Fh, FFh, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, C0h, 30h ;[00 0F FF 00 FF F0 00 00 00 00 00 0F FF 00 C0 30]
        db 3Fh, FCh, 00h, 0Fh, FFh, FFh, 00h, 03h, FFh, C3h, FFh, C0h, 0Fh, FFh, F0h, 00h ;[3F FC 00 0F FF FF 00 03 FF C3 FF C0 0F FF F0 00]
        db 00h, 00h, 03h, FFh, FCh, 03h, FFh, C0h, 00h, 00h, FFh, F0h, 03h, FFh, FFh, FFh ;[00 00 03 FF FC 03 FF C0 00 00 FF F0 03 FF FF FF]
        db FFh, FFh, FFh, FFh, FFh, FCh, 03h, FFh, FCh, 00h, 3Fh, FFh, C0h, 0Fh, FFh, F0h ;[FF FF FF FF FF FC 03 FF FC 00 3F FF C0 0F FF F0]
        db 00h, 00h, 00h, 03h, FFh, FCh, 00h, FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh ;[00 00 00 03 FF FC 00 FF F0 00 00 00 00 00 0F FF]
        db 0Ch, 3Fh, 03h, 3Fh, FCh, 00h, 03h, FFh, FCh, 00h, 03h, FFh, C3h, FFh, C0h, 00h ;[0C 3F 03 3F FC 00 03 FF FC 00 03 FF C3 FF C0 00]
        db FFh, FFh, F0h, 00h, 03h, FFh, FFh, C0h, 03h, FFh, C0h, 00h, 00h, FFh, FCh, 00h ;[FF FF F0 00 03 FF FF C0 03 FF C0 00 00 FF FC 00]
        db 3Fh, FFh, F0h, 00h, 00h, 00h, FFh, FFh, C0h, 00h, FFh, FFh, FFh, FFh, FFh, 00h ;[3F FF F0 00 00 00 FF FF C0 00 FF FF FF FF FF 00]
        db 00h, FFh, FFh, F0h, 00h, 03h, FFh, FFh, C0h, 00h, FFh, F0h, 00h, 00h, 00h, 00h ;[00 FF FF F0 00 03 FF FF C0 00 FF F0 00 00 00 00]
        db 00h, 0Fh, FFh, 0Ch, 3Fh, 03h, 3Fh, FCh, 00h, 00h, FFh, F0h, 00h, 03h, FFh, C3h ;[00 0F FF 0C 3F 03 3F FC 00 00 FF F0 00 03 FF C3]
        db FFh, C0h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, F0h, 00h, 03h, FFh, C0h, 00h, 00h ;[FF C0 00 03 FF FF FF FF FF F0 00 03 FF C0 00 00]
        db 3Fh, FCh, 00h, 03h, FFh, FFh, FFh, FFh, FFh, FFh, FCh, 00h, 00h, 0Fh, FFh, FFh ;[3F FC 00 03 FF FF FF FF FF FF FC 00 00 0F FF FF]
        db FFh, F0h, 00h, 00h, 03h, FFh, FFh, FFh, FFh, FFh, F0h, 00h, 00h, FFh, F0h, 00h ;[FF F0 00 00 03 FF FF FF FF FF F0 00 00 FF F0 00]
        db 00h, 00h, 00h, 00h, 0Fh, FFh, 0Ch, 30h, C3h, 3Fh, FCh, 00h, 00h, 3Fh, C0h, 00h ;[00 00 00 00 0F FF 0C 30 C3 3F FC 00 00 3F C0 00]
        db 03h, FFh, C3h, FFh, C0h, 00h, 00h, 03h, FFh, FFh, FFh, F0h, 00h, 00h, 03h, FFh ;[03 FF C3 FF C0 00 00 03 FF FF FF F0 00 00 03 FF]
        db C0h, 00h, 00h, 3Fh, FCh, 00h, 00h, 0Fh, FFh, FFh, FFh, FFh, FFh, 00h, 00h, 00h ;[C0 00 00 3F FC 00 00 0F FF FF FF FF FF 00 00 00]
        db 00h, 3Fh, FFh, FFh, 00h, 00h, 00h, 00h, 03h, FFh, FFh, FFh, F0h, 00h, 00h, 00h ;[00 3F FF FF 00 00 00 00 03 FF FF FF F0 00 00 00]
        db FFh, F0h, 00h, 00h, 00h, 00h, 00h, 0Fh, FFh, 00h, C0h, 30h, 00h, 00h, 00h, 00h ;[FF F0 00 00 00 00 00 0F FF 00 C0 30 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, FFh, FFh, F0h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 FF FF F0 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]
        db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h ;[00 00 00 00 00 00 00 00 00 00 00 00 00 00 00]

_TEXT   ENDS
        END  win_com_start