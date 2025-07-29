#!/bin/sh
echo "[launch.sh started]" >> ~/zlog

export XDG_RUNTIME_DIR=/run/user/$(id -u)
export XDG_CONFIG_HOME=/home/samjackson/.config
mkdir -p "$XDG_RUNTIME_DIR"
# clearing socket for dwlb
rm -f "$XDG_RUNTIME_DIR/dwlb/dwlb-0"
# because it annoys me when i reboot and tmux is in
# session number 9000
tmux kill-server
echo "[starting dbus-run-session and dwl]"
# this is specific to my utm setup
export WLR_NO_HARDWARE_CURSORS=1
exec dbus-run-session -- dwl -s ~/.config/dwl/autostart.sh >> ~/zlog 2>&1
#~/scripts/dwlbstatus.sh &
