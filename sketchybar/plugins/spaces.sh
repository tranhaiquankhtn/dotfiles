#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
source "$CONFIG_DIR/colors.sh" # Loads all defined colors

# sketchybar --set $NAME icon.highlight=$SELECTED

active=(
    background.drawing=on
    background.color=$WHITE
    background.border_color=$SPACE_BORDER
    background.border_width=1
    icon.color=$HIGHLIGHT_COLOR
    label.color=$HIGHLIGHT_COLOR
)

inactive=(
    background.drawing=off
    icon.color=$IN_ACTIVE_COLOR
    label.color=$IN_ACTIVE_COLOR
)


if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME "${active[@]}"
else
    sketchybar --set $NAME "${inactive[@]}"
fi
