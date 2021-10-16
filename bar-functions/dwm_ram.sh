#! /bin/bash

# Simple bash script for RAM usage

dwm_ram () {
  mem=$(free -h --kilo | awk '/^Mem:/ {print $3 "/" $2}')
  echo -e ": $mem"
}

dwm_ram
