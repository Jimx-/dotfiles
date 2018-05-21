# start X server
[ -z "$DISPLAY" -a "$(fgconsole)" -eq 1 ] && exec startx

