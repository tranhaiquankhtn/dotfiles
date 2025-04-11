#!/bin/sh

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀫥  \
                      script="$CONFIG_DIR/plugins/cpu.sh"
