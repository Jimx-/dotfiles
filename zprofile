# start X server
[ -z "$DISPLAY" -a "$(fgconsole)" -eq 1 ] && exec startx

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#  XKB_DEFAULT_LAYOUT=us exec sway
#fi 
