#! /bin/sh

# A bash script to show CPU usage.

dwm_cpu () {
    cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
    icon=""
    printf "%s%s %s%s"  "$SEP1" "$icon" "$cpu" "$SEP2" 
  }

dwm_cpu 
