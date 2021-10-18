#! /bin/sh

# Bash script to show download and upload speed

dwm_net () {
  up=$(ifconfig eno1 | grep "TX packets" | awk {'print $6 $7'})
  down=$(ifconfig eno1 | grep "RX packets" | awk {'print $6 $7'})
  icon1=""
  icon2=""
  printf "%s%s%s %s%s%s" "$SEP1" "$icon1" "$up" "$icon2" "$down" "$SEP2"
}

dwm_net
