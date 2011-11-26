#!/usr/bin/env bash

wicd &
xrdb ~/.Xdefaults &
eval `ssh-agent` &
gnome-power-manager &
xmodmap ~/.speedswapper &
exec /usr/bin/awesome
