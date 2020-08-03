#!/bin/bash
if ! command -v xdotool &> /dev/null
then
    notify-send -h int:transient:1 "Toggle Window" "Please install xdotool"
    exit
fi
echo TOGGLE_WINDOW_A

if [[ -z "$TOGGLE_WINDOW_A" ]];
then
  value="$(xdotool getactivewindow)"
  export TOGGLE_WINDOW_A=$value
  echo "$TOGGLE_WINDOW_A"
else
  xdotool windowactivate "$TOGGLE_WINDOW_A"
  echo "yoo"
fi
