#! /bin/bash

# Bash script for checking CPU temperature

# Dependencies: N/A

dwm_temp () {
  temp=$(($(cat /sys/class/thermal/thermal_zone2/temp) / 1000))
  echo -e "$SEP : $temp°C"
}

dwm_temp
