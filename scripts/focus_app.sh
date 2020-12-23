#!/bin/bash

declare -A appmap
appmap["- GoLand"]=goland
appmap["Google Chrome"]="google-chrome-stable --ignore-certificate-errors"
appmap["- WebStorm"]=webstorm
appmap["Terminal:"]=gnome-terminal
appmap["Sublime Text"]=sublime-text

wmctrl -a "$1"
if [[ $? -ne 0 ]]; then
  ${appmap[$1]}
fi
