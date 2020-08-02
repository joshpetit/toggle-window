#!/bin/bash
if ! command -v xdotool &> /dev/null
then
    notify-send -h int:transient:1 "Toggle Window" "Please install xdotool"
    exit
fi
