#!/usr/bin/zsh
mon0="DP-2"
mon1="HDMI-0"
mode="1920x1080"
img="~/Images/Pessoas/RAW/1.jpg"

# This is a fix to the screen problem I have 
xrandr --output $mon1 --off
xrandr --auto

# This is just setting up a second monitor
xrandr --output $mon0 --output $mon1 --auto --right-of $mon0
i3-msg restart
#feh --bg-center $img
