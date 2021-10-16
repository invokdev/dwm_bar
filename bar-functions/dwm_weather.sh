#! /bin/bash

# A simple function to print weather 

# Dependencies: curl

dwm_weather() {
    LOCATION=Atlanta
    weather=$(curl -s wttr.in/$LOCATION?format=1 | grep -o ".[0-9].*")
    echo -e ": $weather"
  }

dwm_weather
