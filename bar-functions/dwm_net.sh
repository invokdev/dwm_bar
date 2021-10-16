#! /bin/bash

# Bash script to show download and upload speed

netup () {
  up=$(ifconfig eno1 | grep "TX packets" | awk {'print $6 $7'})
  echo -e ": $up"
}

netdown () {
  down=$(ifconfig eno1 | grep "RX packets" | awk {'print $6 $7'})
  echo -e ": $down"
}

dwm_net () {
  echo -e "$SEP $(netup) | $(netdown)"
}

dwm_net
