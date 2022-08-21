#!/usr/bin/zsh
img="/home/warley/Pictures/Wallpapers/distraction_focus.png"
current=`autorandr --current` 
autorandr --load main

i3-msg restart
feh --bg-center $img

# Keyboard layout -- is there another way?
# sudo udevadm control --reload-rules
