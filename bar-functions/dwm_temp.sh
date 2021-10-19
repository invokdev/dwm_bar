#! /bin/sh

dwm_temp () {
  temp=$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))
  csym="°C"
  icon1=""
  icon2=" "
  icon3=""
  printf "%s" "$SEP1"
  if [ "$temp" -gt 0 ] && [ "$temp" -le 55 ]; then
    printf "%s %s%s" "$icon1" "$temp" "$csym"
  elif [ "$temp" -gt 55 ] && [ "$temp" -le 85 ]; then  
    printf "%s %s%s" "$icon2" "$temp" "$csym"
  else 
    printf "%s %s%s" "$icon3" "$temp" "$csym" 
  fi
  printf "%s" "$SEP2"
}

dwm_temp
