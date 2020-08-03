# Toggle Window
This script sets the active window when first run as the target window, all subsequent times it
runs it will minimize/open the target window. Useful when called with a keyboard shortcut.

## Instillation
`git clone https://github.com/joshpetit/toggle-window.git`
`cd toggle-window`
`chmod +x togglewindow`

## Running
`. /path/to/dir/togglewindow` or `source /path/to/dir/togglewindow`

Note that this will not work by running it with `./togglewindow`. This will run it in a
subprocess and not allow the window ID to be saved globally.

I recommend going to your settings and adding a keyboard shortcut to run the script.
