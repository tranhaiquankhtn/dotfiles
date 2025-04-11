#!/bin/sh

for sid in $(aerospace list-workspaces --monitor all); do
    space_props=(
        icon=$sid
        icon.padding_left=3
        icon.padding_right=3
        icon.highlight_color=$RED
        # associated_space=$sid
        label.font="sketchybar-app-font:Regular:16.0"
        label.padding_right=10
        label.background.height=20
        label.background.drawing=on
        # label.background.color=$BACKGROUND_2
        label.background.corner_radius=8
        background.drawing=off
        padding_left=2
        padding_right=2
        click_script="aerospace workspace $sid"
        script="$CONFIG_DIR/plugins/spaces.sh $sid"
    )

    sketchybar --add item space.$sid left                       \
               --subscribe space.$sid aerospace_workspace_change \
               --set space.$sid "${space_props[@]}"

done

spaces=(
  background.color=$BACKGROUND_1
  background.border_color=$SPACE_BORDER
  background.border_width=1
  background.drawing=on
)

separator=(
  icon="|"
  icon.font="$FONT:Heavy:16.0"
  padding_left=15
  padding_right=15
  label.drawing=off
  associated_display=active
  icon.color=$WHITE
  script="$CONFIG_DIR/plugins/space_window.sh"
  # click_script='yabai -m space --create && sketchybar --trigger space_change'
)

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces "${spaces[@]}"        \
                                              \
           --add item separator left          \
           --set separator "${separator[@]}"  \
                                              \
           --subscribe separator space_windows_change
