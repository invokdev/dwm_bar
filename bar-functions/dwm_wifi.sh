#! /bin/sh

# Bash script for wifi connection
# Dependencies: NetworkManager

dwm_wifi () {
  wifi=$(nmcli dev wifi | grep -E '^[*]' | awk '/*/ {print $3}')
  icon=""
  printf "%s%s %s%s" "$SEP1" "$icon" "$wifi" "$SEP2"
}

dwm_wifi
