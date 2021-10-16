#! /bin/bash

# Bash script for battery percentage.
# Dependencies: acpi 

dwm_battery () {
  batt=$(acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi')
  echo -e ": $batt%"
}

dwm_battery

