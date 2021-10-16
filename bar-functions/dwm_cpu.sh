#! /bin/bash

# A bash script to show CPU usage.

dwm_cpu () {
    cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
    echo -e ": $cpu"
  }

dwm_cpu 
