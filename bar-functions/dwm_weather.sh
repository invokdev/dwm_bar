#! /bin/bash

# DWM weather status

dwm_weather() {
    LOCATION=Atlanta
    weather=$(curl -s wttr.in/$LOCATION?format=1 | grep -o ".[0-9].*")
    echo -e "$SEP : $weather"
  }

dwm_weather
