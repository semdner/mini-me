#!/bin/bash

source menu_controls.lib

BOLDWHITE="\033[1;37m"
GREEN="\033[0;32m"
RESET="\033[0m"

ifnames=($(ls /sys/class/net))
declare ifname
declare mode
declare essid
declare bssid
declare channel

# check if script is run as root
if [ "$EUID" -ne 0 ]
then
    echo "Please run as root"
    exit 1
fi

main_menu