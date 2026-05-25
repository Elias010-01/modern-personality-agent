#!/usr/bin/env bash
echo "=== X11/Wayland status en WSL ==="
echo "DISPLAY=$DISPLAY"
echo "WAYLAND_DISPLAY=$WAYLAND_DISPLAY"
echo "XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR"
ls /tmp/.X11-unix/ 2>/dev/null && echo "  /tmp/.X11-unix existe" || echo "  /tmp/.X11-unix NO existe"
ls /mnt/wslg/ 2>/dev/null && echo "  /mnt/wslg existe (WSLg disponible)" || echo "  /mnt/wslg NO existe"
