#!/usr/bin/bash
# SPDX-License-Identifier: MIT

# requires https://github.com/kagof/pixel-perfect-svg

origin=$1/map.txt

if [ ! -z "$2" ]; then
  sed -nE '/'"$2"'/s@^(\S+) (\S+)$@psvg -i '$(dirname $origin)'/\2.png -o emojis/emoji_u\1.svg@pe' $origin
  exit 0
fi

sed -nE 's@^(\S+) (\S+)$@psvg -i '$(dirname $origin)'/\2.png -o emojis/emoji_u\1.svg@pe' $origin
