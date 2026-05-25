"""Base de conocimiento de APIs de Windows 1.x.

Descripciones cortas de funciones bien conocidas, derivadas de:
  - Windows 1.0 SDK documentation (filtrado a las exportaciones que vimos)
  - Convenciones de naming estandar (GET/SET/CREATE/DELETE...)
  - Conocimiento publico de la API Win16

Las descripciones son cortas (una linea) y en castellano/ingles tecnico.
NO copiamos texto literal de manuales propietarios; describimos el comportamiento
generico segun la convencion de naming.
"""

from __future__ import annotations

# Descripciones por nombre exacto exportado
KNOWN_API: dict[str, str] = {
    # KERNEL - Module management
    "GETVERSION": "Devuelve la version de Windows (low=major, high=minor) en AX.",
    "LOADMODULE": "Carga un modulo NE en memoria, ejecutando su startup.",
    "FREELIBRARY": "Decrementa refcount y descarga un modulo cuando llega a 0.",
    "LOADLIBRARY": "Carga una DLL/EXE y devuelve handle.",
    "GETCODEHANDLE": "Devuelve handle del segmento de codigo de una funcion.",
    "GETPROCADDRESS": "Resuelve nombre de export a direccion FAR PTR.",
    "GETMODULEFILENAME": "Recupera el path completo del fichero del modulo.",
    "GETMODULEUSAGE": "Devuelve el refcount actual del modulo.",
    "GETINSTANCEDATA": "Devuelve un slot de datos por instancia de tarea.",
    "MAKEPROCINSTANCE": "Crea un thunk que ata DS de una instancia a un proc.",
    "FREEPROCINSTANCE": "Libera un thunk creado por MAKEPROCINSTANCE.",
    "GETMODULEHANDLE": "Devuelve handle de un modulo cargado por nombre.",
    "CALLPROCINSTANCE": "Invoca un thunk creado por MAKEPROCINSTANCE.",
    "DEFINEHANDLETABLE": "Define tabla de handles para un modulo.",

    # KERNEL - Memory
    "GLOBALALLOC": "Reserva un bloque global del heap del sistema. Devuelve HANDLE.",
    "GLOBALFREE": "Libera un bloque global identificado por HANDLE.",
    "GLOBALLOCK": "Bloquea un bloque global y devuelve puntero FAR.",
    "GLOBALUNLOCK": "Desbloquea un bloque global previamente bloqueado.",
    "GLOBALREALLOC": "Cambia el tamano de un bloque global.",
    "GLOBALSIZE": "Devuelve el tamano de un bloque global.",
    "GLOBALFLAGS": "Devuelve flags y refcount de un bloque global.",
    "GLOBALHANDLE": "Devuelve HANDLE desde un puntero global.",
    "GLOBALCOMPACT": "Compacta el heap global moviendo bloques.",
    "GLOBALDISCARD": "Marca un bloque discardable como liberable.",
    "GLOBALWIRE": "Fija un bloque global en memoria (no swappable).",
    "GLOBALUNWIRE": "Desfija un bloque global previamente wired.",
    "LOCALALLOC": "Reserva un bloque en el heap local (DS).",
    "LOCALFREE": "Libera un bloque local.",
    "LOCALLOCK": "Bloquea un bloque local y devuelve puntero NEAR.",
    "LOCALUNLOCK": "Desbloquea un bloque local.",
    "LOCALREALLOC": "Cambia el tamano de un bloque local.",
    "LOCALSIZE": "Tamano de un bloque local.",
    "LOCALHANDLE": "HANDLE de un puntero local.",
    "LOCALFLAGS": "Flags de un bloque local.",
    "LOCALCOMPACT": "Compacta el heap local.",
    "LOCALSHRINK": "Devuelve memoria del heap local al global.",
    "LOCALINIT": "Inicializa un heap local en un segmento.",

    # KERNEL - File/IO
    "OPENFILE": "Abre un fichero. Equivalente a INT 21h fn 3Dh con paths Windows.",
    "_LREAD": "Lectura larga (>64K) sobre handle de fichero.",
    "_LWRITE": "Escritura larga sobre handle.",
    "_LCLOSE": "Cierra handle de fichero.",
    "_LOPEN": "Abre fichero (low-level, sin Windows extras).",
    "_LCREAT": "Crea un fichero nuevo.",
    "_LLSEEK": "Mueve el puntero de fichero.",
    "GETTEMPDRIVE": "Devuelve unidad temporal recomendada (A-Z).",
    "GETTEMPFILENAME": "Construye un nombre unico de fichero temporal.",
    "GETMODULEFILENAME": "Path completo del binario de un modulo.",
    "GETLASTDISKCHANGE": "Detecta si el disco fue cambiado recientemente.",
    "DELETEPATHNAME": "Borra un fichero por path.",
    "OPENPATHNAME": "Abre fichero por path absoluto.",

    # KERNEL - Strings
    "LSTRCPY": "Copia cadena ASCIIZ FAR PTR -> FAR PTR.",
    "LSTRCAT": "Concatena dos cadenas FAR PTR.",
    "LSTRLEN": "Longitud de cadena ASCIIZ FAR.",
    "LSTRCMP": "Compara dos cadenas FAR PTR (signed).",
    "LSTRCMPI": "Compara dos cadenas FAR ignorando mayusculas.",
    "ANSITOOEM": "Convierte cadena ANSI a OEM (codepage local).",
    "OEMTOANSI": "Convierte cadena OEM a ANSI.",
    "ANSIUPPER": "Convierte cadena ANSI a mayusculas.",
    "ANSILOWER": "Convierte cadena ANSI a minusculas.",

    # KERNEL - Tasks
    "INITTASK": "Inicializa estructura de tarea Windows.",
    "EXITWINDOWS": "Termina Windows y devuelve a DOS.",
    "WINEXEC": "Ejecuta un programa Windows (equivalente a LoadModule+Run).",
    "VALIDATECODESEGMENTS": "Verifica integridad de segmentos de codigo.",
    "VALIDATEFREESPACES": "Verifica integridad del heap.",
    "DEBUGBREAK": "Punto de break para el depurador.",
    "OUTPUTDEBUGSTRING": "Envia string al depurador / canal de log.",
    "GETCURRENTPDB": "Devuelve PDB (Program Data Block, DOS) actual.",
    "SETERRORMODE": "Configura como se manejan errores criticos.",

    # USER - Windows management
    "CREATEWINDOW": "Crea una ventana Win16. Devuelve HWND.",
    "DESTROYWINDOW": "Destruye una ventana y libera recursos.",
    "SHOWWINDOW": "Muestra/oculta/minimiza/maximiza ventana.",
    "MOVEWINDOW": "Mueve y redimensiona una ventana.",
    "UPDATEWINDOW": "Fuerza repaint de region invalida.",
    "INVALIDATERECT": "Marca un rectangulo como necesitado de repaint.",
    "VALIDATERECT": "Marca un rectangulo como pintado.",
    "GETWINDOWRECT": "Obtiene posicion absoluta de ventana.",
    "GETCLIENTRECT": "Obtiene area cliente de ventana.",
    "GETPARENT": "Devuelve HWND del padre.",
    "GETWINDOW": "Navega por jerarquia de ventanas (hermanos, hijos).",
    "ISWINDOW": "Verifica si HWND es valido.",
    "ISWINDOWVISIBLE": "Verifica si la ventana es visible.",
    "ISICONIC": "Verifica si la ventana esta minimizada.",
    "FINDWINDOW": "Busca ventana por clase y/o titulo.",
    "SETWINDOWTEXT": "Cambia titulo (o texto) de ventana.",
    "GETWINDOWTEXT": "Lee titulo (o texto) de ventana.",
    "SETACTIVEWINDOW": "Activa una ventana (la trae al foreground).",
    "GETACTIVEWINDOW": "Devuelve HWND activa.",
    "SETFOCUS": "Cambia el foco de teclado.",
    "GETFOCUS": "Devuelve HWND con foco.",
    "ENABLEWINDOW": "Habilita/deshabilita input en una ventana.",
    "REGISTERCLASS": "Registra una clase de ventana.",
    "UNREGISTERCLASS": "Desregistra una clase.",
    "DEFWINDOWPROC": "Procesa mensaje por defecto cuando WindowProc no lo hace.",

    # USER - Messages
    "SENDMESSAGE": "Envia mensaje sincrono a window proc.",
    "POSTMESSAGE": "Encola mensaje asincrono en cola de la ventana.",
    "GETMESSAGE": "Saca mensaje de la cola (bloqueante).",
    "PEEKMESSAGE": "Saca/inspecciona mensaje sin bloquear.",
    "TRANSLATEMESSAGE": "Traduce mensajes de teclado a WM_CHAR.",
    "DISPATCHMESSAGE": "Envia mensaje al window proc adecuado.",
    "REPLYMESSAGE": "Responde a un SendMessage cross-task.",

    # USER - Painting / GDI helpers
    "BEGINPAINT": "Empieza secuencia de pintado WM_PAINT.",
    "ENDPAINT": "Termina secuencia de pintado.",
    "GETDC": "Obtiene Display Context de ventana.",
    "RELEASEDC": "Libera DC obtenido por GetDC.",
    "BEGINDEFERWINDOWPOS": "Empieza batch de WindowPos.",
    "ENDDEFERWINDOWPOS": "Aplica batch de WindowPos.",

    # USER - Dialogs / controls
    "DIALOGBOX": "Carga y ejecuta dialogo modal.",
    "ENDDIALOG": "Termina dialogo modal.",
    "MESSAGEBOX": "Muestra dialogo de mensaje predefinido.",
    "GETDLGITEM": "Devuelve HWND de control de dialogo.",
    "SETDLGITEMTEXT": "Cambia texto de control de dialogo.",
    "GETDLGITEMTEXT": "Lee texto de control de dialogo.",
    "GETDLGITEMINT": "Lee entero desde control de dialogo.",
    "SETDLGITEMINT": "Escribe entero en control de dialogo.",
    "ISDIALOGMESSAGE": "Procesa mensajes de teclado en dialogo modeless.",

    # USER - Menus
    "GETMENU": "Devuelve handle de menu de ventana.",
    "SETMENU": "Asigna menu a ventana.",
    "CREATEMENU": "Crea menu vacio.",
    "DESTROYMENU": "Destruye menu y libera recursos.",
    "APPENDMENU": "Anade item al final de un menu.",
    "INSERTMENU": "Inserta item en posicion concreta.",
    "DELETEMENU": "Borra item de menu.",
    "MODIFYMENU": "Modifica item existente.",
    "ENABLEMENUITEM": "Habilita/deshabilita item.",
    "CHECKMENUITEM": "Marca/desmarca item con check.",
    "TRACKPOPUPMENU": "Muestra menu emergente y devuelve eleccion.",

    # USER - Resources
    "LOADBITMAP": "Carga BITMAP desde recurso.",
    "LOADCURSOR": "Carga CURSOR desde recurso.",
    "LOADICON": "Carga ICON desde recurso.",
    "LOADSTRING": "Carga STRING desde recurso.",
    "LOADRESOURCE": "Carga recurso generico.",
    "LOADMENU": "Carga MENU desde recurso.",
    "LOADACCELERATORS": "Carga tabla de aceleradores.",
    "FINDRESOURCE": "Busca recurso por tipo+nombre.",
    "FREERESOURCE": "Libera recurso.",

    # GDI - DC
    "CREATEDC": "Crea Device Context para un dispositivo.",
    "DELETEDC": "Borra un DC.",
    "CREATECOMPATIBLEDC": "Crea DC compatible con otro (memoria).",
    "GETDEVICECAPS": "Recupera capacidades del dispositivo.",
    "SAVEDC": "Guarda estado del DC.",
    "RESTOREDC": "Restaura estado guardado del DC.",
    "SELECTOBJECT": "Cambia objeto activo en DC (pen, brush, font, bitmap).",
    "GETSTOCKOBJECT": "Devuelve objeto stock del sistema (BLACK_PEN, WHITE_BRUSH, etc).",
    "DELETEOBJECT": "Borra un objeto GDI (pen, brush, font, bitmap).",

    # GDI - Drawing primitives
    "MOVETO": "Mueve cursor de dibujo a (x,y).",
    "LINETO": "Dibuja linea desde cursor a (x,y).",
    "RECTANGLE": "Dibuja rectangulo con pen y brush actuales.",
    "ELLIPSE": "Dibuja elipse.",
    "ARC": "Dibuja arco.",
    "PIE": "Dibuja sector circular.",
    "POLYGON": "Dibuja poligono.",
    "POLYLINE": "Dibuja secuencia de lineas.",
    "FLOODFILL": "Rellena area con brush actual.",
    "FILLRECT": "Rellena rectangulo con brush dado.",
    "FRAMERECT": "Dibuja borde de rectangulo.",
    "INVERTRECT": "Invierte colores en rectangulo.",
    "TEXTOUT": "Dibuja string en (x,y) con font del DC.",
    "GETTEXTEXTENT": "Calcula tamano (cx,cy) que ocupa un string.",
    "SETPIXEL": "Pone pixel de color en (x,y).",
    "GETPIXEL": "Lee color de pixel en (x,y).",
    "BITBLT": "Copia rectangulo de bits entre DCs (block transfer).",
    "STRETCHBLT": "Copia con escalado.",
    "PATBLT": "Pinta rectangulo con brush.",

    # GDI - Pen/Brush/Font
    "CREATEPEN": "Crea pen con estilo/grosor/color.",
    "CREATESOLIDBRUSH": "Crea brush solido de color.",
    "CREATEHATCHBRUSH": "Crea brush con patron de rayado.",
    "CREATEPATTERNBRUSH": "Crea brush desde bitmap.",
    "CREATEFONT": "Crea fuente con atributos.",
    "CREATEBITMAP": "Crea bitmap.",
    "CREATECOMPATIBLEBITMAP": "Crea bitmap compatible con DC.",

    # WIN.COM / boot
    "WINMAIN": "Punto de entrada principal de aplicacion Windows.",
}


def lookup_api(name: str) -> str | None:
    """Devuelve descripcion conocida, o None si no esta en la KB."""
    return KNOWN_API.get(name.upper())


def describe_by_convention(name: str) -> str | None:
    """Describe heuristicamente segun convencion de naming."""
    n = name.upper()
    if n.startswith("GET"):
        rest = n[3:]
        if rest:
            return f"Getter: devuelve {rest.lower().replace('_', ' ')}."
    if n.startswith("SET"):
        rest = n[3:]
        if rest:
            return f"Setter: cambia {rest.lower().replace('_', ' ')}."
    if n.startswith("CREATE"):
        return f"Constructor: crea {n[6:].lower().replace('_', ' ') or 'objeto'}."
    if n.startswith("DESTROY") or n.startswith("DELETE"):
        return f"Destructor: libera {n[7:].lower().replace('_', ' ') or 'objeto'}."
    if n.startswith("IS"):
        return f"Predicado: verifica si {n[2:].lower().replace('_', ' ')}."
    if n.startswith("ENUM"):
        return f"Enumerador: itera sobre {n[4:].lower().replace('_', ' ')}."
    if n.startswith("FIND"):
        return f"Busqueda: localiza {n[4:].lower().replace('_', ' ')}."
    if n.startswith("LOAD"):
        return f"Loader: carga {n[4:].lower().replace('_', ' ')}."
    if n.startswith("FREE"):
        return f"Libera {n[4:].lower().replace('_', ' ')}."
    if n.startswith("INIT"):
        return f"Inicializa {n[4:].lower().replace('_', ' ')}."
    if n.startswith("REG"):
        return f"Registra {n[3:].lower().replace('_', ' ')}."
    return None
