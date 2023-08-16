#!/bin/bash

#mocp -Q %file | sed 's/\//\n/g' | sed '$!d' | awk '$1>0 {print substr($1,1,6)}'
#echo $this

case $BLOCK_BUTTON in
	#3) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" ;;
	3) setsid -f lxterminal -e 'padsp mocp' ;;
	#1) setsid -f lxterminal -e 'mocp -G' ;;
	1) mocp -G ;;
	#2) notify-send "🧠 Memory module" "\- Shows Memory Used/Total.
#- Click to show memory hogs.
#- Middle click to open htop." ;;
	#6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac



icon=""
this=""
state=" "
state=$(mocp -Q %state 2>/dev/null)
#echo $state
state=$state"f"
#echo $state
if [ $state == "PLAYf" ]; then
	icon=" "
	this=$(mocp -Q %file 2>/dev/null | sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g'| awk '$1>0 {print substr($1,1,10)}')
	this=$this".."
elif [ $state == "PAUSEf" ]; then
	icon=" "
	this=$(mocp -Q %file 2>/dev/null| sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g'| awk '$1>0 {print substr($1,1,10)}')
	this=$this".."
else
	icon=" "
	this="[STOP]"
fi

#this=$this | sed '$!d'
echo $icon$this
