export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH

# start X server
[ -z "$DISPLAY" -a "$(fgconsole)" -eq 1 ] && exec startx

#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#    XKB_DEFAULT_LAYOUT=us QT_WAYLAND_FORCE_DPI=physical GDK_BACKEND=wayland QT_QPA_PLATFORM=wayland-egl CLUTTER_BACKEND=wayland SDL_VIDEODRIVER=wayland BEMENU_BACKEND=wayland GTK_IM_MODULE=wayland exec sway
#fi 

