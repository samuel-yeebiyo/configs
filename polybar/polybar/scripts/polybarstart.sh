#!/bin/bash

#terminate other instances
killall -q polybar

#wait until shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1;done

#Launch bar
polybar -r example &
