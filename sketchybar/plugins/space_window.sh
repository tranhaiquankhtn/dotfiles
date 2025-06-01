#!/bin/sh

source "$CONFIG_DIR/colors.sh"

reload_workspace_apps() {
  apps="$(aerospace list-windows --workspace "$@" | cut -d '|' -f 2 | uniq)"

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app
    do
      icon_strip+=" $($CONFIG_DIR/plugins/icon_mapping.sh "$app")"
    done <<< "${apps}"
  else
    icon_strip=" —"
  fi

  sketchybar --set space.$@ label="$icon_strip"
}

if [ "$SENDER" = "aerospace_workspace_change" ]; then
  reload_workspace_apps "$AEROSPACE_PREV_WORKSPACE"
  reload_workspace_apps "$AEROSPACE_FOCUSED_WORKSPACE"

  active=(
    icon.highlight=true
    label.highlight=true
    background.border_width=1
    background.border_color=$WHITE
  )

  inactive=(
    icon.highlight=false
    label.highlight=false
    background.border_color=$BACKGROUND_2
  )

  sketchybar --set space.$AEROSPACE_FOCUSED_WORKSPACE \
                            "${active[@]}"

  sketchybar --set space.$AEROSPACE_PREV_WORKSPACE \
                            "${inactive[@]}"
fi
