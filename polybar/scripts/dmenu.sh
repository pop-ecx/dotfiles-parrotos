#!/bin/bash

action=$(zenity --list --title="Power Options" --text="Select an action:" --column="Action" "Shutdown" "Restart" "Lock Screen" --width=300 --height=200)

if [ -z "$action" ]; then
  notify-send "No action selected" "Power menu cancelled."
  exit 1
fi

case "$action" in
  "Shutdown")
    password=$(ssh-askpass "Enter your password to shutdown:")
    
    if [ -z "$password" ]; then
      notify-send "Shutdown cancelled" "No password entered."
      exit 1
    fi
    
    echo "$password" | sudo -S -k true 2>/dev/null
    
    if [ $? -eq 0 ]; then
      systemctl poweroff
    else
      notify-send "Shutdown failed" "Incorrect password."
      exit 1
    fi
    ;;
  "Restart")
    password=$(ssh-askpass "Enter your password to restart:")
    
    if [ -z "$password" ]; then
      notify-send "Restart cancelled" "No password entered."
      exit 1
    fi
    
    echo "$password" | sudo -S -k true 2>/dev/null
    
    if [ $? -eq 0 ]; then
      systemctl reboot
    else
      notify-send "Restart failed" "Incorrect password."
      exit 1
    fi
    ;;
  "Lock Screen")
    i3lock-fancy
    notify-send "Screen locked" "The session has been locked."
    ;;
esac
