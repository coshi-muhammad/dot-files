#!/bin/zsh


APP=$1


if pgrep -x "$APP" > /dev/null; then 
  notify-send "$APP disabled"
  pkill -x "$APP"
else 
  notify-send "$APP enabled"
  $APP & 
fi
