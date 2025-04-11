#!/bin/sh
sketchybar --add item net right                  \
           --set net script="$PLUGIN_DIR/net.sh" \
                     updates=on                  \
                     label.drawing=off           \
           --subscribe net wifi_change
