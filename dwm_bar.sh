#! /bin/bash

# Status bar for DWM
# Kevin Dempsey - InvokDEV
# GNU GPLv3

# Dependencies: xorg-xsetroot

# Import function with "$include /route/to/module"

# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

export IDENTIFIER="unicode"

export SEP1="["
export SEP2="]"

# Import modules

. "$DIR/bar-functions/dwm_alsa.sh"
. "$DIR/bar-functions/dwm_battery.sh"
. "$DIR/bar-functions/dwm_battery2.sh"
. "$DIR/bar-functions/dwm_cpu.sh"
. "$DIR/bar-functions/dwm_disk.sh"
. "$DIR/bar-functions/dwm_dte.sh"
. "$DIR/bar-functions/dwm_net.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_ram.sh"
. "$DIR/bar-functions/dwm_spotify.sh"
. "$DIR/bar-functions/dwm_temp.sh"
. "$DIR/bar-functions/dwm_weather.sh"
. "$DIR/bar-functions/dwm_wifi.sh"

# Append bar functions 

while true 
do
  upperbar=""
  upperbar="$upperbar$(dwm_ram)"
  upperbar="$upperbar$(dwm_disk)"
  upperbar="$upperbar$(dwm_cpu)"
  upperbar="$upperbar$(dwm_temp)"
  upperbar="$upperbar$(dwm_net)"
  upperbar="$upperbar$(dwm_weather)"
  upperbar="$upperbar$(dwm_dte)"

# Append Lower bar
  
  lowerbar=""
  

  xsetroot -name "$upperbar"

  sleep 5s
done
