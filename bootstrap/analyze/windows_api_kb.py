"""Knowledge base of Windows 1.x APIs.

Short one-line descriptions of well-known functions, derived from:
  - Windows 1.0 SDK documentation (filtered to exports we observe)
  - Standard naming conventions (GET/SET/CREATE/DELETE/...)
  - Public knowledge of the Win16 API surface

Descriptions are intentionally brief and technical. We do NOT copy text
from proprietary manuals verbatim; we describe generic behaviour based on
the naming convention.
"""

from __future__ import annotations

# Descriptions keyed by exact exported name
KNOWN_API: dict[str, str] = {
    # KERNEL - Module management
    "GETVERSION": "Returns Windows version in AX (low=major, high=minor).",
    "LOADMODULE": "Loads an NE module into memory and runs its startup code.",
    "FREELIBRARY": "Decrements module refcount; unloads when it reaches 0.",
    "LOADLIBRARY": "Loads a DLL/EXE and returns its module handle.",
    "GETCODEHANDLE": "Returns handle of the code segment containing a function.",
    "GETPROCADDRESS": "Resolves an export name to a FAR PTR address.",
    "GETMODULEFILENAME": "Retrieves the full file path of a loaded module.",
    "GETMODULEUSAGE": "Returns the current refcount of a module.",
    "GETINSTANCEDATA": "Returns a per-task instance-data slot.",
    "MAKEPROCINSTANCE": "Creates a thunk binding an instance's DS to a proc.",
    "FREEPROCINSTANCE": "Frees a thunk created by MAKEPROCINSTANCE.",
    "GETMODULEHANDLE": "Returns the module handle of a module loaded by name.",
    "CALLPROCINSTANCE": "Invokes a thunk previously created by MAKEPROCINSTANCE.",
    "DEFINEHANDLETABLE": "Defines a module's handle table.",

    # KERNEL - Memory
    "GLOBALALLOC": "Allocates a block from the system global heap; returns a HANDLE.",
    "GLOBALFREE": "Frees a global block identified by HANDLE.",
    "GLOBALLOCK": "Locks a global block and returns a FAR pointer.",
    "GLOBALUNLOCK": "Unlocks a previously locked global block.",
    "GLOBALREALLOC": "Resizes a global block.",
    "GLOBALSIZE": "Returns the size of a global block.",
    "GLOBALFLAGS": "Returns flags and refcount of a global block.",
    "GLOBALHANDLE": "Returns the HANDLE for a global pointer.",
    "GLOBALCOMPACT": "Compacts the global heap by moving blocks.",
    "GLOBALDISCARD": "Marks a discardable block as eligible for discard.",
    "GLOBALWIRE": "Pins a global block in memory (not swappable).",
    "GLOBALUNWIRE": "Unpins a previously wired global block.",
    "LOCALALLOC": "Allocates a block in the local (DS) heap.",
    "LOCALFREE": "Frees a local block.",
    "LOCALLOCK": "Locks a local block and returns a NEAR pointer.",
    "LOCALUNLOCK": "Unlocks a local block.",
    "LOCALREALLOC": "Resizes a local block.",
    "LOCALSIZE": "Size of a local block.",
    "LOCALHANDLE": "HANDLE of a local pointer.",
    "LOCALFLAGS": "Flags of a local block.",
    "LOCALCOMPACT": "Compacts the local heap.",
    "LOCALSHRINK": "Returns memory from the local heap back to the global heap.",
    "LOCALINIT": "Initializes a local heap inside a segment.",

    # KERNEL - File/IO
    "OPENFILE": "Opens a file. Equivalent to INT 21h fn 3Dh with Windows paths.",
    "_LREAD": "Long-read (>64K) from a file handle.",
    "_LWRITE": "Long-write to a file handle.",
    "_LCLOSE": "Closes a file handle.",
    "_LOPEN": "Opens a file (low-level, no Windows extras).",
    "_LCREAT": "Creates a new file.",
    "_LLSEEK": "Moves the file pointer.",
    "GETTEMPDRIVE": "Returns the recommended temp drive letter (A-Z).",
    "GETTEMPFILENAME": "Builds a unique temporary file name.",
    "GETLASTDISKCHANGE": "Detects whether the disk was recently changed.",
    "DELETEPATHNAME": "Deletes a file by path.",
    "OPENPATHNAME": "Opens a file by absolute path.",

    # KERNEL - Strings
    "LSTRCPY": "Copies an ASCIIZ string FAR PTR -> FAR PTR.",
    "LSTRCAT": "Concatenates two FAR PTR strings.",
    "LSTRLEN": "Length of a FAR ASCIIZ string.",
    "LSTRCMP": "Compares two FAR PTR strings (signed).",
    "LSTRCMPI": "Compares two FAR strings, case-insensitive.",
    "ANSITOOEM": "Converts an ANSI string to OEM (local codepage).",
    "OEMTOANSI": "Converts an OEM string to ANSI.",
    "ANSIUPPER": "Converts an ANSI string to upper case.",
    "ANSILOWER": "Converts an ANSI string to lower case.",

    # KERNEL - Tasks
    "INITTASK": "Initializes the Windows task structure.",
    "EXITWINDOWS": "Shuts Windows down and returns to DOS.",
    "WINEXEC": "Runs a Windows program (LoadModule + Run shorthand).",
    "VALIDATECODESEGMENTS": "Verifies integrity of code segments.",
    "VALIDATEFREESPACES": "Verifies integrity of the heap free list.",
    "DEBUGBREAK": "Breakpoint for the debugger.",
    "OUTPUTDEBUGSTRING": "Sends a string to the debugger / log channel.",
    "GETCURRENTPDB": "Returns the current PDB (DOS Program Data Block).",
    "SETERRORMODE": "Configures how critical errors are handled.",

    # USER - Windows management
    "CREATEWINDOW": "Creates a Win16 window; returns HWND.",
    "DESTROYWINDOW": "Destroys a window and frees its resources.",
    "SHOWWINDOW": "Shows/hides/minimizes/maximizes a window.",
    "MOVEWINDOW": "Moves and resizes a window.",
    "UPDATEWINDOW": "Forces an invalid region to be repainted.",
    "INVALIDATERECT": "Marks a rectangle as needing repaint.",
    "VALIDATERECT": "Marks a rectangle as already painted.",
    "GETWINDOWRECT": "Gets the screen-absolute position of a window.",
    "GETCLIENTRECT": "Gets the client area of a window.",
    "GETPARENT": "Returns the parent HWND.",
    "GETWINDOW": "Navigates the window hierarchy (siblings, children).",
    "ISWINDOW": "Checks whether an HWND is valid.",
    "ISWINDOWVISIBLE": "Checks whether a window is visible.",
    "ISICONIC": "Checks whether a window is minimized.",
    "FINDWINDOW": "Finds a window by class and/or title.",
    "SETWINDOWTEXT": "Changes a window's title (or text).",
    "GETWINDOWTEXT": "Reads a window's title (or text).",
    "SETACTIVEWINDOW": "Activates a window (brings it to the foreground).",
    "GETACTIVEWINDOW": "Returns the active HWND.",
    "SETFOCUS": "Changes the keyboard focus.",
    "GETFOCUS": "Returns the focused HWND.",
    "ENABLEWINDOW": "Enables/disables input on a window.",
    "REGISTERCLASS": "Registers a window class.",
    "UNREGISTERCLASS": "Unregisters a window class.",
    "DEFWINDOWPROC": "Default message handler used when WindowProc does not handle a message.",

    # USER - Messages
    "SENDMESSAGE": "Sends a synchronous message to a window proc.",
    "POSTMESSAGE": "Posts an asynchronous message to a window's queue.",
    "GETMESSAGE": "Removes a message from the queue (blocking).",
    "PEEKMESSAGE": "Removes/inspects a message without blocking.",
    "TRANSLATEMESSAGE": "Translates keyboard messages into WM_CHAR.",
    "DISPATCHMESSAGE": "Dispatches a message to the appropriate window proc.",
    "REPLYMESSAGE": "Replies to a cross-task SendMessage.",

    # USER - Painting / GDI helpers
    "BEGINPAINT": "Begins a WM_PAINT painting sequence.",
    "ENDPAINT": "Ends a painting sequence.",
    "GETDC": "Gets the display context (DC) of a window.",
    "RELEASEDC": "Releases a DC obtained via GetDC.",
    "BEGINDEFERWINDOWPOS": "Begins a batched WindowPos update.",
    "ENDDEFERWINDOWPOS": "Applies a batched WindowPos update.",

    # USER - Dialogs / controls
    "DIALOGBOX": "Loads and runs a modal dialog.",
    "ENDDIALOG": "Ends a modal dialog.",
    "MESSAGEBOX": "Displays a predefined message dialog.",
    "GETDLGITEM": "Returns the HWND of a dialog control.",
    "SETDLGITEMTEXT": "Changes the text of a dialog control.",
    "GETDLGITEMTEXT": "Reads the text of a dialog control.",
    "GETDLGITEMINT": "Reads an integer from a dialog control.",
    "SETDLGITEMINT": "Writes an integer into a dialog control.",
    "ISDIALOGMESSAGE": "Processes keyboard messages in a modeless dialog.",

    # USER - Menus
    "GETMENU": "Returns the menu handle of a window.",
    "SETMENU": "Assigns a menu to a window.",
    "CREATEMENU": "Creates an empty menu.",
    "DESTROYMENU": "Destroys a menu and frees its resources.",
    "APPENDMENU": "Appends an item to the end of a menu.",
    "INSERTMENU": "Inserts a menu item at a specific position.",
    "DELETEMENU": "Deletes a menu item.",
    "MODIFYMENU": "Modifies an existing menu item.",
    "ENABLEMENUITEM": "Enables/disables a menu item.",
    "CHECKMENUITEM": "Toggles the check mark on a menu item.",
    "TRACKPOPUPMENU": "Displays a popup menu and returns the user's choice.",

    # USER - Resources
    "LOADBITMAP": "Loads a BITMAP from a resource.",
    "LOADCURSOR": "Loads a CURSOR from a resource.",
    "LOADICON": "Loads an ICON from a resource.",
    "LOADSTRING": "Loads a STRING from a resource.",
    "LOADRESOURCE": "Loads a generic resource.",
    "LOADMENU": "Loads a MENU from a resource.",
    "LOADACCELERATORS": "Loads an accelerator table.",
    "FINDRESOURCE": "Looks up a resource by type and name.",
    "FREERESOURCE": "Frees a resource.",

    # GDI - DC
    "CREATEDC": "Creates a Device Context for a device.",
    "DELETEDC": "Deletes a DC.",
    "CREATECOMPATIBLEDC": "Creates a memory DC compatible with another DC.",
    "GETDEVICECAPS": "Retrieves device capabilities.",
    "SAVEDC": "Saves the current DC state.",
    "RESTOREDC": "Restores a previously saved DC state.",
    "SELECTOBJECT": "Selects a new active object into a DC (pen, brush, font, bitmap).",
    "GETSTOCKOBJECT": "Returns a system stock object (BLACK_PEN, WHITE_BRUSH, etc).",
    "DELETEOBJECT": "Deletes a GDI object (pen, brush, font, bitmap).",

    # GDI - Drawing primitives
    "MOVETO": "Moves the drawing cursor to (x,y).",
    "LINETO": "Draws a line from the cursor to (x,y).",
    "RECTANGLE": "Draws a rectangle using the current pen and brush.",
    "ELLIPSE": "Draws an ellipse.",
    "ARC": "Draws an arc.",
    "PIE": "Draws a pie slice.",
    "POLYGON": "Draws a polygon.",
    "POLYLINE": "Draws a sequence of lines.",
    "FLOODFILL": "Fills an area with the current brush.",
    "FILLRECT": "Fills a rectangle with the given brush.",
    "FRAMERECT": "Draws the border of a rectangle.",
    "INVERTRECT": "Inverts colours inside a rectangle.",
    "TEXTOUT": "Draws a string at (x,y) using the DC font.",
    "GETTEXTEXTENT": "Computes the (cx,cy) size occupied by a string.",
    "SETPIXEL": "Sets a coloured pixel at (x,y).",
    "GETPIXEL": "Reads the colour of the pixel at (x,y).",
    "BITBLT": "Copies a rectangle of bits between DCs (block transfer).",
    "STRETCHBLT": "Copies with scaling.",
    "PATBLT": "Paints a rectangle with the current brush.",

    # GDI - Pen/Brush/Font
    "CREATEPEN": "Creates a pen with given style/width/colour.",
    "CREATESOLIDBRUSH": "Creates a solid-colour brush.",
    "CREATEHATCHBRUSH": "Creates a brush with a hatched pattern.",
    "CREATEPATTERNBRUSH": "Creates a brush from a bitmap.",
    "CREATEFONT": "Creates a font with the given attributes.",
    "CREATEBITMAP": "Creates a bitmap.",
    "CREATECOMPATIBLEBITMAP": "Creates a bitmap compatible with a DC.",

    # WIN.COM / boot
    "WINMAIN": "Main entry point of a Windows application.",
}


def lookup_api(name: str) -> str | None:
    """Returns the known description for an API name, or None if not in the KB."""
    return KNOWN_API.get(name.upper())


def describe_by_convention(name: str) -> str | None:
    """Heuristic description based on naming conventions."""
    n = name.upper()
    if n.startswith("GET"):
        rest = n[3:]
        if rest:
            return f"Getter: returns {rest.lower().replace('_', ' ')}."
    if n.startswith("SET"):
        rest = n[3:]
        if rest:
            return f"Setter: changes {rest.lower().replace('_', ' ')}."
    if n.startswith("CREATE"):
        return f"Constructor: creates {n[6:].lower().replace('_', ' ') or 'object'}."
    if n.startswith("DESTROY") or n.startswith("DELETE"):
        return f"Destructor: frees {n[7:].lower().replace('_', ' ') or 'object'}."
    if n.startswith("IS"):
        return f"Predicate: checks whether {n[2:].lower().replace('_', ' ')}."
    if n.startswith("ENUM"):
        return f"Enumerator: iterates over {n[4:].lower().replace('_', ' ')}."
    if n.startswith("FIND"):
        return f"Search: locates {n[4:].lower().replace('_', ' ')}."
    if n.startswith("LOAD"):
        return f"Loader: loads {n[4:].lower().replace('_', ' ')}."
    if n.startswith("FREE"):
        return f"Frees {n[4:].lower().replace('_', ' ')}."
    if n.startswith("INIT"):
        return f"Initializes {n[4:].lower().replace('_', ' ')}."
    if n.startswith("REG"):
        return f"Registers {n[3:].lower().replace('_', ' ')}."
    return None
