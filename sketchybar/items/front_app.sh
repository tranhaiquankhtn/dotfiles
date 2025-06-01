#!/bin/sh

front_app=(
    label.font="$FONT:Heavy:13.0"
    icon.background.drawing=on
    display=active
    icon.color=$WHITE
    icon.font="sketchybar-app-font:Regular:14"
    script="$PLUGIN_DIR/front_app.sh"
)
sketchybar --add item front_app left         \
           --set front_app "${front_app[@]}" \
           --subscribe front_app front_app_switched
