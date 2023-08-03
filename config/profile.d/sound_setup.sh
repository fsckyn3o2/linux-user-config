#!/bin/bash
echo "<< SOUND SETUP >>"

pactl set-sink-volume @DEFAULT_SINK@ 15%
pactl set-sink-mute @DEFAULT_SINK@ 0
pactl set-source-volume @DEFAULT_SOURCE@ 0%
pactl set-source-mute @DEFAULT_SOURCE@ 1

