#!/bin/sh

source "$CONFIG_DIR/colors.sh"

reload_workspace_windows() {
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

reload_workspace() {
    for m in $(aerospace list-workspaces --monitor all | awk '{print $1}'); do
        for i in $(aerospace list-workspaces --monitor $m); do
            sid=$i
            space=(
                space="$sid"
                icon="$sid"
                icon.highlight_color=$WHITE
                icon.padding_left=5
                icon.padding_right=5
                display=$m
                label.padding_right=20
                label.color=$GREY
                label.highlight_color=$WHITE
                label.font="sketchybar-app-font:Regular:16.0"
                label.y_offset=-1
                background.color=$BACKGROUND_1
                background.border_color=$BACKGROUND_2
                padding_left=2
                padding_right=2
                click_script="aerospace workspace $sid"
                script="$PLUGIN_DIR/spaces.sh"
            )

            sketchybar --add space space.$sid left \
                    --set space.$sid "${space[@]}" \
                    --subscribe space.$sid mouse.clicked

            reload_workspace_windows $sid

        done

        for i in $(aerospace list-workspaces --monitor $m --empty); do
            sketchybar --set space.$i display=0
        done
    done
}


if [ "$SENDER" = "aerospace_workspace_change" ]; then
  reload_workspace
  # reload_workspace_apps "$AEROSPACE_PREV_WORKSPACE"
  # reload_workspace_apps "$AEROSPACE_FOCUSED_WORKSPACE"

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
