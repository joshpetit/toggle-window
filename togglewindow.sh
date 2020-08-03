#!/bin/bash
if ! command -v xdotool &> /dev/null
then
    notify-send -h int:transient:1 "Toggle Window" "Please install xdotool"
    exit
fi

function checkID {
  windowID=$(printf 0x%x "$TOGGLE_WINDOW_A")
  presence=$(xwininfo -root -tree | grep "$windowID")
  echo "$presence"
}

if [[ -z "$TOGGLE_WINDOW_A" ]];
then
  value="$(xdotool getactivewindow)"
  export TOGGLE_WINDOW_A=$value
  echo "$TOGGLE_WINDOW_A"
  notify-send -h int:transient:1 "Toggle Window" "Window Set"
elif [[ $(checkID) = "" ]]
then
    value="$(xdotool getactivewindow)"
    export TOGGLE_WINDOW_A=$value
    echo "$TOGGLE_WINDOW_A"
    notify-send -h int:transient:1 "Toggle Window" "Window Reset"
else
  xdotool windowactivate "$TOGGLE_WINDOW_A"
  echo "Window Activate Ran"
fi
