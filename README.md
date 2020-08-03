# Toggle Window
This script sets the active window when first run as the target window, all subsequent times it
runs it will minimize/open the target window. Useful when called with a keyboard shortcut.

## Instillation
`git clone https://github.com/joshpetit/toggle-window.git`
`cd toggle-window`
`chmod +x togglewindow rmwindows`

## Running
`./path/to/dir/togglewindow`

When the window closes the next time you run the script it will select that currently active window.
To manually reset run
`./path/to/dir/rmwindows`.

I recommend adding a keyboard shortcut to run both scripts.

## TODO
- Shift towards GNOME extension
- Allow for multiple window shortcuts
