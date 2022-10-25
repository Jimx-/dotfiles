#!/bin/bash
shopt -s nullglob
 
cd ~/Pictures/wallpapers/

while true; do
	sleep 15m
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}
	# ((range)) && feh --bg-scale "${files[RANDOM % range]}"
    ((range)) && wal --backend colorz -s -i "${files[RANDOM % range]}"
done

