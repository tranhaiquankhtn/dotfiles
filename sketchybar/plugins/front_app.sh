#!/bin/sh

# if [ "$SENDER" = "front_app_switched" ]; then
#     sketchybar --set "$NAME" label="$INFO" icon="$($CONFIG_DIR/plugins/icon_mapping.sh "$INFO")"
# fi

FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO" icon.background.image="app.$INFO" icon.background.image.scale=0.8

  apps=$(aerospace list-windows --workspace $FOCUSED_WORKSPACE | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}' | uniq)
  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app
    do
      icon_strip+=" $($CONFIG_DIR/plugins/icon_mapping.sh "$app")"
    done <<< "${apps}"
  else
    icon_strip=" —"
  fi
  sketchybar --set space.$FOCUSED_WORKSPACE label="$icon_strip"
fi
