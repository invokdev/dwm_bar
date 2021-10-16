#! /bin/bash

# Bash script for wifi connection
# Dependencies: NetworkManager

dwm_wifi () {
  wifi=$(nmcli dev wifi | grep -E '^[*]' | awk '/*/ {print $3}')
  echo -e ": $wifi"
}

dwm_wifi
