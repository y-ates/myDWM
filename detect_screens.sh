#!/bin/sh


vga=$(xrandr | grep "VGA1 connected")
lvds=$(xrandr | grep "LVDS1 connected")

if [ ! -z "$vga" ]; then
	if [ ! -z "$lvds" ]; then
		xrandr --output VGA1 --auto --left-of LVDS1
		xrandr --output LVDS1 --mode 1366x768
		#		xrandr --output VGA1 --mode 1920x1080
		(nitrogen --restore) &
	fi
	
else
	xrandr --output LVDS1 --mode 1366x768
	feh --bg-scale /home/yakup/Bilder/black_red_gent.jpg
fi
