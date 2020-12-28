#!/bin/bash

# options to be displayed
option0="screen"
option1="area"
option2="window"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -theme arc-red-dark -lines 3 -dmenu -p "scrot")"
case $selected in
    $option0)
        cd ~/Images/Screenshots/ && sleep 1 && scrot;;
    $option1)
        cd ~/Images/Screenshots/ && scrot -s;;
    $option2)
        cd ~/Images/Screenshots/ && sleep 1 && scrot -u;;
esac
