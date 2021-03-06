#!/bin/bash
function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
$HOME/.config/polybar/launch.sh &
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
bsp-layout set tall I
bsp-layout set monocle V
blueberry-tray &
picom --config $HOME/.config/picom/picom.conf &
wal -R &
$HOME/.scripts/reload_dunst.sh &