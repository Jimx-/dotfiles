#!/bin/bash

for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
    if [[ $output =~ ^eDP.*$ ]]; then
            lvds=$output
            monitor=$output
    fi
done
for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
    if [[ ! $output =~ ^eDP.*$ ]]; then
       xrandr --output $lvds --off --output $output --primary

        if [[ $monitor =~ ^eDP.*$ ]]; then
            monitor=$output
        fi
    fi
done

if [[ $monitor =~ ^eDP.*$ ]]; then
    bar_height=28
    radius=6.0
    dpi=140
    tray_size=28

    echo "Xft.dpi: 140" | xrdb -merge
    echo "Xcursor.size: 32" | xrdb -override
else
    bar_height=20
    radius=4.0
    dpi=96
    tray_size=16
    monitor="DP-1"
fi

wal -sR

MONITOR=$monitor BAR_HEIGHT=$bar_height BAR_RADIUS=$radius DPI=$dpi TRAY_SIZE=$tray_size $HOME/.config/i3/polybar.sh &

~/.config/i3/wallpaper.sh &
