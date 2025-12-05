#!/usr/bin/env bash

class=$(playerctl metadata --format "{{lc(status)}}")
play_icon=""
pause_icon=""

if  [[ $class == "playing" ]]; then
    info=$(playerctl metadata --format "{{title}}")
    if [[ ${#info} > 40 ]]; then
	info=$(echo $info | cut -c1-40)"..."
    fi
    text=$pause_icon" "$info
elif [[ $class == "paused" ]]; then
    text=$play_icon
elif [[ $class == "stopped" ]]; then
    text=""
fi


echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
