#!/bin/bash

# Prompt for password using ssh-askpass
password=$(ssh-askpass "Enter your password to shutdown:")

# Check if password was provided
if [ -z "$password" ]; then
  notify-send "Shutdown cancelled" "No password entered."
  exit 1
fi

# Verify password by attempting a sudo command
echo "$password" | sudo -S -k true 2>/dev/null

# Check if sudo command was successful
if [ $? -eq 0 ]; then
  # Password correct, initiate shutdown
  systemctl poweroff
else
  # Password incorrect, show error
  notify-send "Shutdown failed" "Incorrect password."
  exit 1
fi
