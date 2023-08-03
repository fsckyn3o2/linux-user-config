#!/bin/bash

pkill dunst
systemctl --user import-environment DISPLAY

line=$( ps aux | grep -e "dunst$")
if [ -z "$line" ]; then
  echo "dunst restarted manually"
  dunst 2>&1 & > /dev/null
else
  echo "dunst restarted automatically"
fi


