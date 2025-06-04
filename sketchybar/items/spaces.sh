#!/bin/sh

for m in $(aerospace list-workspaces --monitor all | awk '{print $1}'); do
    for i in $(aerospace list-workspaces --monitor $m); do
        sid=$i
        space=(
            space="$sid"
            icon="$sid"
            icon.color=$GREY
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

        apps=$(aerospace list-windows --workspace $sid | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}' | uniq)

        icon_strip=" "
        if [ "${apps}" != "" ]; then
        while read -r app
        do
            icon_strip+=" $($CONFIG_DIR/plugins/icon_mapping.sh "$app")"
        done <<< "${apps}"
        else
        icon_strip=" —"
        fi

        sketchybar --set space.$sid label="$icon_strip"
    done

    for i in $(aerospace list-workspaces --monitor $m --empty); do
        sketchybar --set space.$i display=0
    done
done

separator=(
  icon="|"
  icon.font="$FONT:Heavy:16.0"
  padding_left=15
  padding_right=15
  display=active
  label.drawing=off
  associated_display=active
  icon.color=$GREY
  script="$PLUGIN_DIR/space_window.sh"
)

sketchybar --add item separator left           \
           --set separator "${separator[@]}"   \
           --subscribe separator aerospace_workspace_change

