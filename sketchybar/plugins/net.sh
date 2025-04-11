#!/bin/sh

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/resources.sh"
# When switching between devices, it's possible to get hit with multiple
# concurrent events, some of which may occur before `scutil` picks up the
# changes, resulting in race conditions.

sleep 1

services=$(networksetup -listnetworkserviceorder)
device=$(scutil --nwi | sed -n "s/.*Network interfaces: \([^,]*\).*/\1/p")

test -n "$device" && service=$(echo "$services" \
  | sed -n "s/.*Hardware Port: \([^,]*\), Device: $device.*/\1/p")

color=$WHITE
case $service in
  "iPhone USB")         icon=$NET_USB;;
  "Thunderbolt Bridge") icon=$NET_THUNDERBOLT;;

  Wi-Fi)
    ssid=$(ipconfig getsummary "$device" | grep ' SSID : ' | awk -F ': ' '{print $2}')
    case $ssid in
      *thaiquan-phone*) icon=$NET_HOTSPOT;;
      "")       icon=$NET_DISCONNECTED; color=$INACTIVE_ICON_COLOR;;
      *)        icon=$NET_WIFI;;
    esac;;

  *)
    wifi_device=$(echo "$services" \
      | sed -n "s/.*Hardware Port: Wi-Fi, Device: \([^\)]*\).*/\1/p")
    test -n "$wifi_device" && status=$( \
      networksetup -getairportpower "$wifi_device" | awk '{print $NF}')
    icon=$(test "$status" = On && echo "$NET_WIFI" || echo "$NET_OFF")
    color=$WHITE;;
esac

sketchybar --animate sin 5 --set "$NAME" icon="$icon" icon.color="$color"

