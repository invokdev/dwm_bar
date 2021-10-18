#! /bin/bash

dwm_dte () {
  date="$(date +'%a %b %d %H:%M')"
  icon=""
  printf "%s%s %s%s" "$SEP1" "$icon" "$date" "$SEP2"
  }

dwm_dte
