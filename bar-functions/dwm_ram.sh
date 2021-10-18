#! /bin/bash

# Simple bash script for RAM usage
dwm_ram () {
  mem=$(free -h --kilo | awk '/^Mem:/ {print $3 "/" $2}')
  icon=""
  printf "%s%s %s%s" "$SEP1" "$icon" "$mem" "$SEP2"
}

dwm_ram
