#!/bin/bash

declare -A appmap
appmap["- GoLand"]=goland
appmap["Google Chrome"]=google-chrome-stable
appmap["- WebStorm"]=webstorm
appmap["Terminal:"]=gnome-terminal

wmctrl -a "$1"
if [[ $? -ne 0 ]]; then
  ${appmap[$1]}
fi
