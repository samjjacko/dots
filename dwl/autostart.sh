#!/bin/sh

# wait for dwl to start up and support wlr-output-management
until wlr-randr --json >/dev/null 2>&1; do
	sleep 0.1
done

# set display resolution and wallpaper service
# if you'd like to get the name of your active display, run:
# wlr-randr | grep -m 1 "" | awk -F ' ' '{ print $1 }
wlr-randr --output Virtual-1 --mode 1920x1080
swww-daemon &
swww img ~/wallpaper/Gp2_V-zXUAAsKLO.png --resize fit

# start audio services
pipewire &
pipewire-pulse &
wireplumber &

# startup ui and apps
foot &
#~/scripts/dwlbstatus.sh &
# using my own fork of dwlb here to fix syntax for socket commands
# if you'd like to use the original dwlb, just swap the "status" and 
# "all" around in ~/scripts/dwlbstatus.sh
dwlb -target-socket "$XDG_RUNTIME_DIR/dwlb/dwlb-0" -ipc & 
./scripts/dwlbstatus.sh &
