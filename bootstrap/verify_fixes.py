from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')

print('=== VERIFICATION ===')

# 1. .DEF files
modules = ['SETUP', 'WIN', 'WIN100', 'WIN100_OVL', 'WINOLDAP', 'WINOLDAP_GRB']
def_count = sum(1 for m in modules if (REPO / 'src' / m / f'{m}.def').exists())
print(f'DEF files: {def_count}/6')

# 2. pass1b for core modules
core = ['WIN', 'WIN100', 'WIN100_OVL', 'WINOLDAP', 'WINOLDAP_GRB']
p1b_count = sum(1 for m in core if (REPO / 'state' / 'analyze' / 'pass1b' / f'{m}.json').exists())
print(f'pass1b core: {p1b_count}/5')

# 3. READMEs
readme_count = sum(1 for d in (REPO / 'src').iterdir() if d.is_dir() and (d / 'README.md').exists())
print(f'Module READMEs: {readme_count}/92')

# 4. Main README
readme = REPO / 'README.md'
if readme.exists():
    text = readme.read_text(encoding='utf-8', errors='replace')
    has_c = 'C-Port' in text
    print(f'Main README mentions C port: {has_c}')

# 5. WIN/WIN.asm db comments
win = REPO / 'src' / 'WIN' / 'WIN.asm'
text = win.read_text(encoding='ascii', errors='replace')
db_no_comment = sum(1 for l in text.splitlines() if l.strip().startswith('db ') and ';[' not in l)
print(f'WIN/WIN.asm db without comments: {db_no_comment}')
