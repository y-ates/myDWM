#!/bin/sh
#setxkbmap -option terminate:ctrl_alt_bksp
#conky -x 0 -y 0 -d


while true 
do
    xsetroot -name  "$(date +"%a %b %d %r")"
    sleep 1s
done &

(/home/yakup/Dokumente/Skripte/detect_screens.sh) &
#feh --bg-scale /home/yakup/Bilder/black_red_gent.jpg
(google-chrome) &
(emacs) &
(thunderbird) &
(clementine) &

(xscreensaver -no-splash) &
(xfce4-power-manager) &
(nm-applet) &
(start-pulseaudio-x11) &
(xfce4-volumed) &

exec dwm

