#!/usr/bin/env bash
# gnome-do --quiet &
# /home/david/.dropbox-dist/dropboxd &
# nautilus -n &
sleep 20s && . /home/david/.dbus_session &
urxvtd -q -f -o &
xset b off &
urxvtc -e screen -R -D &
nitrogen --restore &
exec /usr/local/bin/awesome
