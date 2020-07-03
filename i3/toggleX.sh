#!/usr/bin/zsh
mon0="eDP-1-1"
mon1="HDMI-1-1"
mode="1360x768"
img="~/Images/Pessoas/RAW/1.jpg"
xrandr --output $mon0 --auto --output $mon1 --mode $mode --left-of $mon0
feh --bg-center $img
i3-msg restart
