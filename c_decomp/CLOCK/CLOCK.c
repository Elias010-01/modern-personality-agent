/*
 * CLOCK.c - Reconstructed C scaffold for Windows 1.x CLOCK.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CLOCK.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CLOCK/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CLOCK/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 24
 * Total API call sites: 62
 *
 * To convert any function below to a real C implementation:
 *   1. Read the corresponding .asm at the offset noted in the function header.
 *   2. Identify control flow (loops, if/else) from the L_xxxx labels (pass 16).
 *   3. Identify locals/args from the [bp-N] / [bp+N] references.
 *   4. Replace the body, then verify byte-exactness via build_from_source.py
 *      compiled with MSC 4.0 and matching flags (long-running goal).
 */

#include <windows.h>
#include <kernel.h>
#include <user.h>
#include <gdi.h>

/* ====================================================================
 * MANUALLY LIFTED FUNCTIONS (demo)
 *
 * The following functions have been read from the ASM and rewritten in
 * plausible C. They are NOT verified byte-exact yet (that would require
 * MSC 4.0 + matching flags + much trial-and-error). They are illustrative
 * reconstructions intended to show what the original Microsoft source
 * code probably looked like.
 *
 * Each lifted function is annotated with `[LIFTED]` and includes a
 * commented reference to its ASM source location.
 * ==================================================================== */

/*
 * Global GDI tools for drawing the clock face.
 * In the ASM, these are stored at fixed offsets in the data segment:
 *   [0xC0]  hBrushWindow         - brush of system COLOR_WINDOW
 *   [0xC6]  hBrushWindowFrame    - brush of system COLOR_WINDOWFRAME
 *   [0xA2]  hPenWindow           - pen of width 1, system COLOR_WINDOW
 *   [0xBA]  hPenWindowFrame      - pen of width 1, system COLOR_WINDOWFRAME
 */
HBRUSH  hBrushWindow;          /* @ DS:0x00C0 */
HBRUSH  hBrushWindowFrame;     /* @ DS:0x00C6 */
HPEN    hPenWindow;            /* @ DS:0x00A2 */
HPEN    hPenWindowFrame;       /* @ DS:0x00BA */

/*
 * [LIFTED] sub_0179 -> probable original name: InitClockGdiObjects
 *
 * ASM source: src/CLOCK/seg1.asm @ offset 0x0179 (41 instructions)
 * Original calling convention: NEAR PASCAL (no args, no return)
 *
 * Allocates the four GDI objects used to paint the clock:
 *   - Two solid brushes, one in each of the user's two main system colors.
 *   - Two pens of width 1, in the same two colors.
 *
 * Called once during application start-up (probably from WM_CREATE in
 * the main WndProc). The four handles are stored in DGROUP globals and
 * later deleted by the cleanup routine (DeleteObject) at WM_DESTROY.
 *
 * Note: this is a plausible reconstruction. The original Microsoft
 * sources are not public; the function's role is inferred from the API
 * call sequence and the way the handles are reused later in the clock's
 * painting code.
 */
void NEAR PASCAL InitClockGdiObjects(void)
{
    hBrushWindow      = CreateSolidBrush(GetSysColor(COLOR_WINDOW));
    hBrushWindowFrame = CreateSolidBrush(GetSysColor(COLOR_WINDOWFRAME));
    hPenWindow        = CreatePen(PS_SOLID, 1, GetSysColor(COLOR_WINDOW));
    hPenWindowFrame   = CreatePen(PS_SOLID, 1, GetSysColor(COLOR_WINDOWFRAME));
}

/*
 * [LIFTED] sub_01DA -> probable original name: CleanupClockGdiObjects
 *
 * ASM source: src/CLOCK/seg1.asm @ offset 0x01DA (13 instructions)
 * Original calling convention: NEAR PASCAL (no args, no return)
 *
 * Counterpart of InitClockGdiObjects. Frees the four GDI objects that
 * were allocated at start-up. Called from WM_DESTROY in the main WndProc.
 *
 * The ASM literally calls DeleteObject four times in sequence on the
 * four DGROUP globals.
 */
void NEAR PASCAL CleanupClockGdiObjects(void)
{
    DeleteObject(hBrushWindow);
    DeleteObject(hBrushWindowFrame);
    DeleteObject(hPenWindow);
    DeleteObject(hPenWindowFrame);
}

/*
 * sub_01DA_ORIGINAL_STUB (preserved for diff)
 * segment: seg1.asm    offset: 0x01DA    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01DA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0205 (sub_0205)
 * segment: seg1.asm    offset: 0x0205    instructions: 106
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0179, L_0DB8, L_0FF0, L_1091
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0205(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0317 (sub_0317)
 * segment: seg1.asm    offset: 0x0317    instructions: 44
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   KILLTIMER(?)
 *   SETRECT(?)
 *   SETTIMER(?)
 *
 * Internal calls: L_0AE3
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0317(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0390 (sub_0390)
 * segment: seg1.asm    offset: 0x0390    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_03E2, L_0DB8
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0390(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03E2 (sub_03E2)
 * segment: seg1.asm    offset: 0x03E2    instructions: 211
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   FILLRECT(?)
 *
 * Internal calls: L_0615, L_079E, L_084D, L_0DB8
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03E2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0615 (sub_0615)
 * segment: seg1.asm    offset: 0x0615    instructions: 167
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   FILLRECT(?)
 *   INFLATERECT(?)
 *   OFFSETRECT(?)
 *
 * Internal calls: L_0FF0, L_1091
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0615(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_079E (sub_079E)
 * segment: seg1.asm    offset: 0x079E    instructions: 80
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Internal calls: L_0FF0, L_1091
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_079E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_084D (sub_084D)
 * segment: seg1.asm    offset: 0x084D    instructions: 298
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Internal calls: L_0FF0, L_1091
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_084D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AE3 (sub_0AE3)
 * segment: seg1.asm    offset: 0x0AE3    instructions: 62
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0FF0, L_1091
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AE3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B87 (sub_0B87)
 * segment: seg1.asm    offset: 0x0B87    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Internal calls: L_0CFB
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B87(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BBA (sub_0BBA)
 * segment: seg1.asm    offset: 0x0BBA    instructions: 140
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETINSTANCEDATA(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   GETSYSTEMMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETTIMER(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_01DA, L_0FE0
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BBA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CFB (sub_0CFB)
 * segment: seg1.asm    offset: 0x0CFB    instructions: 72
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   FINDRESOURCE(?)
 *   LOADRESOURCE(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CFB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DB8 (sub_0DB8)
 * segment: seg1.asm    offset: 0x0DB8    instructions: 57
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_0B87, L_0F4E, L_0FE0
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DB8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E45 (sub_0E45)
 * segment: seg1.asm    offset: 0x0E45    instructions: 130
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALSIZE(HANDLE hMem) -> DWORD
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   LOCALSIZE(HANDLE hMem) -> WORD
 *
 * Internal calls: L_10F5
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E45(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F4E (sub_0F4E)
 * segment: seg1.asm    offset: 0x0F4E    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F4E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FE0 (sub_0FE0)
 * segment: seg1.asm    offset: 0x0FE0    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1100, L_1136
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FE0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FF0 (sub_0FF0)
 * segment: seg1.asm    offset: 0x0FF0    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1148
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FF0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1091 (sub_1091)
 * segment: seg1.asm    offset: 0x1091    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1091(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10F5 (sub_10F5)
 * segment: seg1.asm    offset: 0x10F5    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10F5(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1100 (sub_1100)
 * segment: seg1.asm    offset: 0x1100    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_0E45, L_116E
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1100(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1136 (sub_1136)
 * segment: seg1.asm    offset: 0x1136    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1136(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1148 (sub_1148)
 * segment: seg1.asm    offset: 0x1148    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1148(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_116E (sub_116E)
 * segment: seg1.asm    offset: 0x116E    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLOCK/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_116E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

