#! /bin/sh

# Bash script for battery percentage.
# Dependencies: acpi 

dwm_battery () {
  batt=$(acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi')
  icon=""
  printf "%s%s %s%s" "$SEP1" "$icon" "$batt" "$SEP2"
}

dwm_battery

