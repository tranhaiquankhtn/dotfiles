#!/bin/sh

battery_props=(
    padding_right=5
    padding_left=0
    update_freq=120
    updates=on
    script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right \
           --set battery "${battery_props[@]}" \
           --subscribe battery system_woke power_source_change


