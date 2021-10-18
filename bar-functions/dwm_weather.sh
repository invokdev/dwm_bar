#! /bin/sh

# DWM weather status

dwm_weather() {
    LOCATION=Atlanta
    weather=$(curl -s wttr.in/$LOCATION?format=1 | grep -o ".[0-9].*")
    icon=""
    printf "%s%s %s%s" "$SEP1" "$icon" "$weather" "$SEP2"
  }

dwm_weather
