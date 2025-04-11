#!/bin/sh

media_props=(
    label.color=$WHITE
    label.max_chars=20
    icon=􀊕
    icon.color=$WHITE
    icon.padding_left=0
    scroll_texts=on
    background.drawing=off
    script="$PLUGIN_DIR/media.sh"
    click_script="$PLUGIN_DIR/media_click.sh"
)
sketchybar --add item media right \
           --subscribe media media_change \
           --set media "$media_props[@]"
