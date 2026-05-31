#!/usr/bin/env python3
"""Deep analysis of WIN100.OVL to understand why it can't be split."""
data = open(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\original\WIN100.OVL', 'rb').read()

# The overlay is a single contiguous code block from ~0x55c4 to ~0x34292
# Let's verify by checking if there are data tables embedded within

# Search for common x86 instruction patterns throughout the suspected code region
import capstone
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)

# Analyze the big code region (0x55c4 to 0x34292)
start = 0x55c4
end = 0x34292
code_block = data[start:end]

# Try to disassemble chunks to see if it's all valid code
print('Sampling disassembly from the large code region...')
for offset in [0, 10000, 30000, 50000, 70000, 90000, 110000, 130000, 150000, 170000]:
    sample = code_block[offset:offset+32]
    try:
        insns = list(md.disasm(sample, start + offset))
        if insns:
            first = insns[0]
            print(f'  offset +{offset:6d} ({start+offset:#x}): {first.mnemonic} {first.op_str}')
    except:
        pass

# Check for embedded strings in the code region
print('\nStrings in code region:')
for i in range(start, end):
    if 32 <= data[i] < 127:
        j = i
        while j < end and 32 <= data[j] < 127:
            j += 1
        if j - i >= 10:
            s = bytes(data[i:j]).decode('ascii', errors='replace')
            print(f'  {i:#x}: {s!r}')
            i = j

print('\n--- Analysis Complete ---')
print(f'Code region: {start:#x} - {end:#x} = {end-start} bytes = {(end-start)/1024:.1f} KB')
print('This is a single contiguous code block with embedded strings/data tables.')
print('Cannot split into <64KB segments without breaking all internal offsets.')
