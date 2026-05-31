000000  43                    inc        bx
000001  3a5c31                cmp        bl, byte ptr [si + 0x31]
000004  3033                  xor        byte ptr [bp + di], dh
000006  5c                    pop        sp
000007  57                    push       di
000008  49                    dec        cx
000009  4e                    dec        si
00000a  3130                  xor        word ptr [bx + si], si
00000c  302e4f56              xor        byte ptr [0x564f], ch
000010  4c                    dec        sp
000011  0000                  add        byte ptr [bx + si], al
000013  0000                  add        byte ptr [bx + si], al
000015  0000                  add        byte ptr [bx + si], al
000017  0000                  add        byte ptr [bx + si], al
000019  0000                  add        byte ptr [bx + si], al
00001b  0000                  add        byte ptr [bx + si], al
00001d  0000                  add        byte ptr [bx + si], al
00001f  0032                  add        byte ptr [bp + si], dh
000021  4d                    dec        bp
000022  6963726f73            imul       sp, word ptr [bp + di + 0x72], 0x736f
000027  6f                    outsw      dx, word ptr [si]
000028  667420                je         0x4b
00002b  57                    push       di
00002c  696e646f77            imul       bp, word ptr [bp + 0x64], 0x776f
000031  7320                  jae        0x53
000033  4b                    dec        bx
000034  65726e                jb         0xa5
000037  656c                  insb       byte ptr es:[di], dx
000039  20496e                and        byte ptr [bx + di + 0x6e], cl
00003c  7465                  je         0xa3
00003e  7266                  jb         0xa6
000040  61                    popaw      
000041  636520                arpl       word ptr [di + 0x20], sp
000044  666f                  outsd      dx, dword ptr [si]
000046  7220                  jb         0x68
000048  322e7820              xor        ch, byte ptr [0x2078]
00004c  61                    popaw      
00004d  6e                    outsb      dx, byte ptr [si]
00004e  642033                and        byte ptr fs:[bp + di], dh
000051  2e7800                js         0x54
000054  000c                  add        byte ptr [si], cl
000056  47                    inc        di
000057  4c                    dec        sp
000058  4f                    dec        di
000059  42                    inc        dx
00005a  41                    inc        cx
00005b  4c                    dec        sp
00005c  55                    push       bp
00005d  4e                    dec        si
00005e  4c                    dec        sp
00005f  4f                    dec        di
000060  43                    inc        bx
000061  4b                    dec        bx
000062  1300                  adc        ax, word ptr [bx + si]
000064  0c47                  or         al, 0x47
000066  45                    inc        bp
000067  54                    push       sp
000068  4c                    dec        sp
000069  50                    push       ax
00006a  45                    inc        bp
00006b  52                    push       dx
00006c  52                    push       dx
00006d  4d                    dec        bp
00006e  4f                    dec        di
00006f  44                    inc        sp
000070  45                    inc        bp
000071  6300                  arpl       word ptr [bx + si], ax
000073  07                    pop        es
000074  4c                    dec        sp
000075  53                    push       bx
000076  54                    push       sp
000077  52                    push       dx
000078  43                    inc        bx
000079  50                    push       ax
00007a  59                    pop        cx
00007b  58                    pop        ax
00007c  0007                  add        byte ptr [bx], al
00007e  5f                    pop        di
00007f  4c                    dec        sp
000080  43                    inc        bx
000081  4c                    dec        sp
000082  4f                    dec        di
000083  53                    push       bx
000084  45                    inc        bp
000085  51                    push       cx
000086  000a                  add        byte ptr [bp + si], cl
000088  47                    inc        di
000089  4c                    dec        sp
00008a  4f                    dec        di
00008b  42                    inc        dx
00008c  41                    inc        cx
00008d  4c                    dec        sp
00008e  4c                    dec        sp
00008f  4f                    dec        di
000090  43                    inc        bx
000091  4b                    dec        bx
000092  1200                  adc        al, byte ptr [bx + si]
000094  09414e                or         word ptr [bx + di + 0x4e], ax
000097  53                    push       bx
000098  49                    dec        cx
000099  4c                    dec        sp
00009a  4f                    dec        di
00009b  57                    push       di
00009c  45                    inc        bp
00009d  52                    push       dx
00009e  50                    push       ax
00009f  000a                  add        byte ptr [bp + si], cl
0000a1  44                    inc        sp
0000a2  49                    dec        cx
0000a3  53                    push       bx
0000a4  41                    inc        cx
0000a5  42                    inc        dx
0000a6  4c                    dec        sp
0000a7  45                    inc        bp
0000a8  44                    inc        sp
0000a9  4f                    dec        di
0000aa  53                    push       bx
0000ab  2a00                  sub        al, byte ptr [bx + si]
0000ad  06                    push       es
0000ae  5f                    pop        di
0000af  4c                    dec        sp
0000b0  4f                    dec        di
0000b1  50                    push       ax
0000b2  45                    inc        bp
0000b3  4e                    dec        si
0000b4  55                    push       bp
0000b5  0005                  add        byte ptr [di], al
0000b7  43                    inc        bx
0000b8  41                    inc        cx
0000b9  54                    push       sp
0000ba  43                    inc        bx
0000bb  48                    dec        ax
0000bc  37                    aaa        
0000bd  000d                  add        byte ptr [di], cl
0000bf  47                    inc        di
0000c0  4c                    dec        sp
0000c1  4f                    dec        di
0000c2  42                    inc        dx
0000c3  41                    inc        cx
0000c4  4c                    dec        sp
0000c5  46                    inc        si
0000c6  52                    push       dx
0000c7  45                    inc        bp
0000c8  45                    inc        bp
0000c9  41                    inc        cx
0000ca  4c                    dec        sp
0000cb  4c                    dec        sp
0000cc  1a00                  sbb        al, byte ptr [bx + si]
0000ce  08414e                or         byte ptr [bx + di + 0x4e], al
0000d1  53                    push       bx
0000d2  49                    dec        cx
0000d3  4e                    dec        si
0000d4  45                    inc        bp
0000d5  58                    pop        ax
0000d6  54                    push       sp
0000d7  4d                    dec        bp
0000d8  000d                  add        byte ptr [di], cl
0000da  4e                    dec        si
0000db  4f                    dec        di
0000dc  48                    dec        ax
0000dd  4f                    dec        di
0000de  4f                    dec        di
0000df  4b                    dec        bx
0000e0  44                    inc        sp
0000e1  4f                    dec        di
0000e2  53                    push       bx
0000e3  43                    inc        bx
0000e4  41                    inc        cx
0000e5  4c                    dec        sp
0000e6  4c                    dec        sp
0000e7  650007                add        byte ptr gs:[bx], al
0000ea  5f                    pop        di
0000eb  4c                    dec        sp
0000ec  43                    inc        bx
0000ed  52                    push       dx
0000ee  45                    inc        bp
0000ef  41                    inc        cx
0000f0  54                    push       sp
0000f1  53                    push       bx
0000f2  0010                  add        byte ptr [bx + si], dl
0000f4  43                    inc        bx
0000f5  41                    inc        cx
0000f6  4c                    dec        sp
0000f7  4c                    dec        sp
0000f8  50                    push       ax
0000f9  52                    push       dx
0000fa  4f                    dec        di
0000fb  43                    inc        bx
0000fc  49                    dec        cx
0000fd  4e                    dec        si
0000fe  53                    push       bx
0000ff  54                    push       sp
000100  41                    inc        cx
000101  4e                    dec        si
000102  43                    inc        bx
000103  45                    inc        bp
000104  350010                xor        ax, 0x1000
000107  4d                    dec        bp
000108  41                    inc        cx
000109  4b                    dec        bx
00010a  45                    inc        bp
00010b  50                    push       ax
00010c  52                    push       dx
00010d  4f                    dec        di
00010e  43                    inc        bx
00010f  49                    dec        cx
000110  4e                    dec        si
000111  53                    push       bx
000112  54                    push       sp
000113  41                    inc        cx
000114  4e                    dec        si
000115  43                    inc        bx
000116  45                    inc        bp
000117  3300                  xor        ax, word ptr [bx + si]
000119  07                    pop        es
00011a  5f                    pop        di
00011b  4c                    dec        sp
00011c  4c                    dec        sp
00011d  53                    push       bx
00011e  45                    inc        bp
00011f  45                    inc        bp
000120  4b                    dec        bx
000121  54                    push       sp
000122  000f                  add        byte ptr [bx], cl
000124  4c                    dec        sp
000125  4f                    dec        di
000126  43                    inc        bx
000127  4b                    dec        bx
000128  43                    inc        bx
000129  55                    push       bp
00012a  52                    push       dx
00012b  52                    push       dx
00012c  45                    inc        bp
00012d  4e                    dec        si
00012e  54                    push       sp
00012f  54                    push       sp
000130  41                    inc        cx
000131  53                    push       bx
000132  4b                    dec        bx
000133  2100                  and        word ptr [bx + si], ax
000135  0d4745                or         ax, 0x4547
000138  54                    push       sp
000139  43                    inc        bx
00013a  4f                    dec        di
00013b  44                    inc        sp
00013c  45                    inc        bp
00013d  48                    dec        ax
00013e  41                    inc        cx
00013f  4e                    dec        si
000140  44                    inc        sp
000141  4c                    dec        sp
000142  45                    inc        bp
000143  5d                    pop        bp
000144  0010                  add        byte ptr [bx + si], dl
000146  46                    inc        si
000147  52                    push       dx
000148  45                    inc        bp
000149  45                    inc        bp
00014a  50                    push       ax
00014b  52                    push       dx
00014c  4f                    dec        di
00014d  43                    inc        bx
00014e  49                    dec        cx
00014f  4e                    dec        si
000150  53                    push       bx
000151  54                    push       sp
000152  41                    inc        cx
000153  4e                    dec        si
000154  43                    inc        bx
000155  45                    inc        bp
000156  3400                  xor        al, 0
000158  094c4f                or         word ptr [si + 0x4f], cx
00015b  43                    inc        bx
00015c  41                    inc        cx
00015d  4c                    dec        sp
00015e  46                    inc        si
00015f  52                    push       dx
000160  45                    inc        bp
000161  45                    inc        bp
000162  07                    pop        es
000163  0009                  add        byte ptr [bx + di], cl
000165  4c                    dec        sp
000166  4f                    dec        di
000167  43                    inc        bx
000168  41                    inc        cx
000169  4c                    dec        sp
00016a  53                    push       bx
00016b  49                    dec        cx
00016c  5a                    pop        dx
00016d  45                    inc        bp
00016e  0a00                  or         al, byte ptr [bx + si]
000170  0d474c                or         ax, 0x4c47
000173  4f                    dec        di
000174  42                    inc        dx
000175  41                    inc        cx
000176  4c                    dec        sp
000177  43                    inc        bx
000178  4f                    dec        di
000179  4d                    dec        bp
00017a  50                    push       ax
00017b  41                    inc        cx
00017c  43                    inc        bx
00017d  54                    push       sp
00017e  1900                  sbb        word ptr [bx + si], ax
000180  0e                    push       cs
000181  53                    push       bx
000182  49                    dec        cx
000183  5a                    pop        dx
000184  45                    inc        bp
000185  4f                    dec        di
000186  46                    inc        si
000187  52                    push       dx
000188  45                    inc        bp
000189  53                    push       bx
00018a  4f                    dec        di
00018b  55                    push       bp
00018c  52                    push       dx
00018d  43                    inc        bx
00018e  45                    inc        bp
00018f  41                    inc        cx
000190  0009                  add        byte ptr [bx + di], cl
000192  4c                    dec        sp
000193  4f                    dec        di
000194  43                    inc        bx
000195  41                    inc        cx
000196  4c                    dec        sp
000197  4c                    dec        sp
000198  4f                    dec        di
000199  43                    inc        bx
00019a  4b                    dec        bx
00019b  0800                  or         byte ptr [bx + si], al
00019d  0c4c                  or         al, 0x4c
00019f  4f                    dec        di
0001a0  43                    inc        bx
0001a1  41                    inc        cx
0001a2  4c                    dec        sp
0001a3  43                    inc        bx
0001a4  4f                    dec        di
0001a5  4d                    dec        bp
0001a6  50                    push       ax
0001a7  41                    inc        cx
0001a8  43                    inc        bx
0001a9  54                    push       sp
0001aa  0d000a                or         ax, 0xa00
0001ad  45                    inc        bp
0001ae  58                    pop        ax
0001af  49                    dec        cx
0001b0  54                    push       sp
0001b1  4b                    dec        bx
0001b2  45                    inc        bp
0001b3  52                    push       dx
0001b4  4e                    dec        si
0001b5  45                    inc        bp
0001b6  4c                    dec        sp
0001b7  0200                  add        al, byte ptr [bx + si]
0001b9  0e                    push       cs
0001ba  44                    inc        sp
0001bb  45                    inc        bp
0001bc  4c                    dec        sp
0001bd  45                    inc        bp
0001be  54                    push       sp
0001bf  45                    inc        bp
0001c0  50                    push       ax
0001c1  41                    inc        cx
0001c2  54                    push       sp
0001c3  48                    dec        ax
0001c4  4e                    dec        si
0001c5  41                    inc        cx
0001c6  4d                    dec        bp
0001c7  45                    inc        bp
0001c8  4c                    dec        sp
0001c9  0009                  add        byte ptr [bx + di], cl
0001cb  4c                    dec        sp
0001cc  4f                    dec        di
0001cd  43                    inc        bx
0001ce  41                    inc        cx
0001cf  4c                    dec        sp
0001d0  49                    dec        cx
0001d1  4e                    dec        si
0001d2  49                    dec        cx
0001d3  54                    push       sp
0001d4  0400                  add        al, 0
0001d6  095741                or         word ptr [bx + 0x41], dx
0001d9  49                    dec        cx
0001da  54                    push       sp
0001db  45                    inc        bp
0001dc  56                    push       si
0001dd  45                    inc        bp
0001de  4e                    dec        si
0001df  54                    push       sp
0001e0  1e                    push       ds
0001e1  0014                  add        byte ptr [si], dl
0001e3  56                    push       si
0001e4  41                    inc        cx
0001e5  4c                    dec        sp
0001e6  49                    dec        cx
0001e7  44                    inc        sp
0001e8  41                    inc        cx
0001e9  54                    push       sp
0001ea  45                    inc        bp
0001eb  43                    inc        bx
0001ec  4f                    dec        di
0001ed  44                    inc        sp
0001ee  45                    inc        bp
0001ef  53                    push       bx
0001f0  45                    inc        bp
0001f1  47                    inc        di
0001f2  4d                    dec        bp
0001f3  45                    inc        bp
0001f4  4e                    dec        si
0001f5  54                    push       sp
0001f6  53                    push       bx
0001f7  64000e4745            add        byte ptr fs:[0x4547], cl
0001fc  54                    push       sp
0001fd  43                    inc        bx
0001fe  55                    push       bp
0001ff  52                    push       dx
000200  52                    push       dx
000201  45                    inc        bp
000202  4e                    dec        si
000203  54                    push       sp
000204  54                    push       sp
000205  41                    inc        cx
000206  53                    push       bx
000207  4b                    dec        bx
000208  2400                  and        al, 0
00020a  0b4c4f                or         cx, word ptr [si + 0x4f]
00020d  41                    inc        cx
00020e  44                    inc        sp
00020f  4c                    dec        sp
000210  49                    dec        cx
000211  42                    inc        dx
000212  52                    push       dx
000213  41                    inc        cx
000214  52                    push       dx
000215  59                    pop        cx
000216  5f                    pop        di
000217  000a                  add        byte ptr [bp + si], cl
000219  47                    inc        di
00021a  4c                    dec        sp
00021b  4f                    dec        di
00021c  42                    inc        dx
00021d  41                    inc        cx
00021e  4c                    dec        sp
00021f  53                    push       bx
000220  49                    dec        cx
000221  5a                    pop        dx
000222  45                    inc        bp
000223  1400                  adc        al, 0
000225  084255                or         byte ptr [bp + si + 0x55], al
000228  49                    dec        cx
000229  4c                    dec        sp
00022a  44                    inc        sp
00022b  50                    push       ax
00022c  44                    inc        sp
00022d  42                    inc        dx
00022e  2c00                  sub        al, 0
000230  114745                adc        word ptr [bx + 0x45], ax
000233  54                    push       sp
000234  4c                    dec        sp
000235  41                    inc        cx
000236  53                    push       bx
000237  54                    push       sp
000238  44                    inc        sp
000239  49                    dec        cx
00023a  53                    push       bx
00023b  4b                    dec        bx
00023c  43                    inc        bx
00023d  48                    dec        ax
00023e  41                    inc        cx
00023f  4e                    dec        si
000240  47                    inc        di
000241  45                    inc        bp
000242  6200                  bound      ax, dword ptr [bx + si]
000244  0b4c4f                or         cx, word ptr [si + 0x4f]
000247  43                    inc        bx
000248  41                    inc        cx
000249  4c                    dec        sp
00024a  55                    push       bp
00024b  4e                    dec        si
00024c  4c                    dec        sp
00024d  4f                    dec        di
00024e  43                    inc        bx
00024f  4b                    dec        bx
000250  0900                  or         word ptr [bx + si], ax
000252  0b4c4f                or         cx, word ptr [si + 0x4f]
000255  43                    inc        bx
000256  4b                    dec        bx
000257  53                    push       bx
000258  45                    inc        bp
000259  47                    inc        di
00025a  4d                    dec        bp
00025b  45                    inc        bp
00025c  4e                    dec        si
00025d  54                    push       sp
00025e  17                    pop        ss
00025f  000c                  add        byte ptr [si], cl
000261  47                    inc        di
000262  45                    inc        bp
000263  54                    push       sp
000264  54                    push       sp
000265  41                    inc        cx
000266  53                    push       bx
000267  4b                    dec        bx
000268  51                    push       cx
000269  55                    push       bp
00026a  45                    inc        bp
00026b  55                    push       bp
00026c  45                    inc        bp
00026d  2300                  and        ax, word ptr [bx + si]
00026f  0b474c                or         ax, word ptr [bx + 0x4c]
000272  4f                    dec        di
000273  42                    inc        dx
000274  41                    inc        cx
000275  4c                    dec        sp
000276  46                    inc        si
000277  4c                    dec        sp
000278  41                    inc        cx
000279  47                    inc        di
00027a  53                    push       bx
00027b  16                    push       ss
00027c  0012                  add        byte ptr [bp + si], dl
00027e  57                    push       di
00027f  52                    push       dx
000280  49                    dec        cx
000281  54                    push       sp
000282  45                    inc        bp
000283  50                    push       ax
000284  52                    push       dx
000285  4f                    dec        di
000286  46                    inc        si
000287  49                    dec        cx
000288  4c                    dec        sp
000289  45                    inc        bp
00028a  53                    push       bx
00028b  54                    push       sp
00028c  52                    push       dx
00028d  49                    dec        cx
00028e  4e                    dec        si
00028f  47                    inc        di
000290  3b00                  cmp        ax, word ptr [bx + si]
000292  08444f                or         byte ptr [si + 0x4f], al
000295  53                    push       bx
000296  334341                xor        ax, word ptr [bp + di + 0x41]
000299  4c                    dec        sp
00029a  4c                    dec        sp
00029b  66000d                add        byte ptr [di], cl
00029e  47                    inc        di
00029f  45                    inc        bp
0002a0  54                    push       sp
0002a1  43                    inc        bx
0002a2  55                    push       bp
0002a3  52                    push       dx
0002a4  52                    push       dx
0002a5  45                    inc        bp
0002a6  4e                    dec        si
0002a7  54                    push       sp
0002a8  50                    push       ax
0002a9  44                    inc        sp
0002aa  42                    inc        dx
0002ab  250008                and        ax, 0x800
0002ae  4f                    dec        di
0002af  50                    push       ax
0002b0  45                    inc        bp
0002b1  4e                    dec        si
0002b2  46                    inc        si
0002b3  49                    dec        cx
0002b4  4c                    dec        sp
0002b5  45                    inc        bp
0002b6  4a                    dec        dx
0002b7  000b                  add        byte ptr [bp + di], cl
0002b9  53                    push       bx
0002ba  45                    inc        bp
0002bb  54                    push       sp
0002bc  50                    push       ax
0002bd  52                    push       dx
0002be  49                    dec        cx
0002bf  4f                    dec        di
0002c0  52                    push       dx
0002c1  49                    dec        cx
0002c2  54                    push       sp
0002c3  59                    pop        cx
0002c4  2000                  and        byte ptr [bx + si], al
0002c6  125345                adc        dl, byte ptr [bp + di + 0x45]
0002c9  54                    push       sp
0002ca  54                    push       sp
0002cb  41                    inc        cx
0002cc  53                    push       bx
0002cd  4b                    dec        bx
0002ce  49                    dec        cx
0002cf  4e                    dec        si
0002d0  54                    push       sp
0002d1  45                    inc        bp
0002d2  52                    push       dx
0002d3  43                    inc        bx
0002d4  48                    dec        ax
0002d5  41                    inc        cx
0002d6  4e                    dec        si
0002d7  47                    inc        di
0002d8  45                    inc        bp
0002d9  2800                  sub        byte ptr [bx + si], al
0002db  055448                add        ax, 0x4854
0002de  52                    push       dx
0002df  4f                    dec        di
0002e0  57                    push       di
0002e1  3800                  cmp        byte ptr [bx + si], al
0002e3  0b4652                or         ax, word ptr [bp + 0x52]
0002e6  45                    inc        bp
0002e7  45                    inc        bp
0002e8  4c                    dec        sp
0002e9  49                    dec        cx
0002ea  42                    inc        dx
0002eb  52                    push       dx
0002ec  41                    inc        cx
0002ed  52                    push       dx
0002ee  59                    pop        cx
0002ef  60                    pushaw     
0002f0  000d                  add        byte ptr [di], cl
0002f2  49                    dec        cx
0002f3  4e                    dec        si
0002f4  49                    dec        cx
0002f5  54                    push       sp
0002f6  41                    inc        cx
0002f7  54                    push       sp
0002f8  4f                    dec        di
0002f9  4d                    dec        bp
0002fa  54                    push       sp
0002fb  41                    inc        cx
0002fc  42                    inc        dx
0002fd  4c                    dec        sp
0002fe  45                    inc        bp
0002ff  44                    inc        sp
000300  000c                  add        byte ptr [si], cl
000302  53                    push       bx
000303  45                    inc        bp
000304  54                    push       sp
000305  54                    push       sp
000306  41                    inc        cx
000307  53                    push       bx
000308  4b                    dec        bx
000309  51                    push       cx
00030a  55                    push       bp
00030b  45                    inc        bp
00030c  55                    push       bp
00030d  45                    inc        bp
00030e  2200                  and        al, byte ptr [bx + si]
000310  0f474554              cmova      ax, word ptr [di + 0x54]
000314  4d                    dec        bp
000315  4f                    dec        di
000316  44                    inc        sp
000317  55                    push       bp
000318  4c                    dec        sp
000319  45                    inc        bp
00031a  48                    dec        ax
00031b  41                    inc        cx
00031c  4e                    dec        si
00031d  44                    inc        sp
00031e  4c                    dec        sp
00031f  45                    inc        bp
000320  2f                    das        
000321  000c                  add        byte ptr [si], cl
000323  47                    inc        di
000324  45                    inc        bp
000325  54                    push       sp
000326  54                    push       sp
000327  45                    inc        bp
000328  4d                    dec        bp
000329  50                    push       ax
00032a  44                    inc        sp
00032b  52                    push       dx
00032c  49                    dec        cx
00032d  56                    push       si
00032e  45                    inc        bp
00032f  5c                    pop        sp
000330  000b                  add        byte ptr [bp + di], cl
000332  47                    inc        di
000333  45                    inc        bp
000334  54                    push       sp
000335  41                    inc        cx
000336  54                    push       sp
000337  4f                    dec        di
000338  4d                    dec        bp
000339  4e                    dec        si
00033a  41                    inc        cx
00033b  4d                    dec        bp
00033c  45                    inc        bp
00033d  48                    dec        ax
00033e  0012                  add        byte ptr [bp + si], dl
000340  47                    inc        di
000341  4c                    dec        sp
000342  4f                    dec        di
000343  42                    inc        dx
000344  41                    inc        cx
000345  4c                    dec        sp
000346  4d                    dec        bp
000347  41                    inc        cx
000348  53                    push       bx
000349  54                    push       sp
00034a  45                    inc        bp
00034b  52                    push       dx
00034c  48                    dec        ax
00034d  41                    inc        cx
00034e  4e                    dec        si
00034f  44                    inc        sp
000350  4c                    dec        sp
000351  45                    inc        bp
000352  1c00                  sbb        al, 0
000354  104745                adc        byte ptr [bx + 0x45], al
000357  54                    push       sp
000358  50                    push       ax
000359  52                    push       dx
00035a  4f                    dec        di
00035b  46                    inc        si
00035c  49                    dec        cx
00035d  4c                    dec        sp
00035e  45                    inc        bp
00035f  53                    push       bx
000360  54                    push       sp
000361  52                    push       dx
000362  49                    dec        cx
000363  4e                    dec        si
000364  47                    inc        di
000365  3a00                  cmp        al, byte ptr [bx + si]
000367  115345                adc        word ptr [bp + di + 0x45], dx
00036a  54                    push       sp
00036b  54                    push       sp
00036c  41                    inc        cx
00036d  53                    push       bx
00036e  4b                    dec        bx
00036f  53                    push       bx
000370  49                    dec        cx
000371  47                    inc        di
000372  4e                    dec        si
000373  41                    inc        cx
000374  4c                    dec        sp
000375  50                    push       ax
000376  52                    push       dx
000377  4f                    dec        di
000378  43                    inc        bx
000379  26000e4143            add        byte ptr es:[0x4341], cl
00037e  43                    inc        bx
00037f  45                    inc        bp
000380  53                    push       bx
000381  53                    push       bx
000382  52                    push       dx
000383  45                    inc        bp
000384  53                    push       bx
000385  4f                    dec        di
000386  55                    push       bp
000387  52                    push       dx
000388  43                    inc        bx
000389  45                    inc        bp
00038a  40                    inc        ax
00038b  000e4745              add        byte ptr [0x4547], cl
00038f  54                    push       sp
000390  50                    push       ax
000391  52                    push       dx
000392  4f                    dec        di
000393  43                    inc        bx
000394  41                    inc        cx
000395  44                    inc        sp
000396  44                    inc        sp
000397  52                    push       dx
000398  45                    inc        bp
000399  53                    push       bx
00039a  53                    push       bx
00039b  3200                  xor        al, byte ptr [bx + si]
00039d  07                    pop        es
00039e  4c                    dec        sp
00039f  53                    push       bx
0003a0  54                    push       sp
0003a1  52                    push       dx
0003a2  4c                    dec        sp
0003a3  45                    inc        bp
0003a4  4e                    dec        si
0003a5  5a                    pop        dx
0003a6  000f                  add        byte ptr [bx], cl
0003a8  47                    inc        di
0003a9  45                    inc        bp
0003aa  54                    push       sp
0003ab  54                    push       sp
0003ac  45                    inc        bp
0003ad  4d                    dec        bp
0003ae  50                    push       ax
0003af  46                    inc        si
0003b0  49                    dec        cx
0003b1  4c                    dec        sp
0003b2  45                    inc        bp
0003b3  4e                    dec        si
0003b4  41                    inc        cx
0003b5  4d                    dec        bp
0003b6  45                    inc        bp
0003b7  61                    popaw      
0003b8  000a                  add        byte ptr [bp + si], cl
0003ba  4c                    dec        sp
0003bb  4f                    dec        di
0003bc  41                    inc        cx
0003bd  44                    inc        sp
0003be  4d                    dec        bp
0003bf  4f                    dec        di
0003c0  44                    inc        sp
0003c1  55                    push       bp
0003c2  4c                    dec        sp
0003c3  45                    inc        bp
0003c4  2d000c                sub        ax, 0xc00
0003c7  4c                    dec        sp
0003c8  4f                    dec        di
0003c9  43                    inc        bx
0003ca  41                    inc        cx
0003cb  4c                    dec        sp
0003cc  52                    push       dx
0003cd  45                    inc        bp
0003ce  41                    inc        cx
0003cf  4c                    dec        sp
0003d0  4c                    dec        sp
0003d1  4f                    dec        di
0003d2  43                    inc        bx
0003d3  06                    push       es
0003d4  000b                  add        byte ptr [bp + di], cl
0003d6  4c                    dec        sp
0003d7  4f                    dec        di
0003d8  43                    inc        bx
0003d9  41                    inc        cx
0003da  4c                    dec        sp
0003db  48                    dec        ax
0003dc  41                    inc        cx
0003dd  4e                    dec        si
0003de  44                    inc        sp
0003df  4c                    dec        sp
0003e0  45                    inc        bp
0003e1  0b00                  or         ax, word ptr [bx + si]
0003e3  07                    pop        es
0003e4  4c                    dec        sp
0003e5  53                    push       bx
0003e6  54                    push       sp
0003e7  52                    push       dx
0003e8  43                    inc        bx
0003e9  41                    inc        cx
0003ea  54                    push       sp
0003eb  59                    pop        cx
0003ec  000c                  add        byte ptr [si], cl
0003ee  47                    inc        di
0003ef  4c                    dec        sp
0003f0  4f                    dec        di
0003f1  42                    inc        dx
0003f2  41                    inc        cx
0003f3  4c                    dec        sp
0003f4  48                    dec        ax
0003f5  41                    inc        cx
0003f6  4e                    dec        si
0003f7  44                    inc        sp
0003f8  4c                    dec        sp
0003f9  45                    inc        bp
0003fa  150007                adc        ax, 0x700
0003fd  5f                    pop        di
0003fe  4c                    dec        sp
0003ff  57                    push       di
000400  52                    push       dx
000401  49                    dec        cx
000402  54                    push       sp
000403  45                    inc        bp
000404  56                    push       si
000405  000a                  add        byte ptr [bp + si], cl
000407  4c                    dec        sp
000408  4f                    dec        di
000409  43                    inc        bx
00040a  41                    inc        cx
00040b  4c                    dec        sp
00040c  41                    inc        cx
00040d  4c                    dec        sp
00040e  4c                    dec        sp
00040f  4f                    dec        di
000410  43                    inc        bx
000411  05000a                add        ax, 0xa00
000414  47                    inc        di
000415  45                    inc        bp
000416  54                    push       sp
000417  56                    push       si
000418  45                    inc        bp
000419  52                    push       dx
00041a  53                    push       bx
00041b  49                    dec        cx
00041c  4f                    dec        di
00041d  4e                    dec        si
00041e  0300                  add        ax, word ptr [bx + si]
000420  0f474554              cmova      ax, word ptr [di + 0x54]
000424  49                    dec        cx
000425  4e                    dec        si
000426  53                    push       bx
000427  54                    push       sp
000428  41                    inc        cx
000429  4e                    dec        si
00042a  43                    inc        bx
00042b  45                    inc        bp
00042c  44                    inc        sp
00042d  41                    inc        cx
00042e  54                    push       sp
00042f  41                    inc        cx
000430  36000c                add        byte ptr ss:[si], cl
000433  49                    dec        cx
000434  53                    push       bx
000435  53                    push       bx
000436  43                    inc        bx
000437  52                    push       dx
000438  45                    inc        bp
000439  45                    inc        bp
00043a  4e                    dec        si
00043b  47                    inc        di
00043c  52                    push       dx
00043d  41                    inc        cx
00043e  42                    inc        dx
00043f  2b00                  sub        ax, word ptr [bx + si]
000441  0d4745                or         ax, 0x4547
000444  54                    push       sp
000445  41                    inc        cx
000446  54                    push       sp
000447  4f                    dec        di
000448  4d                    dec        bp
000449  48                    dec        ax
00044a  41                    inc        cx
00044b  4e                    dec        si
00044c  44                    inc        sp
00044d  4c                    dec        sp
00044e  45                    inc        bp
00044f  49                    dec        cx
000450  000a                  add        byte ptr [bp + si], cl
000452  44                    inc        sp
000453  45                    inc        bp
000454  4c                    dec        sp
000455  45                    inc        bp
000456  54                    push       sp
000457  45                    inc        bp
000458  41                    inc        cx
000459  54                    push       sp
00045a  4f                    dec        di
00045b  4d                    dec        bp
00045c  47                    inc        di
00045d  0007                  add        byte ptr [bx], al
00045f  4c                    dec        sp
000460  53                    push       bx
000461  54                    push       sp
000462  52                    push       dx
000463  43                    inc        bx
000464  4d                    dec        bp
000465  50                    push       ax
000466  57                    push       di
000467  0012                  add        byte ptr [bp + si], dl
000469  53                    push       bx
00046a  45                    inc        bp
00046b  54                    push       sp
00046c  52                    push       dx
00046d  45                    inc        bp
00046e  53                    push       bx
00046f  4f                    dec        di
000470  55                    push       bp
000471  52                    push       dx
000472  43                    inc        bx
000473  45                    inc        bp
000474  48                    dec        ax
000475  41                    inc        cx
000476  4e                    dec        si
000477  44                    inc        sp
000478  4c                    dec        sp
000479  45                    inc        bp
00047a  52                    push       dx
00047b  43                    inc        bx
00047c  000c                  add        byte ptr [si], cl
00047e  4c                    dec        sp
00047f  4f                    dec        di
000480  41                    inc        cx
000481  44                    inc        sp
000482  52                    push       dx
000483  45                    inc        bp
000484  53                    push       bx
000485  4f                    dec        di
000486  55                    push       bp
000487  52                    push       dx
000488  43                    inc        bx
000489  45                    inc        bp
00048a  3d0008                cmp        ax, 0x800
00048d  49                    dec        cx
00048e  4e                    dec        si
00048f  49                    dec        cx
000490  54                    push       sp
000491  54                    push       sp
000492  41                    inc        cx
000493  53                    push       bx
000494  4b                    dec        bx
000495  5b                    pop        bx
000496  000d                  add        byte ptr [di], cl
000498  47                    inc        di
000499  45                    inc        bp
00049a  54                    push       sp
00049b  50                    push       ax
00049c  52                    push       dx
00049d  4f                    dec        di
00049e  46                    inc        si
00049f  49                    dec        cx
0004a0  4c                    dec        sp
0004a1  45                    inc        bp
0004a2  49                    dec        cx
0004a3  4e                    dec        si
0004a4  54                    push       sp
0004a5  3900                  cmp        word ptr [bx + si], ax
0004a7  0a4652                or         al, byte ptr [bp + 0x52]
0004aa  45                    inc        bp
0004ab  45                    inc        bp
0004ac  4d                    dec        bp
0004ad  4f                    dec        di
0004ae  44                    inc        sp
0004af  55                    push       bp
0004b0  4c                    dec        sp
0004b1  45                    inc        bp
0004b2  2e0008                add        byte ptr cs:[bx + si], cl
0004b5  46                    inc        si
0004b6  49                    dec        cx
0004b7  4e                    dec        si
0004b8  44                    inc        sp
0004b9  41                    inc        cx
0004ba  54                    push       sp
0004bb  4f                    dec        di
0004bc  4d                    dec        bp
0004bd  45                    inc        bp
0004be  000b                  add        byte ptr [bp + di], cl
0004c0  4c                    dec        sp
0004c1  4f                    dec        di
0004c2  43                    inc        bx
0004c3  41                    inc        cx
0004c4  4c                    dec        sp
0004c5  4e                    dec        si
0004c6  4f                    dec        di
0004c7  54                    push       sp
0004c8  49                    dec        cx
0004c9  46                    inc        si
0004ca  59                    pop        cx
0004cb  0e                    push       cs
0004cc  0008                  add        byte ptr [bx + si], cl
0004ce  41                    inc        cx
0004cf  4e                    dec        si
0004d0  53                    push       bx
0004d1  49                    dec        cx
0004d2  50                    push       ax
0004d3  52                    push       dx
0004d4  45                    inc        bp
0004d5  56                    push       si
0004d6  4e                    dec        si
0004d7  000c                  add        byte ptr [si], cl
0004d9  4c                    dec        sp
0004da  4f                    dec        di
0004db  43                    inc        bx
0004dc  4b                    dec        bx
0004dd  52                    push       dx
0004de  45                    inc        bp
0004df  53                    push       bx
0004e0  4f                    dec        di
0004e1  55                    push       bp
0004e2  52                    push       dx
0004e3  43                    inc        bx
0004e4  45                    inc        bp
0004e5  3e0009                add        byte ptr ds:[bx + di], cl
0004e8  50                    push       ax
0004e9  4f                    dec        di
0004ea  53                    push       bx
0004eb  54                    push       sp
0004ec  45                    inc        bp
0004ed  56                    push       si
0004ee  45                    inc        bp
0004ef  4e                    dec        si
0004f0  54                    push       sp
0004f1  1f                    pop        ds
0004f2  000d                  add        byte ptr [di], cl
0004f4  47                    inc        di
0004f5  4c                    dec        sp
0004f6  4f                    dec        di
0004f7  42                    inc        dx
0004f8  41                    inc        cx
0004f9  4c                    dec        sp
0004fa  52                    push       dx
0004fb  45                    inc        bp
0004fc  41                    inc        cx
0004fd  4c                    dec        sp
0004fe  4c                    dec        sp
0004ff  4f                    dec        di
000500  43                    inc        bx
000501  1000                  adc        byte ptr [bx + si], al
000503  0a474c                or         al, byte ptr [bx + 0x4c]
000506  4f                    dec        di
000507  42                    inc        dx
000508  41                    inc        cx
000509  4c                    dec        sp
00050a  46                    inc        si
00050b  52                    push       dx
00050c  45                    inc        bp
00050d  45                    inc        bp
00050e  1100                  adc        word ptr [bx + si], ax
000510  09454e                or         word ptr [di + 0x4e], ax
000513  41                    inc        cx
000514  42                    inc        dx
000515  4c                    dec        sp
000516  45                    inc        bp
000517  44                    inc        sp
000518  4f                    dec        di
000519  53                    push       bx
00051a  2900                  sub        word ptr [bx + si], ax
00051c  094641                or         word ptr [bp + 0x41], ax
00051f  54                    push       sp
000520  41                    inc        cx
000521  4c                    dec        sp
000522  45                    inc        bp
000523  58                    pop        ax
000524  49                    dec        cx
000525  54                    push       sp
000526  0100                  add        word ptr [bx + si], ax
000528  0b4e45                or         cx, word ptr [bp + 0x45]
00052b  54                    push       sp
00052c  42                    inc        dx
00052d  49                    dec        cx
00052e  4f                    dec        di
00052f  53                    push       bx
000530  43                    inc        bx
000531  41                    inc        cx
000532  4c                    dec        sp
000533  4c                    dec        sp
000534  67000c4f              add        byte ptr [edi + ecx*2], cl
000538  50                    push       ax
000539  45                    inc        bp
00053a  4e                    dec        si
00053b  50                    push       ax
00053c  41                    inc        cx
00053d  54                    push       sp
00053e  48                    dec        ax
00053f  4e                    dec        si
000540  41                    inc        cx
000541  4d                    dec        bp
000542  45                    inc        bp
000543  4b                    dec        bx
000544  0011                  add        byte ptr [bx + di], dl
000546  47                    inc        di
000547  45                    inc        bp
000548  54                    push       sp
000549  4d                    dec        bp
00054a  4f                    dec        di
00054b  44                    inc        sp
00054c  55                    push       bp
00054d  4c                    dec        sp
00054e  45                    inc        bp
00054f  46                    inc        si
000550  49                    dec        cx
000551  4c                    dec        sp
000552  45                    inc        bp
000553  4e                    dec        si
000554  41                    inc        cx
000555  4d                    dec        bp
000556  45                    inc        bp
000557  3100                  xor        word ptr [bx + si], ax
000559  0c46                  or         al, 0x46
00055b  52                    push       dx
00055c  45                    inc        bp
00055d  45                    inc        bp
00055e  52                    push       dx
00055f  45                    inc        bp
000560  53                    push       bx
000561  4f                    dec        di
000562  55                    push       bp
000563  52                    push       dx
000564  43                    inc        bx
000565  45                    inc        bp
000566  3f                    aas        
000567  0011                  add        byte ptr [bx + di], dl
000569  53                    push       bx
00056a  45                    inc        bp
00056b  54                    push       sp
00056c  54                    push       sp
00056d  41                    inc        cx
00056e  53                    push       bx
00056f  4b                    dec        bx
000570  53                    push       bx
000571  57                    push       di
000572  49                    dec        cx
000573  54                    push       sp
000574  43                    inc        bx
000575  48                    dec        ax
000576  50                    push       ax
000577  52                    push       dx
000578  4f                    dec        di
000579  43                    inc        bx
00057a  27                    daa        
00057b  000a                  add        byte ptr [bp + si], cl
00057d  4c                    dec        sp
00057e  4f                    dec        di
00057f  43                    inc        bx
000580  41                    inc        cx
000581  4c                    dec        sp
000582  46                    inc        si
000583  4c                    dec        sp
000584  41                    inc        cx
000585  47                    inc        di
000586  53                    push       bx
000587  0c00                  or         al, 0
000589  0b5345                or         dx, word ptr [bp + di + 0x45]
00058c  54                    push       sp
00058d  53                    push       bx
00058e  57                    push       di
00058f  41                    inc        cx
000590  50                    push       ax
000591  48                    dec        ax
000592  4f                    dec        di
000593  4f                    dec        di
000594  4b                    dec        bx
000595  1b00                  sbb        ax, word ptr [bx + si]
000597  07                    pop        es
000598  41                    inc        cx
000599  44                    inc        sp
00059a  44                    inc        sp
00059b  41                    inc        cx
00059c  54                    push       sp
00059d  4f                    dec        di
00059e  4d                    dec        bp
00059f  46                    inc        si
0005a0  000d                  add        byte ptr [di], cl
0005a2  41                    inc        cx
0005a3  4c                    dec        sp
0005a4  4c                    dec        sp
0005a5  4f                    dec        di
0005a6  43                    inc        bx
0005a7  52                    push       dx
0005a8  45                    inc        bp
0005a9  53                    push       bx
0005aa  4f                    dec        di
0005ab  55                    push       bp
0005ac  52                    push       dx
0005ad  43                    inc        bx
0005ae  45                    inc        bp
0005af  42                    inc        dx
0005b0  000d                  add        byte ptr [di], cl
0005b2  55                    push       bp
0005b3  4e                    dec        si
0005b4  4c                    dec        sp
0005b5  4f                    dec        di
0005b6  43                    inc        bx
0005b7  4b                    dec        bx
0005b8  53                    push       bx
0005b9  45                    inc        bp
0005ba  47                    inc        di
0005bb  4d                    dec        bp
0005bc  45                    inc        bp
0005bd  4e                    dec        si
0005be  54                    push       sp
0005bf  1800                  sbb        byte ptr [bx + si], al
0005c1  0b474c                or         ax, word ptr [bx + 0x4c]
0005c4  4f                    dec        di
0005c5  42                    inc        dx
0005c6  41                    inc        cx
0005c7  4c                    dec        sp
0005c8  41                    inc        cx
0005c9  4c                    dec        sp
0005ca  4c                    dec        sp
0005cb  4f                    dec        di
0005cc  43                    inc        bx
0005cd  0f0009                str        word ptr [bx + di]
0005d0  41                    inc        cx
0005d1  4e                    dec        si
0005d2  53                    push       bx
0005d3  49                    dec        cx
0005d4  55                    push       bp
0005d5  50                    push       ax
0005d6  50                    push       ax
0005d7  45                    inc        bp
0005d8  52                    push       dx
0005d9  4f                    dec        di
0005da  0005                  add        byte ptr [di], al
0005dc  59                    pop        cx
0005dd  49                    dec        cx
0005de  45                    inc        bp
0005df  4c                    dec        sp
0005e0  44                    inc        sp
0005e1  1d000e                sbb        ax, 0xe00
0005e4  47                    inc        di
0005e5  45                    inc        bp
0005e6  54                    push       sp
0005e7  4d                    dec        bp
0005e8  4f                    dec        di
0005e9  44                    inc        sp
0005ea  55                    push       bp
0005eb  4c                    dec        sp
0005ec  45                    inc        bp
0005ed  55                    push       bp
0005ee  53                    push       bx
0005ef  41                    inc        cx
0005f0  47                    inc        di
0005f1  45                    inc        bp
0005f2  3000                  xor        byte ptr [bx + si], al
0005f4  114445                adc        word ptr [si + 0x45], ax
0005f7  46                    inc        si
0005f8  49                    dec        cx
0005f9  4e                    dec        si
0005fa  45                    inc        bp
0005fb  48                    dec        ax
0005fc  41                    inc        cx
0005fd  4e                    dec        si
0005fe  44                    inc        sp
0005ff  4c                    dec        sp
000600  45                    inc        bp
000601  54                    push       sp
000602  41                    inc        cx
000603  42                    inc        dx
000604  4c                    dec        sp
000605  45                    inc        bp
000606  5e                    pop        si
000607  00065f4c              add        byte ptr [0x4c5f], al
00060b  52                    push       dx
00060c  45                    inc        bp
00060d  41                    inc        cx
00060e  44                    inc        sp
00060f  52                    push       dx
000610  000c                  add        byte ptr [si], cl
000612  46                    inc        si
000613  49                    dec        cx
000614  4e                    dec        si
000615  44                    inc        sp
000616  52                    push       dx
000617  45                    inc        bp
000618  53                    push       bx
000619  4f                    dec        di
00061a  55                    push       bp
00061b  52                    push       dx
00061c  43                    inc        bx
00061d  45                    inc        bp
00061e  3c00                  cmp        al, 0
000620  0000                  add        byte ptr [bx + si], al
000622  0000                  add        byte ptr [bx + si], al
000624  0000                  add        byte ptr [bx + si], al
000626  0000                  add        byte ptr [bx + si], al
000628  0000                  add        byte ptr [bx + si], al
00062a  0000                  add        byte ptr [bx + si], al
00062c  0000                  add        byte ptr [bx + si], al
00062e  0000                  add        byte ptr [bx + si], al
000630  3e4d                  dec        bp
000632  6963726f73            imul       sp, word ptr [bp + di + 0x72], 0x736f
000637  6f                    outsw      dx, word ptr [si]
000638  667420                je         0x65b
00063b  57                    push       di
00063c  696e646f77            imul       bp, word ptr [bp + 0x64], 0x776f
000641  7320                  jae        0x663
000643  53                    push       bx
000644  7973                  jns        0x6b9
000646  7465                  je         0x6ad
000648  6d                    insw       word ptr es:[di], dx
000649  20636f                and        byte ptr [bp + di + 0x6f], ah
00064c  6e                    outsb      dx, byte ptr [si]
00064d  6669677572617469      imul       esp, dword ptr [bx + 0x75], 0x69746172
000655  6f                    outsw      dx, word ptr [si]
000656  6e                    outsb      dx, byte ptr [si]
000657  206d6f                and        byte ptr [di + 0x6f], ch
00065a  64756c                jne        0x6c9
00065d  6520666f              and        byte ptr gs:[bp + 0x6f], ah
000661  7220                  jb         0x683
000663  49                    dec        cx
000664  42                    inc        dx
000665  4d                    dec        bp
000666  2f                    das        
000667  50                    push       ax
000668  43                    inc        bx
000669  2f                    das        
00066a  58                    pop        ax
00066b  54                    push       sp
00066c  2f                    das        
00066d  41                    inc        cx
00066e  54                    push       sp
00066f  0000                  add        byte ptr [bx + si], al
000671  114352                adc        word ptr [bp + di + 0x52], ax
000674  45                    inc        bp
000675  41                    inc        cx
000676  54                    push       sp
000677  45                    inc        bp
000678  53                    push       bx
000679  59                    pop        cx
00067a  53                    push       bx
00067b  54                    push       sp
00067c  45                    inc        bp
00067d  4d                    dec        bp
00067e  54                    push       sp
00067f  49                    dec        cx
000680  4d                    dec        bp
000681  45                    inc        bp
000682  52                    push       dx
000683  0200                  add        al, byte ptr [bx + si]
000685  0f494e51              cmovns     cx, word ptr [bp + 0x51]
000689  55                    push       bp
00068a  49                    dec        cx
00068b  52                    push       dx
00068c  45                    inc        bp
00068d  4c                    dec        sp
00068e  4f                    dec        di
00068f  4e                    dec        si
000690  47                    inc        di
000691  49                    dec        cx
000692  4e                    dec        si
000693  54                    push       sp
000694  53                    push       bx
000695  0d000d                or         ax, 0xd00
000698  49                    dec        cx
000699  4e                    dec        si
00069a  51                    push       cx
00069b  55                    push       bp
00069c  49                    dec        cx
00069d  52                    push       dx
00069e  45                    inc        bp
00069f  53                    push       bx
0006a0  59                    pop        cx
0006a1  53                    push       bx
0006a2  54                    push       sp
0006a3  45                    inc        bp
0006a4  4d                    dec        bp
0006a5  0100                  add        word ptr [bx + si], ax
0006a7  0f4b494c              cmovnp     cx, word ptr [bx + di + 0x4c]
0006ab  4c                    dec        sp
0006ac  53                    push       bx
0006ad  59                    pop        cx
0006ae  53                    push       bx
0006af  54                    push       sp
0006b0  45                    inc        bp
0006b1  4d                    dec        bp
0006b2  54                    push       sp
0006b3  49                    dec        cx
0006b4  4d                    dec        bp
0006b5  45                    inc        bp
0006b6  52                    push       dx
0006b7  0300                  add        ax, word ptr [bx + si]
0006b9  12454e                adc        al, byte ptr [di + 0x4e]
0006bc  41                    inc        cx
0006bd  42                    inc        dx
0006be  4c                    dec        sp
0006bf  45                    inc        bp
0006c0  53                    push       bx
0006c1  59                    pop        cx
0006c2  53                    push       bx
0006c3  54                    push       sp
0006c4  45                    inc        bp
0006c5  4d                    dec        bp
0006c6  54                    push       sp
0006c7  49                    dec        cx
0006c8  4d                    dec        bp
0006c9  45                    inc        bp
0006ca  52                    push       dx
0006cb  53                    push       bx
0006cc  0400                  add        al, 0
0006ce  134449                adc        ax, word ptr [si + 0x49]
0006d1  53                    push       bx
0006d2  41                    inc        cx
0006d3  42                    inc        dx
0006d4  4c                    dec        sp
0006d5  45                    inc        bp
0006d6  53                    push       bx
0006d7  59                    pop        cx
0006d8  53                    push       bx
0006d9  54                    push       sp
0006da  45                    inc        bp
0006db  4d                    dec        bp
0006dc  54                    push       sp
0006dd  49                    dec        cx
0006de  4d                    dec        bp
0006df  45                    inc        bp
0006e0  52                    push       dx
0006e1  53                    push       bx
0006e2  050000                add        ax, 0
0006e5  0000                  add        byte ptr [bx + si], al
0006e7  0000                  add        byte ptr [bx + si], al
0006e9  0000                  add        byte ptr [bx + si], al
0006eb  0000                  add        byte ptr [bx + si], al
0006ed  0000                  add        byte ptr [bx + si], al
0006ef  005c4b                add        byte ptr [si + 0x4b], bl
0006f2  45                    inc        bp
0006f3  59                    pop        cx
0006f4  42                    inc        dx
0006f5  4f                    dec        di
0006f6  41                    inc        cx
0006f7  52                    push       dx
0006f8  44                    inc        sp
0006f9  20556e                and        byte ptr [di + 0x6e], dl
0006fc  6974656420            imul       si, word ptr [si + 0x65], 0x2064
000701  53                    push       bx
000702  7461                  je         0x765
000704  7465                  je         0x76b
000706  732c                  jae        0x734
000708  204d65                and        byte ptr [di + 0x65], cl
00070b  7869                  js         0x776
00070d  636f3a                arpl       word ptr [bx + 0x3a], bp
000710  3121                  xor        word ptr [bx + di], sp
000712  3021                  xor        byte ptr [bx + di], ah
000714  3021                  xor        byte ptr [bx + di], ah
000716  3221                  xor        ah, byte ptr [bx + di]
000718  3021                  xor        byte ptr [bx + di], ah
00071a  3021                  xor        byte ptr [bx + di], ah
00071c  41                    inc        cx
00071d  4d                    dec        bp
00071e  21504d                and        word ptr [bx + si + 0x4d], dx
000721  2124                  and        word ptr [si], sp
000723  212c                  and        word ptr [si], bp
000725  212e212f              and        word ptr [0x2f21], bp
000729  213a                  and        word ptr [bp + si], di
00072b  212c                  and        word ptr [si], bp
00072d  2121                  and        word ptr [bx + di], sp
00072f  353221                xor        ax, 0x2132
000732  3121                  xor        word ptr [bx + di], sp
000734  3021                  xor        byte ptr [bx + di], ah
000736  3221                  xor        ah, byte ptr [bx + di]
000738  3021                  xor        byte ptr [bx + di], ah
00073a  3021                  xor        byte ptr [bx + di], ah
00073c  41                    inc        cx
00073d  4d                    dec        bp
00073e  21504d                and        word ptr [bx + si + 0x4d], dx
000741  2124                  and        word ptr [si], sp
000743  212c                  and        word ptr [si], bp
000745  212e212f              and        word ptr [0x2f21], bp
000749  213a                  and        word ptr [bp + si], di
00074b  212c                  and        word ptr [si], bp
00074d  0000                  add        byte ptr [bx + si], al
00074f  07                    pop        es
000750  44                    inc        sp
000751  49                    dec        cx
000752  53                    push       bx
000753  41                    inc        cx
000754  42                    inc        dx
000755  4c                    dec        sp
000756  45                    inc        bp
000757  0300                  add        ax, word ptr [bx + si]
000759  07                    pop        es
00075a  49                    dec        cx
00075b  4e                    dec        si
00075c  51                    push       cx
00075d  55                    push       bp
00075e  49                    dec        cx
00075f  52                    push       dx
000760  45                    inc        bp
000761  0100                  add        word ptr [bx + si], ax
000763  06                    push       es
000764  45                    inc        bp
000765  4e                    dec        si
000766  41                    inc        cx
000767  42                    inc        dx
000768  4c                    dec        sp
000769  45                    inc        bp
00076a  0200                  add        al, byte ptr [bx + si]
00076c  094f45                or         word ptr [bx + 0x45], cx
00076f  4d                    dec        bp
000770  54                    push       sp
000771  4f                    dec        di
000772  41                    inc        cx
000773  4e                    dec        si
000774  53                    push       bx
000775  49                    dec        cx
000776  06                    push       es
000777  0007                  add        byte ptr [bx], al
000779  54                    push       sp
00077a  4f                    dec        di
00077b  41                    inc        cx
00077c  53                    push       bx
00077d  43                    inc        bx
00077e  49                    dec        cx
00077f  49                    dec        cx
000780  0400                  add        al, 0
000782  09414e                or         word ptr [bx + di + 0x4e], ax
000785  53                    push       bx
000786  49                    dec        cx
000787  54                    push       sp
000788  4f                    dec        di
000789  4f                    dec        di
00078a  45                    inc        bp
00078b  4d                    dec        bp
00078c  050000                add        ax, 0
00078f  008cd890              add        byte ptr [si - 0x6f28], cl
000793  45                    inc        bp
000794  55                    push       bp
000795  8bec                  mov        bp, sp
000797  1e                    push       ds
000798  8ed8                  mov        ds, ax
00079a  1e                    push       ds
00079b  b84000                mov        ax, 0x40
00079e  8ed8                  mov        ds, ax
0007a0  f606960010            test       byte ptr [0x96], 0x10
0007a5  1f                    pop        ds
0007a6  740f                  je         0x7b7
0007a8  b491                  mov        ah, 0x91
0007aa  cd16                  int        0x16
0007ac  f6c480                test       ah, 0x80
0007af  7506                  jne        0x7b7
0007b1  c606200001            mov        byte ptr [0x20], 1
0007b6  90                    nop        
0007b7  33c0                  xor        ax, ax
0007b9  f7d0                  not        ax
0007bb  83ed02                sub        bp, 2
0007be  8be5                  mov        sp, bp
0007c0  1f                    pop        ds
0007c1  5d                    pop        bp
0007c2  4d                    dec        bp
0007c3  cb                    retf       
0007c4  0000                  add        byte ptr [bx + si], al
0007c6  0000                  add        byte ptr [bx + si], al
0007c8  0000                  add        byte ptr [bx + si], al
0007ca  0000                  add        byte ptr [bx + si], al
0007cc  0000                  add        byte ptr [bx + si], al
0007ce  0000                  add        byte ptr [bx + si], al
0007d0  0f4d6963              cmovge     bp, word ptr [bx + di + 0x63]
0007d4  726f                  jb         0x845
0007d6  736f                  jae        0x847
0007d8  667420                je         0x7fb
0007db  4d                    dec        bp
0007dc  6f                    outsw      dx, word ptr [si]
0007dd  7573                  jne        0x852
0007df  650000                add        byte ptr gs:[bx + si], al
0007e2  07                    pop        es
0007e3  44                    inc        sp
0007e4  49                    dec        cx
0007e5  53                    push       bx
0007e6  41                    inc        cx
0007e7  42                    inc        dx
0007e8  4c                    dec        sp
0007e9  45                    inc        bp
0007ea  0300                  add        ax, word ptr [bx + si]
0007ec  07                    pop        es
0007ed  49                    dec        cx
0007ee  4e                    dec        si
0007ef  51                    push       cx
0007f0  55                    push       bp
0007f1  49                    dec        cx
0007f2  52                    push       dx
0007f3  45                    inc        bp
0007f4  0100                  add        word ptr [bx + si], ax
0007f6  0f4d4f55              cmovge     cx, word ptr [bx + 0x55]
0007fa  53                    push       bx
0007fb  45                    inc        bp
0007fc  47                    inc        di
0007fd  45                    inc        bp
0007fe  54                    push       sp
0007ff  49                    dec        cx
000800  4e                    dec        si
000801  54                    push       sp
000802  56                    push       si
000803  45                    inc        bp
000804  43                    inc        bx
000805  54                    push       sp
000806  0400                  add        al, 0
000808  06                    push       es
000809  45                    inc        bp
00080a  4e                    dec        si
00080b  41                    inc        cx
00080c  42                    inc        dx
00080d  4c                    dec        sp
00080e  45                    inc        bp
00080f  0200                  add        al, byte ptr [bx + si]
000811  0000                  add        byte ptr [bx + si], al
000813  0000                  add        byte ptr [bx + si], al
000815  0000                  add        byte ptr [bx + si], al
000817  0000                  add        byte ptr [bx + si], al
000819  0000                  add        byte ptr [bx + si], al
00081b  0000                  add        byte ptr [bx + si], al
00081d  0000                  add        byte ptr [bx + si], al
00081f  008cd890              add        byte ptr [si - 0x6f28], cl
000823  45                    inc        bp
000824  55                    push       bp
000825  8bec                  mov        bp, sp
000827  1e                    push       ds
000828  8ed8                  mov        ds, ax
00082a  57                    push       di
00082b  c47e06                les        di, ptr [bp + 6]
00082e  a00300                mov        al, byte ptr [3]
000831  98                    cwde       
000832  86c4                  xchg       ah, al
000834  b4ff                  mov        ah, 0xff
000836  ab                    stosw      word ptr es:[di], ax
000837  b80200                mov        ax, 2
00083a  ab                    stosw      word ptr es:[di], ax
00083b  a11200                mov        ax, word ptr [0x12]
00083e  ab                    stosw      word ptr es:[di], ax
00083f  b80200                mov        ax, 2
000842  ab                    stosw      word ptr es:[di], ax
000843  ab                    stosw      word ptr es:[di], ax
000844  33c0                  xor        ax, ax
000846  ab                    stosw      word ptr es:[di], ax
000847  ab                    stosw      word ptr es:[di], ax
000848  b80e00                mov        ax, 0xe
00084b  5f                    pop        di
00084c  8d66fe                lea        sp, [bp - 2]
00084f  1f                    pop        ds
000850  5d                    pop        bp
000851  4d                    dec        bp
000852  ca0400                retf       4
000855  8cd8                  mov        ax, ds
000857  90                    nop        
000858  45                    inc        bp
000859  55                    push       bp
00085a  8bec                  mov        bp, sp
00085c  1e                    push       ds
00085d  8ed8                  mov        ds, ax
00085f  56                    push       si
000860  57                    push       di
000861  fa                    cli        
000862  8b4606                mov        ax, word ptr [bp + 6]
000865  a30600                mov        word ptr [6], ax
000868  8b4608                mov        ax, word ptr [bp + 8]
00086b  a30800                mov        word ptr [8], ax
00086e  fb                    sti        
00086f  a00300                mov        al, byte ptr [3]
000872  3480                  xor        al, 0x80
000874  a881                  test       al, 0x81
000876  7509                  jne        0x881
000878  ff160e00              call       word ptr [0xe]
00087c  800e030001            or         byte ptr [3], 1
000881  5f                    pop        di
000882  5e                    pop        si
000883  8d66fe                lea        sp, [bp - 2]
000886  1f                    pop        ds
000887  5d                    pop        bp
000888  4d                    dec        bp
000889  ca0400                retf       4
00088c  8cd8                  mov        ax, ds
00088e  90                    nop        
00088f  45                    inc        bp
000890  55                    push       bp
000891  8bec                  mov        bp, sp
000893  1e                    push       ds
000894  8ed8                  mov        ds, ax
000896  56                    push       si
000897  57                    push       di
000898  f606030001            test       byte ptr [3], 1
00089d  7409                  je         0x8a8
00089f  ff161000              call       word ptr [0x10]
0008a3  80260300fe            and        byte ptr [3], 0xfe
0008a8  5f                    pop        di
0008a9  5e                    pop        si
0008aa  8d66fe                lea        sp, [bp - 2]
0008ad  1f                    pop        ds
0008ae  5d                    pop        bp
0008af  4d                    dec        bp
0008b0  cb                    retf       
0008b1  8cd8                  mov        ax, ds
0008b3  90                    nop        
0008b4  45                    inc        bp
0008b5  55                    push       bp
0008b6  8bec                  mov        bp, sp
0008b8  1e                    push       ds
0008b9  8ed8                  mov        ds, ax
0008bb  a00000                mov        al, byte ptr [0]
0008be  98                    cwde       
0008bf  8d66fe                lea        sp, [bp - 2]
0008c2  1f                    pop        ds
0008c3  5d                    pop        bp
0008c4  4d                    dec        bp
0008c5  cb                    retf       
0008c6  8a260100              mov        ah, byte ptr [1]
0008ca  80f4ff                xor        ah, 0xff
0008cd  7410                  je         0x8df
0008cf  fa                    cli        
0008d0  e421                  in         al, 0x21
0008d2  8ad8                  mov        bl, al
0008d4  0ac4                  or         al, ah
0008d6  22dc                  and        bl, ah
0008d8  e621                  out        0x21, al
0008da  fb                    sti        
0008db  881e0200              mov        byte ptr [2], bl
0008df  b435                  mov        ah, 0x35
0008e1  a00000                mov        al, byte ptr [0]
0008e4  cd21                  int        0x21
0008e6  891e0a00              mov        word ptr [0xa], bx
0008ea  8c060c00              mov        word ptr [0xc], es
0008ee  b425                  mov        ah, 0x25
0008f0  a00000                mov        al, byte ptr [0]
0008f3  ba1400                mov        dx, 0x14
0008f6  cd21                  int        0x21
0008f8  fb                    sti        
0008f9  c3                    ret        
0008fa  8a260100              mov        ah, byte ptr [1]
0008fe  fa                    cli        
0008ff  e421                  in         al, 0x21
000901  22c4                  and        al, ah
000903  e621                  out        0x21, al
000905  fb                    sti        
000906  c3                    ret        
000907  8a260100              mov        ah, byte ptr [1]
00090b  80f4ff                xor        ah, 0xff
00090e  7408                  je         0x918
000910  fa                    cli        
000911  e421                  in         al, 0x21
000913  0ac4                  or         al, ah
000915  e621                  out        0x21, al
000917  fb                    sti        
000918  1e                    push       ds
000919  b425                  mov        ah, 0x25
00091b  a00000                mov        al, byte ptr [0]
00091e  c5160a00              lds        dx, ptr [0xa]
000922  cd21                  int        0x21
000924  1f                    pop        ds
000925  f6060200ff            test       byte ptr [2], 0xff
00092a  7513                  jne        0x93f
00092c  8a260100              mov        ah, byte ptr [1]
000930  fa                    cli        
000931  e421                  in         al, 0x21
000933  22c4                  and        al, ah
000935  e621                  out        0x21, al
000937  fb                    sti        
000938  a00300                mov        al, byte ptr [3]
00093b  f6d0                  not        al
00093d  2402                  and        al, 2
00093f  c3                    ret        
000940  8cd8                  mov        ax, ds
000942  90                    nop        
000943  45                    inc        bp
000944  55                    push       bp
000945  8bec                  mov        bp, sp
000947  1e                    push       ds
000948  8ed8                  mov        ds, ax
00094a  56                    push       si
00094b  57                    push       di
00094c  0e                    push       cs
00094d  07                    pop        es
00094e  baaf01                mov        dx, 0x1af
000951  33c9                  xor        cx, cx
000953  b81400                mov        ax, 0x14
000956  cd33                  int        0x33
000958  81faaf01              cmp        dx, 0x1af
00095c  7508                  jne        0x966
00095e  8cc8                  mov        ax, cs
000960  8cc3                  mov        bx, es
000962  3bc3                  cmp        ax, bx
000964  7415                  je         0x97b
000966  b81400                mov        ax, 0x14
000969  cd33                  int        0x33
00096b  81faaf01              cmp        dx, 0x1af
00096f  750a                  jne        0x97b
000971  8cc8                  mov        ax, cs
000973  8cc3                  mov        bx, es
000975  3bc3                  cmp        ax, bx
000977  7502                  jne        0x97b
000979  e308                  jcxz       0x983
00097b  33c0                  xor        ax, ax
00097d  cd33                  int        0x33
00097f  0bc0                  or         ax, ax
000981  7412                  je         0x995
000983  800e030002            or         byte ptr [3], 2
000988  b430                  mov        ah, 0x30
00098a  cd21                  int        0x21
00098c  3c0a                  cmp        al, 0xa
00098e  7205                  jb         0x995
000990  e8f607                call       0x1189
000993  eb1d                  jmp        0x9b2
000995  e84303                call       0xcdb
000998  7304                  jae        0x99e
00099a  e307                  jcxz       0x9a3
00099c  eb14                  jmp        0x9b2
00099e  e8ea04                call       0xe8b
0009a1  720f                  jb         0x9b2
0009a3  e87b06                call       0x1021
0009a6  720a                  jb         0x9b2
0009a8  e83e01                call       0xae9
0009ab  7205                  jb         0x9b2
0009ad  be1400                mov        si, 0x14
0009b0  eb10                  jmp        0x9c2
0009b2  800e030080            or         byte ptr [3], 0x80
0009b7  bf1400                mov        di, 0x14
0009ba  1e                    push       ds
0009bb  07                    pop        es
0009bc  0e                    push       cs
0009bd  1f                    pop        ds
0009be  f3a4                  rep movsb  byte ptr es:[di], byte ptr [si]
0009c0  06                    push       es
0009c1  1f                    pop        ds
0009c2  4e                    dec        si
0009c3  b80100                mov        ax, 1
0009c6  5f                    pop        di
0009c7  5e                    pop        si
0009c8  8d66fe                lea        sp, [bp - 2]
0009cb  1f                    pop        ds
0009cc  5d                    pop        bp
0009cd  4d                    dec        bp
0009ce  cb                    retf       
0009cf  cb                    retf       
0009d0  50                    push       ax
0009d1  53                    push       bx
0009d2  51                    push       cx
0009d3  52                    push       dx
0009d4  56                    push       si
0009d5  57                    push       di
0009d6  55                    push       bp
0009d7  1e                    push       ds
0009d8  06                    push       es
0009d9  8cc8                  mov        ax, cs
0009db  8ed8                  mov        ds, ax
0009dd  8b160400              mov        dx, word ptr [4]
0009e1  b102                  mov        cl, 2
0009e3  ec                    in         al, dx
0009e4  d2e0                  shl        al, cl
0009e6  7312                  jae        0x9fa
0009e8  8a269400              mov        ah, byte ptr [0x94]
0009ec  d2e4                  shl        ah, cl
0009ee  d2c4                  rol        ah, cl
0009f0  d3e8                  shr        ax, cl
0009f2  a29400                mov        byte ptr [0x94], al
0009f5  b800ff                mov        ax, 0xff00
0009f8  eb30                  jmp        0xa2a
0009fa  fe069500              inc        byte ptr [0x95]
0009fe  7f09                  jg         0xa09
000a00  a29300                mov        byte ptr [0x93], al
000a03  b000                  mov        al, 0
000a05  7427                  je         0xa2e
000a07  eb1f                  jmp        0xa28
000a09  8b169300              mov        dx, word ptr [0x93]
000a0d  d3ea                  shr        dx, cl
000a0f  8ae6                  mov        ah, dh
000a11  d3e8                  shr        ax, cl
000a13  32ff                  xor        bh, bh
000a15  8adc                  mov        bl, ah
000a17  8a9f9600              mov        bl, byte ptr [bx + 0x96]
000a1b  98                    cwde       
000a1c  91                    xchg       cx, ax
000a1d  92                    xchg       dx, ax
000a1e  98                    cwde       
000a1f  93                    xchg       bx, ax
000a20  8bd3                  mov        dx, bx
000a22  0bd1                  or         dx, cx
000a24  f7da                  neg        dx
000a26  d1d0                  rcl        ax, 1
000a28  b4fe                  mov        ah, 0xfe
000a2a  88269500              mov        byte ptr [0x95], ah
000a2e  86c4                  xchg       ah, al
000a30  b020                  mov        al, 0x20
000a32  e620                  out        0x20, al
000a34  86c4                  xchg       ah, al
000a36  98                    cwde       
000a37  0bc0                  or         ax, ax
000a39  7408                  je         0xa43
000a3b  ba0200                mov        dx, 2
000a3e  fb                    sti        
000a3f  ff1e0600              lcall      [6]
000a43  07                    pop        es
000a44  1f                    pop        ds
000a45  5d                    pop        bp
000a46  5f                    pop        di
000a47  5e                    pop        si
000a48  5a                    pop        dx
000a49  59                    pop        cx
000a4a  5b                    pop        bx
000a4b  58                    pop        ax
000a4c  cf                    iret       
000a4d  0000                  add        byte ptr [bx + si], al
000a4f  0000                  add        byte ptr [bx + si], al
000a51  0000                  add        byte ptr [bx + si], al
000a53  0401                  add        al, 1
000a55  050800                add        ax, 8
000a58  0901                  or         word ptr [bx + di], ax
000a5a  02060004              add        al, byte ptr [0x400]
000a5e  0a02                  or         al, byte ptr [bp + si]
000a60  0800                  or         byte ptr [bx + si], al
000a62  e861fe                call       0x8c6
000a65  8b3e0400              mov        di, word ptr [4]
000a69  e8b700                call       0xb23
000a6c  33c0                  xor        ax, ax
000a6e  8ec0                  mov        es, ax
000a70  bb0004                mov        bx, 0x400
000a73  26393f                cmp        word ptr es:[bx], di
000a76  7407                  je         0xa7f
000a78  43                    inc        bx
000a79  43                    inc        bx
000a7a  26393f                cmp        word ptr es:[bx], di
000a7d  7504                  jne        0xa83
000a7f  268907                mov        word ptr es:[bx], ax
000a82  93                    xchg       bx, ax
000a83  a39100                mov        word ptr [0x91], ax
000a86  c6069500fe            mov        byte ptr [0x95], 0xfe
000a8b  e86cfe                call       0x8fa
000a8e  8d5501                lea        dx, [di + 1]
000a91  b001                  mov        al, 1
000a93  ee                    out        dx, al
000a94  8d5504                lea        dx, [di + 4]
000a97  eb00                  jmp        0xa99
000a99  ec                    in         al, dx
000a9a  0c08                  or         al, 8
000a9c  eb00                  jmp        0xa9e
000a9e  ee                    out        dx, al
000a9f  c3                    ret        
000aa0  8b3e0400              mov        di, word ptr [4]
000aa4  8d5501                lea        dx, [di + 1]
000aa7  32c0                  xor        al, al
000aa9  ee                    out        dx, al
000aaa  8d5504                lea        dx, [di + 4]
000aad  eb00                  jmp        0xaaf
000aaf  ec                    in         al, dx
000ab0  24f7                  and        al, 0xf7
000ab2  eb00                  jmp        0xab4
000ab4  ee                    out        dx, al
000ab5  e84ffe                call       0x907
000ab8  7515                  jne        0xacf
000aba  8b3e0400              mov        di, word ptr [4]
000abe  8d5501                lea        dx, [di + 1]
000ac1  b001                  mov        al, 1
000ac3  ee                    out        dx, al
000ac4  8d5504                lea        dx, [di + 4]
000ac7  eb00                  jmp        0xac9
000ac9  ec                    in         al, dx
000aca  0c08                  or         al, 8
000acc  eb00                  jmp        0xace
000ace  ee                    out        dx, al
000acf  8b0e9100              mov        cx, word ptr [0x91]
000ad3  e309                  jcxz       0xade
000ad5  33c0                  xor        ax, ax
000ad7  8ec0                  mov        es, ax
000ad9  87d9                  xchg       cx, bx
000adb  26893f                mov        word ptr es:[bx], di
000ade  c3                    ret        
000adf  f8                    clc        
000ae0  020b                  add        cl, byte ptr [bp + di]
000ae2  f7f8                  idiv       ax
000ae4  030c                  add        cx, word ptr [si]
000ae6  ef                    out        dx, ax
000ae7  0000                  add        byte ptr [bx + si], al
000ae9  bebf02                mov        si, 0x2bf
000aec  2ead                  lodsw      ax, word ptr cs:[si]
000aee  0bc0                  or         ax, ax
000af0  742b                  je         0xb1d
000af2  a30400                mov        word ptr [4], ax
000af5  2ead                  lodsw      ax, word ptr cs:[si]
000af7  a20000                mov        byte ptr [0], al
000afa  88260100              mov        byte ptr [1], ah
000afe  e82200                call       0xb23
000b01  72e9                  jb         0xaec
000b03  c70612002800          mov        word ptr [0x12], 0x28
000b09  c7060e004202          mov        word ptr [0xe], 0x242
000b0f  c70610008002          mov        word ptr [0x10], 0x280
000b15  beb001                mov        si, 0x1b0
000b18  b99200                mov        cx, 0x92
000b1b  f9                    stc        
000b1c  c3                    ret        
000b1d  c6060000ff            mov        byte ptr [0], 0xff
000b22  c3                    ret        
000b23  8a260100              mov        ah, byte ptr [1]
000b27  f6d4                  not        ah
000b29  fa                    cli        
000b2a  e421                  in         al, 0x21
000b2c  8ad8                  mov        bl, al
000b2e  0ac4                  or         al, ah
000b30  e621                  out        0x21, al
000b32  fb                    sti        
000b33  22dc                  and        bl, ah
000b35  8b3e0400              mov        di, word ptr [4]
000b39  8d5503                lea        dx, [di + 3]
000b3c  ec                    in         al, dx
000b3d  50                    push       ax
000b3e  b080                  mov        al, 0x80
000b40  eb00                  jmp        0xb42
000b42  ee                    out        dx, al
000b43  8d5501                lea        dx, [di + 1]
000b46  eb00                  jmp        0xb48
000b48  ec                    in         al, dx
000b49  50                    push       ax
000b4a  b000                  mov        al, 0
000b4c  eb00                  jmp        0xb4e
000b4e  ee                    out        dx, al
000b4f  8d15                  lea        dx, [di]
000b51  eb00                  jmp        0xb53
000b53  ec                    in         al, dx
000b54  50                    push       ax
000b55  b060                  mov        al, 0x60
000b57  eb00                  jmp        0xb59
000b59  ee                    out        dx, al
000b5a  8d5503                lea        dx, [di + 3]
000b5d  b002                  mov        al, 2
000b5f  eb00                  jmp        0xb61
000b61  ee                    out        dx, al
000b62  8d5501                lea        dx, [di + 1]
000b65  eb00                  jmp        0xb67
000b67  ec                    in         al, dx
000b68  50                    push       ax
000b69  32c0                  xor        al, al
000b6b  eb00                  jmp        0xb6d
000b6d  ee                    out        dx, al
000b6e  8d5505                lea        dx, [di + 5]
000b71  eb00                  jmp        0xb73
000b73  ec                    in         al, dx
000b74  8d5504                lea        dx, [di + 4]
000b77  eb00                  jmp        0xb79
000b79  ec                    in         al, dx
000b7a  50                    push       ax
000b7b  b503                  mov        ch, 3
000b7d  e84300                call       0xbc3
000b80  732b                  jae        0xbad
000b82  b509                  mov        ch, 9
000b84  e83c00                call       0xbc3
000b87  7324                  jae        0xbad
000b89  8d5504                lea        dx, [di + 4]
000b8c  58                    pop        ax
000b8d  ee                    out        dx, al
000b8e  8d5501                lea        dx, [di + 1]
000b91  58                    pop        ax
000b92  ee                    out        dx, al
000b93  8d5503                lea        dx, [di + 3]
000b96  b080                  mov        al, 0x80
000b98  eb00                  jmp        0xb9a
000b9a  ee                    out        dx, al
000b9b  8d15                  lea        dx, [di]
000b9d  58                    pop        ax
000b9e  ee                    out        dx, al
000b9f  8d5501                lea        dx, [di + 1]
000ba2  58                    pop        ax
000ba3  ee                    out        dx, al
000ba4  8d5503                lea        dx, [di + 3]
000ba7  58                    pop        ax
000ba8  ee                    out        dx, al
000ba9  b780                  mov        bh, 0x80
000bab  eb05                  jmp        0xbb2
000bad  83c40a                add        sp, 0xa
000bb0  32ff                  xor        bh, bh
000bb2  8a260100              mov        ah, byte ptr [1]
000bb6  fa                    cli        
000bb7  e421                  in         al, 0x21
000bb9  22c4                  and        al, ah
000bbb  0ac3                  or         al, bl
000bbd  e621                  out        0x21, al
000bbf  fb                    sti        
000bc0  d0e7                  shl        bh, 1
000bc2  c3                    ret        
000bc3  8d5504                lea        dx, [di + 4]
000bc6  b001                  mov        al, 1
000bc8  ee                    out        dx, al
000bc9  33c0                  xor        ax, ax
000bcb  8ec0                  mov        es, ax
000bcd  268a0e6c04            mov        cl, byte ptr es:[0x46c]
000bd2  8d15                  lea        dx, [di]
000bd4  ec                    in         al, dx
000bd5  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000bda  74f9                  je         0xbd5
000bdc  8ae5                  mov        ah, ch
000bde  fec4                  inc        ah
000be0  eb00                  jmp        0xbe2
000be2  ec                    in         al, dx
000be3  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000be8  74f9                  je         0xbe3
000bea  268a0e6c04            mov        cl, byte ptr es:[0x46c]
000bef  fecc                  dec        ah
000bf1  75f0                  jne        0xbe3
000bf3  ec                    in         al, dx
000bf4  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000bf9  74f9                  je         0xbf4
000bfb  8d5505                lea        dx, [di + 5]
000bfe  ec                    in         al, dx
000bff  8d5504                lea        dx, [di + 4]
000c02  b003                  mov        al, 3
000c04  eb00                  jmp        0xc06
000c06  ee                    out        dx, al
000c07  b504                  mov        ch, 4
000c09  fecd                  dec        ch
000c0b  742b                  je         0xc38
000c0d  8d5505                lea        dx, [di + 5]
000c10  b44d                  mov        ah, 0x4d
000c12  268a0e6c04            mov        cl, byte ptr es:[0x46c]
000c17  eb00                  jmp        0xc19
000c19  ec                    in         al, dx
000c1a  a801                  test       al, 1
000c1c  751c                  jne        0xc3a
000c1e  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000c23  74f2                  je         0xc17
000c25  268a0e6c04            mov        cl, byte ptr es:[0x46c]
000c2a  eb00                  jmp        0xc2c
000c2c  ec                    in         al, dx
000c2d  a801                  test       al, 1
000c2f  7509                  jne        0xc3a
000c31  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000c36  74f2                  je         0xc2a
000c38  f9                    stc        
000c39  c3                    ret        
000c3a  8d15                  lea        dx, [di]
000c3c  eb00                  jmp        0xc3e
000c3e  ec                    in         al, dx
000c3f  3ac4                  cmp        al, ah
000c41  75c6                  jne        0xc09
000c43  c3                    ret        
000c44  50                    push       ax
000c45  53                    push       bx
000c46  51                    push       cx
000c47  52                    push       dx
000c48  56                    push       si
000c49  57                    push       di
000c4a  55                    push       bp
000c4b  1e                    push       ds
000c4c  06                    push       es
000c4d  8cc8                  mov        ax, cs
000c4f  8ed8                  mov        ds, ax
000c51  8b160400              mov        dx, word ptr [4]
000c55  b007                  mov        al, 7
000c57  ee                    out        dx, al
000c58  42                    inc        dx
000c59  eb00                  jmp        0xc5b
000c5b  ec                    in         al, dx
000c5c  0c20                  or         al, 0x20
000c5e  eb00                  jmp        0xc60
000c60  ee                    out        dx, al
000c61  b001                  mov        al, 1
000c63  4a                    dec        dx
000c64  eb00                  jmp        0xc66
000c66  ee                    out        dx, al
000c67  42                    inc        dx
000c68  eb00                  jmp        0xc6a
000c6a  ec                    in         al, dx
000c6b  98                    cwde       
000c6c  93                    xchg       bx, ax
000c6d  b002                  mov        al, 2
000c6f  4a                    dec        dx
000c70  eb00                  jmp        0xc72
000c72  ee                    out        dx, al
000c73  42                    inc        dx
000c74  eb00                  jmp        0xc76
000c76  ec                    in         al, dx
000c77  98                    cwde       
000c78  91                    xchg       cx, ax
000c79  b000                  mov        al, 0
000c7b  4a                    dec        dx
000c7c  eb00                  jmp        0xc7e
000c7e  ee                    out        dx, al
000c7f  42                    inc        dx
000c80  eb00                  jmp        0xc82
000c82  ec                    in         al, dx
000c83  86c4                  xchg       ah, al
000c85  b007                  mov        al, 7
000c87  4a                    dec        dx
000c88  eb00                  jmp        0xc8a
000c8a  ee                    out        dx, al
000c8b  42                    inc        dx
000c8c  eb00                  jmp        0xc8e
000c8e  ec                    in         al, dx
000c8f  24df                  and        al, 0xdf
000c91  eb00                  jmp        0xc93
000c93  ee                    out        dx, al
000c94  86c4                  xchg       ah, al
000c96  32e4                  xor        ah, ah
000c98  d1e0                  shl        ax, 1
000c9a  d1e0                  shl        ax, 1
000c9c  a8a0                  test       al, 0xa0
000c9e  751d                  jne        0xcbd
000ca0  b020                  mov        al, 0x20
000ca2  e620                  out        0x20, al
000ca4  86c4                  xchg       ah, al
000ca6  98                    cwde       
000ca7  0bc0                  or         ax, ax
000ca9  7408                  je         0xcb3
000cab  ba0200                mov        dx, 2
000cae  fb                    sti        
000caf  ff1e0600              lcall      [6]
000cb3  07                    pop        es
000cb4  1f                    pop        ds
000cb5  5d                    pop        bp
000cb6  5f                    pop        di
000cb7  5e                    pop        si
000cb8  5a                    pop        dx
000cb9  59                    pop        cx
000cba  5b                    pop        bx
000cbb  58                    pop        ax
000cbc  cf                    iret       
000cbd  a880                  test       al, 0x80
000cbf  740e                  je         0xccf
000cc1  80cc02                or         ah, 2
000cc4  a810                  test       al, 0x10
000cc6  7503                  jne        0xccb
000cc8  80f406                xor        ah, 6
000ccb  a820                  test       al, 0x20
000ccd  74d1                  je         0xca0
000ccf  80cc08                or         ah, 8
000cd2  a804                  test       al, 4
000cd4  75ca                  jne        0xca0
000cd6  80f418                xor        ah, 0x18
000cd9  ebc5                  jmp        0xca0
000cdb  ba3e02                mov        dx, 0x23e
000cde  b4de                  mov        ah, 0xde
000ce0  ec                    in         al, dx
000ce1  3ac4                  cmp        al, ah
000ce3  740f                  je         0xcf4
000ce5  ec                    in         al, dx
000ce6  3ac4                  cmp        al, ah
000ce8  740a                  je         0xcf4
000cea  83ea04                sub        dx, 4
000ced  80fa2e                cmp        dl, 0x2e
000cf0  75ec                  jne        0xcde
000cf2  eb36                  jmp        0xd2a
000cf4  ec                    in         al, dx
000cf5  8ad8                  mov        bl, al
000cf7  eb00                  jmp        0xcf9
000cf9  ec                    in         al, dx
000cfa  3ac4                  cmp        al, ah
000cfc  75ec                  jne        0xcea
000cfe  ec                    in         al, dx
000cff  3ac3                  cmp        al, bl
000d01  75e7                  jne        0xcea
000d03  83ea02                sub        dx, 2
000d06  52                    push       dx
000d07  e82100                call       0xd2b
000d0a  5a                    pop        dx
000d0b  b90000                mov        cx, 0
000d0e  721a                  jb         0xd2a
000d10  89160400              mov        word ptr [4], dx
000d14  b080                  mov        al, 0x80
000d16  ee                    out        dx, al
000d17  c7060e007d05          mov        word ptr [0xe], 0x57d
000d1d  c70610009a05          mov        word ptr [0x10], 0x59a
000d23  be2404                mov        si, 0x424
000d26  b99700                mov        cx, 0x97
000d29  f9                    stc        
000d2a  c3                    ret        
000d2b  fa                    cli        
000d2c  e421                  in         al, 0x21
000d2e  50                    push       ax
000d2f  b080                  mov        al, 0x80
000d31  ee                    out        dx, al
000d32  eb00                  jmp        0xd34
000d34  eb00                  jmp        0xd36
000d36  eb00                  jmp        0xd38
000d38  b007                  mov        al, 7
000d3a  ee                    out        dx, al
000d3b  42                    inc        dx
000d3c  b3bc                  mov        bl, 0xbc
000d3e  8ac3                  mov        al, bl
000d40  e621                  out        0x21, al
000d42  eb00                  jmp        0xd44
000d44  b00a                  mov        al, 0xa
000d46  e620                  out        0x20, al
000d48  8ae3                  mov        ah, bl
000d4a  b90a00                mov        cx, 0xa
000d4d  b010                  mov        al, 0x10
000d4f  ee                    out        dx, al
000d50  eb00                  jmp        0xd52
000d52  e420                  in         al, 0x20
000d54  22c3                  and        al, bl
000d56  32c3                  xor        al, bl
000d58  22e0                  and        ah, al
000d5a  7424                  je         0xd80
000d5c  b016                  mov        al, 0x16
000d5e  ee                    out        dx, al
000d5f  eb00                  jmp        0xd61
000d61  e420                  in         al, 0x20
000d63  22c3                  and        al, bl
000d65  22e0                  and        ah, al
000d67  7417                  je         0xd80
000d69  e2e2                  loop       0xd4d
000d6b  32db                  xor        bl, bl
000d6d  8afc                  mov        bh, ah
000d6f  b90700                mov        cx, 7
000d72  d0e4                  shl        ah, 1
000d74  7304                  jae        0xd7a
000d76  8ac1                  mov        al, cl
000d78  fec3                  inc        bl
000d7a  e2f6                  loop       0xd72
000d7c  fecb                  dec        bl
000d7e  7403                  je         0xd83
000d80  f9                    stc        
000d81  eb0c                  jmp        0xd8f
000d83  0408                  add        al, 8
000d85  a20000                mov        byte ptr [0], al
000d88  f6d7                  not        bh
000d8a  883e0100              mov        byte ptr [1], bh
000d8e  f8                    clc        
000d8f  b000                  mov        al, 0
000d91  ee                    out        dx, al
000d92  b00b                  mov        al, 0xb
000d94  eb00                  jmp        0xd96
000d96  e620                  out        0x20, al
000d98  58                    pop        ax
000d99  e621                  out        0x21, al
000d9b  fb                    sti        
000d9c  c3                    ret        
000d9d  e826fb                call       0x8c6
000da0  8b160400              mov        dx, word ptr [4]
000da4  b080                  mov        al, 0x80
000da6  ee                    out        dx, al
000da7  eb00                  jmp        0xda9
000da9  eb00                  jmp        0xdab
000dab  eb00                  jmp        0xdad
000dad  b007                  mov        al, 7
000daf  ee                    out        dx, al
000db0  42                    inc        dx
000db1  eb00                  jmp        0xdb3
000db3  b011                  mov        al, 0x11
000db5  ee                    out        dx, al
000db6  e841fb                call       0x8fa
000db9  c3                    ret        
000dba  8b160400              mov        dx, word ptr [4]
000dbe  b007                  mov        al, 7
000dc0  ee                    out        dx, al
000dc1  42                    inc        dx
000dc2  b000                  mov        al, 0
000dc4  ee                    out        dx, al
000dc5  e83ffb                call       0x907
000dc8  7516                  jne        0xde0
000dca  8b160400              mov        dx, word ptr [4]
000dce  b080                  mov        al, 0x80
000dd0  ee                    out        dx, al
000dd1  eb00                  jmp        0xdd3
000dd3  eb00                  jmp        0xdd5
000dd5  eb00                  jmp        0xdd7
000dd7  b007                  mov        al, 7
000dd9  ee                    out        dx, al
000dda  42                    inc        dx
000ddb  eb00                  jmp        0xddd
000ddd  b011                  mov        al, 0x11
000ddf  ee                    out        dx, al
000de0  c3                    ret        
000de1  005053                add        byte ptr [bx + si + 0x53], dl
000de4  51                    push       cx
000de5  52                    push       dx
000de6  56                    push       si
000de7  57                    push       di
000de8  55                    push       bp
000de9  1e                    push       ds
000dea  06                    push       es
000deb  8cc8                  mov        ax, cs
000ded  8ed8                  mov        ds, ax
000def  8b3e0400              mov        di, word ptr [4]
000df3  8d5502                lea        dx, [di + 2]
000df6  b104                  mov        cl, 4
000df8  b090                  mov        al, 0x90
000dfa  ee                    out        dx, al
000dfb  eb00                  jmp        0xdfd
000dfd  87d7                  xchg       di, dx
000dff  ec                    in         al, dx
000e00  d3c8                  ror        ax, cl
000e02  87d7                  xchg       di, dx
000e04  b0b0                  mov        al, 0xb0
000e06  ee                    out        dx, al
000e07  eb00                  jmp        0xe09
000e09  87d7                  xchg       di, dx
000e0b  ec                    in         al, dx
000e0c  d3c0                  rol        ax, cl
000e0e  98                    cwde       
000e0f  93                    xchg       bx, ax
000e10  87d7                  xchg       di, dx
000e12  b0d0                  mov        al, 0xd0
000e14  ee                    out        dx, al
000e15  eb00                  jmp        0xe17
000e17  87d7                  xchg       di, dx
000e19  ec                    in         al, dx
000e1a  d3c8                  ror        ax, cl
000e1c  87d7                  xchg       di, dx
000e1e  b0f0                  mov        al, 0xf0
000e20  ee                    out        dx, al
000e21  eb00                  jmp        0xe23
000e23  87d7                  xchg       di, dx
000e25  ec                    in         al, dx
000e26  d3c0                  rol        ax, cl
000e28  8bc8                  mov        cx, ax
000e2a  98                    cwde       
000e2b  91                    xchg       cx, ax
000e2c  87d7                  xchg       di, dx
000e2e  b000                  mov        al, 0
000e30  ee                    out        dx, al
000e31  eb00                  jmp        0xe33
000e33  b020                  mov        al, 0x20
000e35  e620                  out        0x20, al
000e37  80e40a                and        ah, 0xa
000e3a  8ac4                  mov        al, ah
000e3c  d0e8                  shr        al, 1
000e3e  86069a00              xchg       byte ptr [0x9a], al
000e42  0ac4                  or         al, ah
000e44  32e4                  xor        ah, ah
000e46  93                    xchg       bx, ax
000e47  8a9f9b00              mov        bl, byte ptr [bx + 0x9b]
000e4b  93                    xchg       bx, ax
000e4c  8bd3                  mov        dx, bx
000e4e  0bd1                  or         dx, cx
000e50  f7da                  neg        dx
000e52  13c0                  adc        ax, ax
000e54  7408                  je         0xe5e
000e56  ba0200                mov        dx, 2
000e59  fb                    sti        
000e5a  ff1e0600              lcall      [6]
000e5e  07                    pop        es
000e5f  1f                    pop        ds
000e60  5d                    pop        bp
000e61  5f                    pop        di
000e62  5e                    pop        si
000e63  5a                    pop        dx
000e64  59                    pop        cx
000e65  5b                    pop        bx
000e66  58                    pop        ax
000e67  cf                    iret       
000e68  0000                  add        byte ptr [bx + si], al
000e6a  0408                  add        al, 8
000e6c  0001                  add        byte ptr [bx + di], al
000e6e  050901                add        ax, 0x109
000e71  02060a02              add        al, byte ptr [0x20a]
000e75  0004                  add        byte ptr [si], al
000e77  0800                  or         byte ptr [bx + si], al
000e79  0000                  add        byte ptr [bx + si], al
000e7b  0ddf0c                or         ax, 0xcdf
000e7e  ef                    out        dx, ax
000e7f  0000                  add        byte ptr [bx + si], al
000e81  0bf7                  or         si, di
000e83  0000                  add        byte ptr [bx + si], al
000e85  0000                  add        byte ptr [bx + si], al
000e87  0000                  add        byte ptr [bx + si], al
000e89  0afb                  or         bh, bl
000e8b  bf3c02                mov        di, 0x23c
000e8e  8d5503                lea        dx, [di + 3]
000e91  b091                  mov        al, 0x91
000e93  ee                    out        dx, al
000e94  eb00                  jmp        0xe96
000e96  b0a5                  mov        al, 0xa5
000e98  8ae0                  mov        ah, al
000e9a  8d5501                lea        dx, [di + 1]
000e9d  eb00                  jmp        0xe9f
000e9f  ee                    out        dx, al
000ea0  8d5502                lea        dx, [di + 2]
000ea3  b010                  mov        al, 0x10
000ea5  eb00                  jmp        0xea7
000ea7  ee                    out        dx, al
000ea8  8d5501                lea        dx, [di + 1]
000eab  eb00                  jmp        0xead
000ead  ec                    in         al, dx
000eae  3ac4                  cmp        al, ah
000eb0  752b                  jne        0xedd
000eb2  e83200                call       0xee7
000eb5  e326                  jcxz       0xedd
000eb7  893e0400              mov        word ptr [4], di
000ebb  880e0000              mov        byte ptr [0], cl
000ebf  882e0100              mov        byte ptr [1], ch
000ec3  c70612002200          mov        word ptr [0x12], 0x22
000ec9  c7060e002e07          mov        word ptr [0xe], 0x72e
000ecf  c70610004707          mov        word ptr [0x10], 0x747
000ed5  bec205                mov        si, 0x5c2
000ed8  b99700                mov        cx, 0x97
000edb  f9                    stc        
000edc  c3                    ret        
000edd  83c704                add        di, 4
000ee0  81ff3c02              cmp        di, 0x23c
000ee4  72a8                  jb         0xe8e
000ee6  c3                    ret        
000ee7  56                    push       si
000ee8  be0400                mov        si, 4
000eeb  4e                    dec        si
000eec  745e                  je         0xf4c
000eee  33db                  xor        bx, bx
000ef0  8ec3                  mov        es, bx
000ef2  fa                    cli        
000ef3  e421                  in         al, 0x21
000ef5  8af8                  mov        bh, al
000ef7  0c3c                  or         al, 0x3c
000ef9  e621                  out        0x21, al
000efb  fb                    sti        
000efc  8d5503                lea        dx, [di + 3]
000eff  b091                  mov        al, 0x91
000f01  ee                    out        dx, al
000f02  eb00                  jmp        0xf04
000f04  8d5502                lea        dx, [di + 2]
000f07  b000                  mov        al, 0
000f09  ee                    out        dx, al
000f0a  b503                  mov        ch, 3
000f0c  ec                    in         al, dx
000f0d  8ae0                  mov        ah, al
000f0f  ec                    in         al, dx
000f10  32e0                  xor        ah, al
000f12  0adc                  or         bl, ah
000f14  8ae0                  mov        ah, al
000f16  263a0e6c04            cmp        cl, byte ptr es:[0x46c]
000f1b  74f2                  je         0xf0f
000f1d  268a0e6c04            mov        cl, byte ptr es:[0x46c]
000f22  fecd                  dec        ch
000f24  75e9                  jne        0xf0f
000f26  8d5502                lea        dx, [di + 2]
000f29  b010                  mov        al, 0x10
000f2b  ee                    out        dx, al
000f2c  fa                    cli        
000f2d  e421                  in         al, 0x21
000f2f  24c3                  and        al, 0xc3
000f31  80e73c                and        bh, 0x3c
000f34  0ac7                  or         al, bh
000f36  e621                  out        0x21, al
000f38  fb                    sti        
000f39  83e30f                and        bx, 0xf
000f3c  33c9                  xor        cx, cx
000f3e  80fb08                cmp        bl, 8
000f41  7707                  ja         0xf4a
000f43  d1e3                  shl        bx, 1
000f45  2e8b8f5906            mov        cx, word ptr cs:[bx + 0x659]
000f4a  e39f                  jcxz       0xeeb
000f4c  5e                    pop        si
000f4d  c3                    ret        
000f4e  e875f9                call       0x8c6
000f51  8b1e0400              mov        bx, word ptr [4]
000f55  8d5703                lea        dx, [bx + 3]
000f58  b091                  mov        al, 0x91
000f5a  ee                    out        dx, al
000f5b  eb00                  jmp        0xf5d
000f5d  8d5702                lea        dx, [bx + 2]
000f60  b000                  mov        al, 0
000f62  ee                    out        dx, al
000f63  e894f9                call       0x8fa
000f66  c3                    ret        
000f67  8b160400              mov        dx, word ptr [4]
000f6b  80c202                add        dl, 2
000f6e  b010                  mov        al, 0x10
000f70  ee                    out        dx, al
000f71  e893f9                call       0x907
000f74  7512                  jne        0xf88
000f76  8b1e0400              mov        bx, word ptr [4]
000f7a  8d5703                lea        dx, [bx + 3]
000f7d  b091                  mov        al, 0x91
000f7f  ee                    out        dx, al
000f80  eb00                  jmp        0xf82
000f82  8d5702                lea        dx, [bx + 2]
000f85  b000                  mov        al, 0
000f87  ee                    out        dx, al
000f88  c3                    ret        
000f89  009c2eff              add        byte ptr [si - 0xd2], bl
000f8d  1e                    push       ds
000f8e  0a00                  or         al, byte ptr [bx + si]
000f90  2ef6068800ff          test       byte ptr cs:[0x88], 0xff
000f96  7455                  je         0xfed
000f98  50                    push       ax
000f99  53                    push       bx
000f9a  51                    push       cx
000f9b  52                    push       dx
000f9c  56                    push       si
000f9d  57                    push       di
000f9e  55                    push       bp
000f9f  1e                    push       ds
000fa0  06                    push       es
000fa1  8cc8                  mov        ax, cs
000fa3  8ed8                  mov        ds, ax
000fa5  8b1e8900              mov        bx, word ptr [0x89]
000fa9  a08b00                mov        al, byte ptr [0x8b]
000fac  8ae0                  mov        ah, al
000fae  86068c00              xchg       byte ptr [0x8c], al
000fb2  b102                  mov        cl, 2
000fb4  d2cc                  ror        ah, cl
000fb6  d3c0                  rol        ax, cl
000fb8  41                    inc        cx
000fb9  d2e4                  shl        ah, cl
000fbb  1aed                  sbb        ch, ch
000fbd  8acf                  mov        cl, bh
000fbf  f7d9                  neg        cx
000fc1  d0e4                  shl        ah, 1
000fc3  1aff                  sbb        bh, bh
000fc5  93                    xchg       bx, ax
000fc6  83e30f                and        bx, 0xf
000fc9  883e8800              mov        byte ptr [0x88], bh
000fcd  8a9f7800              mov        bl, byte ptr [bx + 0x78]
000fd1  93                    xchg       bx, ax
000fd2  8bd3                  mov        dx, bx
000fd4  0bd1                  or         dx, cx
000fd6  f7da                  neg        dx
000fd8  13c0                  adc        ax, ax
000fda  7408                  je         0xfe4
000fdc  ba0200                mov        dx, 2
000fdf  fb                    sti        
000fe0  ff1e0600              lcall      [6]
000fe4  07                    pop        es
000fe5  1f                    pop        ds
000fe6  5d                    pop        bp
000fe7  5f                    pop        di
000fe8  5e                    pop        si
000fe9  5a                    pop        dx
000fea  59                    pop        cx
000feb  5b                    pop        bx
000fec  58                    pop        ax
000fed  cf                    iret       
000fee  0001                  add        byte ptr [bx + di], al
000ff0  0405                  add        al, 5
000ff2  0200                  add        al, byte ptr [bx + si]
000ff4  06                    push       es
000ff5  0408                  add        al, 8
000ff7  0900                  or         word ptr [bx + si], ax
000ff9  010a                  add        word ptr [bp + si], cx
000ffb  0802                  or         byte ptr [bp + si], al
000ffd  0000                  add        byte ptr [bx + si], al
000fff  0000                  add        byte ptr [bx + si], al
001001  0000                  add        byte ptr [bx + si], al
001003  55                    push       bp
001004  8bec                  mov        bp, sp
001006  50                    push       ax
001007  8a460a                mov        al, byte ptr [bp + 0xa]
00100a  8a6608                mov        ah, byte ptr [bp + 8]
00100d  2ea38900              mov        word ptr cs:[0x89], ax
001011  8a460c                mov        al, byte ptr [bp + 0xc]
001014  2ea28b00              mov        byte ptr cs:[0x8b], al
001018  2ec6068800ff          mov        byte ptr cs:[0x88], 0xff
00101e  58                    pop        ax
00101f  5d                    pop        bp
001020  cb                    retf       
001021  b4c0                  mov        ah, 0xc0
001023  cd15                  int        0x15
001025  268a4702              mov        al, byte ptr es:[bx + 2]
001029  b371                  mov        bl, 0x71
00102b  3cfa                  cmp        al, 0xfa
00102d  740a                  je         0x1039
00102f  b374                  mov        bl, 0x74
001031  3cfc                  cmp        al, 0xfc
001033  7404                  je         0x1039
001035  3cf8                  cmp        al, 0xf8
001037  752b                  jne        0x1064
001039  881e0000              mov        byte ptr [0], bl
00103d  b430                  mov        ah, 0x30
00103f  cd21                  int        0x21
001041  3c03                  cmp        al, 3
001043  7c1a                  jl         0x105f
001045  cd11                  int        0x11
001047  a804                  test       al, 4
001049  7414                  je         0x105f
00104b  c7060e004608          mov        word ptr [0xe], 0x846
001051  c7061000d308          mov        word ptr [0x10], 0x8d3
001057  be6a07                mov        si, 0x76a
00105a  b99700                mov        cx, 0x97
00105d  f9                    stc        
00105e  c3                    ret        
00105f  c6060000ff            mov        byte ptr [0], 0xff
001064  f8                    clc        
001065  c3                    ret        
001066  b90414                mov        cx, 0x1404
001069  b805c2                mov        ax, 0xc205
00106c  b703                  mov        bh, 3
00106e  cd15                  int        0x15
001070  730a                  jae        0x107c
001072  3ae1                  cmp        ah, cl
001074  757c                  jne        0x10f2
001076  fecd                  dec        ch
001078  75ef                  jne        0x1069
00107a  eb76                  jmp        0x10f2
00107c  b801c2                mov        ax, 0xc201
00107f  cd15                  int        0x15
001081  730a                  jae        0x108d
001083  3ae1                  cmp        ah, cl
001085  756b                  jne        0x10f2
001087  fecd                  dec        ch
001089  75f1                  jne        0x107c
00108b  eb65                  jmp        0x10f2
00108d  b803c2                mov        ax, 0xc203
001090  b703                  mov        bh, 3
001092  cd15                  int        0x15
001094  730a                  jae        0x10a0
001096  3ae1                  cmp        ah, cl
001098  7558                  jne        0x10f2
00109a  fecd                  dec        ch
00109c  75ef                  jne        0x108d
00109e  eb52                  jmp        0x10f2
0010a0  b807c2                mov        ax, 0xc207
0010a3  1e                    push       ds
0010a4  07                    pop        es
0010a5  bb8d00                mov        bx, 0x8d
0010a8  cd15                  int        0x15
0010aa  730a                  jae        0x10b6
0010ac  3ae1                  cmp        ah, cl
0010ae  7542                  jne        0x10f2
0010b0  fecd                  dec        ch
0010b2  75ec                  jne        0x10a0
0010b4  eb3c                  jmp        0x10f2
0010b6  b800c2                mov        ax, 0xc200
0010b9  b701                  mov        bh, 1
0010bb  cd15                  int        0x15
0010bd  730a                  jae        0x10c9
0010bf  3ae1                  cmp        ah, cl
0010c1  752f                  jne        0x10f2
0010c3  fecd                  dec        ch
0010c5  75ef                  jne        0x10b6
0010c7  eb29                  jmp        0x10f2
0010c9  b806c2                mov        ax, 0xc206
0010cc  b701                  mov        bh, 1
0010ce  cd15                  int        0x15
0010d0  730a                  jae        0x10dc
0010d2  3ae1                  cmp        ah, cl
0010d4  751c                  jne        0x10f2
0010d6  fecd                  dec        ch
0010d8  75ef                  jne        0x10c9
0010da  eb16                  jmp        0x10f2
0010dc  b802c2                mov        ax, 0xc202
0010df  b702                  mov        bh, 2
0010e1  cd15                  int        0x15
0010e3  730a                  jae        0x10ef
0010e5  3ae1                  cmp        ah, cl
0010e7  7509                  jne        0x10f2
0010e9  fecd                  dec        ch
0010eb  75ef                  jne        0x10dc
0010ed  eb03                  jmp        0x10f2
0010ef  e8d4f7                call       0x8c6
0010f2  c3                    ret        
0010f3  b800c2                mov        ax, 0xc200
0010f6  b700                  mov        bh, 0
0010f8  cd15                  int        0x15
0010fa  e80af8                call       0x907
0010fd  f606030002            test       byte ptr [3], 2
001102  740c                  je         0x1110
001104  b802c2                mov        ax, 0xc202
001107  b705                  mov        bh, 5
001109  cd15                  int        0x15
00110b  b82000                mov        ax, 0x20
00110e  cd33                  int        0x33
001110  c3                    ret        
001111  008cc88e              add        byte ptr [si - 0x7138], cl
001115  d883e303              fadd       dword ptr [bp + di + 0x3e3]
001119  8af3                  mov        dh, bl
00111b  86364c00              xchg       byte ptr [0x4c], dh
00111f  d0e6                  shl        dh, 1
001121  d0e6                  shl        dh, 1
001123  0ade                  or         bl, dh
001125  8a9f4d00              mov        bl, byte ptr [bx + 0x4d]
001129  8bcf                  mov        cx, di
00112b  0bce                  or         cx, si
00112d  f7d9                  neg        cx
00112f  13db                  adc        bx, bx
001131  7410                  je         0x1143
001133  b80b00                mov        ax, 0xb
001136  cd33                  int        0x33
001138  8bcf                  mov        cx, di
00113a  96                    xchg       si, ax
00113b  93                    xchg       bx, ax
00113c  ba0200                mov        dx, 2
00113f  ff1e0600              lcall      [6]
001143  cb                    retf       
001144  0000                  add        byte ptr [bx + si], al
001146  0000                  add        byte ptr [bx + si], al
001148  0000                  add        byte ptr [bx + si], al
00114a  0000                  add        byte ptr [bx + si], al
00114c  0104                  add        word ptr [si], ax
00114e  050200                add        ax, 2
001151  06                    push       es
001152  0408                  add        al, 8
001154  0900                  or         word ptr [bx + si], ax
001156  010a                  add        word ptr [bp + si], cx
001158  0802                  or         byte ptr [bp + si], al
00115a  00c6                  add        dh, al
00115c  06                    push       es
00115d  4c                    dec        sp
00115e  0000                  add        byte ptr [bx + si], al
001160  1e                    push       ds
001161  07                    pop        es
001162  8d161400              lea        dx, [0x14]
001166  b91f00                mov        cx, 0x1f
001169  b81400                mov        ax, 0x14
00116c  cd33                  int        0x33
00116e  890e4600              mov        word ptr [0x46], cx
001172  89164800              mov        word ptr [0x48], dx
001176  8c064a00              mov        word ptr [0x4a], es
00117a  c3                    ret        
00117b  b80c00                mov        ax, 0xc
00117e  8b0e4600              mov        cx, word ptr [0x46]
001182  c4164800              les        dx, ptr [0x48]
001186  cd33                  int        0x33
001188  c3                    ret        
001189  c7060e003b09          mov        word ptr [0xe], 0x93b
00118f  c70610005b09          mov        word ptr [0x10], 0x95b
001195  bef208                mov        si, 0x8f2
001198  b94900                mov        cx, 0x49
00119b  c3                    ret        
00119c  0000                  add        byte ptr [bx + si], al
00119e  0000                  add        byte ptr [bx + si], al
0011a0  47                    inc        di
0011a1  44                    inc        sp
0011a2  49                    dec        cx
0011a3  53                    push       bx
0011a4  50                    push       ax
0011a5  4c                    dec        sp
0011a6  41                    inc        cx
0011a7  59                    pop        cx
0011a8  203a                  and        byte ptr [bp + si], bh
0011aa  2031                  and        byte ptr [bx + di], dh
0011ac  3333                  xor        si, word ptr [bp + di]
0011ae  2c20                  sub        al, 0x20
0011b0  39362c20              cmp        word ptr [0x202c], si
0011b4  37                    aaa        
0011b5  3220                  xor        ah, byte ptr [bx + si]
0011b7  3a20                  cmp        ah, byte ptr [bx + si]
0011b9  45                    inc        bp
0011ba  47                    inc        di
0011bb  41                    inc        cx
0011bc  2028                  and        byte ptr [bx + si], ch
0011be  6d                    insw       word ptr es:[di], dx
0011bf  6f                    outsw      dx, word ptr [si]
0011c0  7265                  jb         0x1227
0011c2  207468                and        byte ptr [si + 0x68], dh
0011c5  61                    popaw      
0011c6  6e                    outsb      dx, byte ptr [si]
0011c7  2036344b              and        byte ptr [0x4b34], dh
0011cb  2920                  sub        word ptr [bx + si], sp
0011cd  7769                  ja         0x1238
0011cf  7468                  je         0x1239
0011d1  20456e                and        byte ptr [di + 0x6e], al
0011d4  68616e                push       0x6e61
0011d7  636564                arpl       word ptr [di + 0x64], sp
0011da  20436f                and        byte ptr [bp + di + 0x6f], al
0011dd  6c                    insb       byte ptr es:[di], dx
0011de  6f                    outsw      dx, word ptr [si]
0011df  7220                  jb         0x1201
0011e1  44                    inc        sp
0011e2  6973706c61            imul       si, word ptr [bp + di + 0x70], 0x616c
0011e7  7900                  jns        0x11e9
0011e9  0007                  add        byte ptr [bx], al
0011eb  44                    inc        sp
0011ec  49                    dec        cx
0011ed  53                    push       bx
0011ee  41                    inc        cx
0011ef  42                    inc        dx
0011f0  4c                    dec        sp
0011f1  45                    inc        bp
0011f2  0400                  add        al, 0
0011f4  0a4445                or         al, byte ptr [si + 0x45]
0011f7  56                    push       si
0011f8  49                    dec        cx
0011f9  43                    inc        bx
0011fa  45                    inc        bp
0011fb  4d                    dec        bp
0011fc  4f                    dec        di
0011fd  44                    inc        sp
0011fe  45                    inc        bp
0011ff  0d0006                or         ax, 0x600
001202  42                    inc        dx
001203  49                    dec        cx
001204  54                    push       sp
001205  42                    inc        dx
001206  4c                    dec        sp
001207  54                    push       sp
001208  0100                  add        word ptr [bx + si], ax
00120a  095345                or         word ptr [bp + di + 0x45], dx
00120d  54                    push       sp
00120e  43                    inc        bx
00120f  55                    push       bp
001210  52                    push       dx
001211  53                    push       bx
001212  4f                    dec        di
001213  52                    push       dx
001214  66000d                add        byte ptr [di], cl
001217  52                    push       dx
001218  45                    inc        bp
001219  41                    inc        cx
00121a  4c                    dec        sp
00121b  49                    dec        cx
00121c  5a                    pop        dx
00121d  45                    inc        bp
00121e  4f                    dec        di
00121f  42                    inc        dx
001220  4a                    dec        dx
001221  45                    inc        bp
001222  43                    inc        bx
001223  54                    push       sp
001224  0a00                  or         al, byte ptr [bx + si]
001226  07                    pop        es
001227  49                    dec        cx
001228  4e                    dec        si
001229  51                    push       cx
00122a  55                    push       bp
00122b  49                    dec        cx
00122c  52                    push       dx
00122d  45                    inc        bp
00122e  650007                add        byte ptr gs:[bx], al
001231  45                    inc        bp
001232  4e                    dec        si
001233  55                    push       bp
001234  4d                    dec        bp
001235  4f                    dec        di
001236  42                    inc        dx
001237  4a                    dec        dx
001238  07                    pop        es
001239  00065354              add        byte ptr [0x5453], al
00123d  52                    push       dx
00123e  42                    inc        dx
00123f  4c                    dec        sp
001240  54                    push       sp
001241  0b00                  or         ax, word ptr [bx + si]
001243  06                    push       es
001244  45                    inc        bp
001245  4e                    dec        si
001246  41                    inc        cx
001247  42                    inc        dx
001248  4c                    dec        sp
001249  45                    inc        bp
00124a  050007                add        ax, 0x700
00124d  43                    inc        bx
00124e  4f                    dec        di
00124f  4e                    dec        si
001250  54                    push       sp
001251  52                    push       dx
001252  4f                    dec        di
001253  4c                    dec        sp
001254  0300                  add        ax, word ptr [bx + si]
001256  06                    push       es
001257  4f                    dec        di
001258  55                    push       bp
001259  54                    push       sp
00125a  50                    push       ax
00125b  55                    push       bp
00125c  54                    push       sp
00125d  0800                  or         byte ptr [bx + si], al
00125f  055049                add        ax, 0x4950
001262  58                    pop        ax
001263  45                    inc        bp
001264  4c                    dec        sp
001265  0900                  or         word ptr [bx + si], ax
001267  06                    push       es
001268  53                    push       bx
001269  43                    inc        bx
00126a  41                    inc        cx
00126b  4e                    dec        si
00126c  4c                    dec        sp
00126d  52                    push       dx
00126e  0c00                  or         al, 0
001270  09434f                or         word ptr [bp + di + 0x4f], ax
001273  4c                    dec        sp
001274  4f                    dec        di
001275  52                    push       dx
001276  49                    dec        cx
001277  4e                    dec        si
001278  46                    inc        si
001279  4f                    dec        di
00127a  0200                  add        al, byte ptr [bx + si]
00127c  0a454e                or         al, byte ptr [di + 0x4e]
00127f  55                    push       bp
001280  4d                    dec        bp
001281  44                    inc        sp
001282  46                    inc        si
001283  4f                    dec        di
001284  4e                    dec        si
001285  54                    push       sp
001286  53                    push       bx
001287  06                    push       es
001288  000b                  add        byte ptr [bp + di], cl
00128a  43                    inc        bx
00128b  48                    dec        ax
00128c  45                    inc        bp
00128d  43                    inc        bx
00128e  4b                    dec        bx
00128f  43                    inc        bx
001290  55                    push       bp
001291  52                    push       dx
001292  53                    push       bx
001293  4f                    dec        di
001294  52                    push       dx
001295  68000a                push       0xa00
001298  4d                    dec        bp
001299  4f                    dec        di
00129a  56                    push       si
00129b  45                    inc        bp
00129c  43                    inc        bx
00129d  55                    push       bp
00129e  52                    push       dx
00129f  53                    push       bx
0012a0  4f                    dec        di
0012a1  52                    push       dx
0012a2  670000                add        byte ptr [eax], al
0012a5  0000                  add        byte ptr [bx + si], al
0012a7  0000                  add        byte ptr [bx + si], al
0012a9  0000                  add        byte ptr [bx + si], al
0012ab  0000                  add        byte ptr [bx + si], al
0012ad  0000                  add        byte ptr [bx + si], al
0012af  0003                  add        byte ptr [bp + di], al
0012b1  0000                  add        byte ptr [bx + si], al
0012b3  0000                  add        byte ptr [bx + si], al
0012b5  0020                  add        byte ptr [bx + si], ah
0012b7  0020                  add        byte ptr [bx + si], ah
0012b9  0004                  add        byte ptr [si], al
0012bb  0000                  add        byte ptr [bx + si], al
0012bd  003f                  add        byte ptr [bx], bh
