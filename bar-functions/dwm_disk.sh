#! /bin/bash

# Bash script to display home disk usage

dwm_disk () {
  disk=$(df -Ph | grep "/dev/root" | awk {'print $5'})
  echo -e ": $disk"
}

dwm_disk
