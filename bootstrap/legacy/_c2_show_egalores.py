#!/usr/bin/env python3
import json
with open(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\state\analyze\pass_c2_classified.json') as f:
    d = json.load(f)

print("=== EGALORES same-seg off-boundary refs ===")
count = 0
for o in d['same_seg_data']:
    if 'EGALORES' in o['segment']:
        print(f"{o['segment']} L{o['line']} {o['opcode']} {o['target']}")
        count += 1
        if count >= 20:
            print('...')
            break
print(f"Total: {count}")

print("\n=== EGALORES cross-segment refs ===")
count2 = 0
for o in d['cross_segment']:
    if 'EGALORES' in o['segment']:
        print(f"{o['segment']} L{o['line']} {o['opcode']} {o['target']} -> {o.get('target_file', 'N/A')}")
        count2 += 1
        if count2 >= 20:
            print('...')
            break
print(f"Total: {count2}")
