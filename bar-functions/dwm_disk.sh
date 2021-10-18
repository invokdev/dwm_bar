#! /bin/bash

# Bash script to display home disk usage

dwm_disk () {
  disk=$(df -Ph | grep "/dev/root" | awk {'print $5'})
  icon=""
  printf "%s%s %s%s" "$SEP1" "$icon" "$disk" "$SEP2"
}

dwm_disk
