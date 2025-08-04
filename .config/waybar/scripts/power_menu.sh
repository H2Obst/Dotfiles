#!/bin/bash

CHOICE=$(printf " Shutdown\n Reboot\n󰗽 Logout" | rofi -dmenu -p "Power")

echo $CHOICE

case "$CHOICE" in
  " Shutdown")
    systemctl poweroff
    ;;
  " Reboot")
    systemctl reboot
    ;;
  "󰗽 Logout")
    hyprctl dispatch exit
    ;;
esac
