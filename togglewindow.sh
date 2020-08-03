#!/bin/bash
if ! command -v xdotool &> /dev/null
then
    notify-send -h int:transient:1 "Toggle Window" "Please install xdotool"
    exit
fi

function check_id {
  windowID=$(printf 0x%x "$TOGGLE_WINDOW_A")
  presence=$(xwininfo -root -tree | grep "$windowID")
  echo "$presence"
}

if [[ -z "$TOGGLE_WINDOW_A" ]];
then
  value="$(xdotool getactivewindow)"
  export TOGGLE_WINDOW_A=$value
  notify-send -h int:transient:1 "Toggle Window" "Window Set"
elif [[ $(check_id) = "" ]]
then
    value="$(xdotool getactivewindow)"
    export TOGGLE_WINDOW_A=$value
    notify-send -h int:transient:1 "Toggle Window" "Window Reset"
elif [[ $TOGGLE_WINDOW_A = $(xdotool getactivewindow) ]]
then
  xdotool windowminimize $TOGGLE_WINDOW_A
else
  xdotool windowactivate "$TOGGLE_WINDOW_A"
fi
