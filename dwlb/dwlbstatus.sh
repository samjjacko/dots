#!/bin/sh
SOCKET="$XDG_RUNTIME_DIR/dwlb/dwlb-0"

while :; do 
  TIME=$(date '+%H:%M')
  CPU_RAM=$(echo "CPU $(LC_ALL=C top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\([0-9.]*\)%* id.*/\1/' | awk '{print 100 - $1}')% RAM $(free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }') HDD $(df -h / | awk '/\// {print $(NF-1)}')")
  STATUS="$TIME | $CPU_RAM"
  echo "status all $STATUS" | socat - UNIX-CONNECT:$SOCKET
  sleep 300
done 
