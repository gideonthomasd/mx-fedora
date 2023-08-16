#!/bin/bash

# options to be displayed
option0=" logout"
option1=" lock"
option2=" suspend"
option3=" scheduled suspend (10min)"
option4=" scheduled suspend (20min)"
option5=" scheduled suspend (30min)"
option6=" reboot"
option7="⏻ shutdown"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7"

chosen="$(echo -e "$options" | rofi -lines 8 -dmenu -p "power" -font "JetBrainsMono Nerd Font 23")"
case $chosen in
    $option0)
		#i3-msg exit;;
		pkill chadwm || pkill dwm || pkill i3 || pkill bspwm || pkill openbox || pkill herbstluftwm || pkill awesome || pkill qtile || pkill python;;
    $option1)
        i3lock -i ~/.config/arco-chadwm/wallpaper/chadwm1.png;;
    $option2)
        systemctl suspend;;
	$option3)
		sleep 600 && systemctl suspend;;
	$option4)
		sleep 1200 && systemctl suspend;;
	$option5)
		sleep 1800 && systemctl suspend;;
    $option6)
		systemctl reboot;;
		#loginctl reboot;;
        #sudo reboot;;
	$option7)
		systemctl poweroff;;
		#loginctl poweroff;;
        #sudo poweroff;;
esac
