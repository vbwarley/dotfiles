grep -rh Exec /etc/xdg/autostart | while read -r line ; do 
   ${line:5} &
done
