#! /bin/sh

dwm_volume () {
  vol=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
  icon1=""
  icon2=""
  icon3=""
  icon4=""
  printf "%s" "$SEP1"
  if [ "$vol" = 0 ]; then
    printf "%s %s" "$icon1" "MUTED"
  elif [ "$vol" -gt 0 ] && [ "$vol" -le 33 ]; then
    printf "%s %s" "$icon2" "$vol"
  elif [ "$vol" -gt 33 ] && [ "$vol" -le 66 ]; then
    printf "%s %s" "$icon3" "$vol"
  else 
    printf "%s %s" "$icon4" "$vol"
  fi
  printf "%s" "$SEP2"
}
dwm_volume
