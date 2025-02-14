#!/bin/bash
my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')

if [[ $my_laptop_external_monitor = *connected* ]]; then
    xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal \
           --output HDMI-1 --mode 1920x1080 --same-as eDP-1
fi
