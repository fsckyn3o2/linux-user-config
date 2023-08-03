#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 20 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

# Select wallpaper
wallpaperId=`cat $HOME/.cache/sunpaper_cache.wallpaper`
if [[ -z "$wallpaperId" ]]; then
  swaylock -e -f -c 550000 -C $HOME/.config/sway/swaylock.conf
else
  wallpaperPath="$HOME/.config/sway/wallpaper/sunpaper/images/$wallpaperName/$wallpaperId.jpg"
  swaylock -e -f -c 550000 -C $HOME/.config/sway/swaylock.conf -i $wallpaperPath
fi


# Kills last background task so idle timer doesn't keep running
kill %%

