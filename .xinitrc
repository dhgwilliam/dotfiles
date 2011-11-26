#!/usr/bin/env bash
# /home/david/.dropbox-dist/dropboxd &
#urxvtc -e screen -R -d &
#xcompmgr -c -t-5 -l-5 -r4.2 -o.55 &

gsynaptics-init &
urxvtd -q -o -f &
wicd-client &
export DISPLAY=:0.0 &
xsetroot -cursor_name left_ptr &
volwheel &
amixer set Headphone 100% &
amixer set Speaker 100% &
xrdb ~/.Xdefaults &
sudo /usr/bin/scrobby &
halevt &
/opt/dropbox/dropbox &
eval `ssh-agent` &
xflux -z 11211 &
gnome-power-manager &
xmodmap ~/.speedswapper &
exec ck-launch-session /usr/bin/awesome
