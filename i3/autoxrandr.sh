#!/bin/bash

for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
    if [[ $output =~ ^eDP.*$ ]]; then
            lvds=$output
    fi
done

monitor=$lvds
for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
    if [[ ! $output =~ ^eDP.*$ ]]; then
       xrandr --output $lvds --off --output $output --primary
       monitor=$output
    fi

done 

echo $monitor
MONITOR=$monitor $HOME/.config/i3/polybar.sh &

