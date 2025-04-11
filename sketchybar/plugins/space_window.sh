#!/bin/sh

if [ "$SENDER" = "space_windows_change" ]; then
  sid="$(echo "$INFO" | jq -r '.space')"
  apps="$(aerospace list-windows --workspace $sid | cut -d '|' -f 2 | uniq)"

  app_icons=""
  if [ "${apps}" != "" ]; then
    while read -r app; do
      app_icons+=" $($CONFIG_DIR/plugins/icon_mapping.sh "${app}")"
    done <<< "${apps}"
  fi

  sketchybar --set space.$sid label="$app_icons"
fi
