#! /bin/sh

# Bash script for checking CPU temperature

# Dependencies: N/A

dwm_temp () {
  temp=$(($(cat /sys/class/thermal/thermal_zone2/temp) / 1000))
  icon=""
  csym="°C"
  printf "%s%s %s%s%s" "$SEP1" "$icon" "$temp" "$csym" "$SEP2"
}

dwm_temp
