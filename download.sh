#!/bin/bash
set -e

echo "Download Notion version $2 installer for $1 platform"

# Notion Windows installer
if [ "$1" == win ]; then
  FILE_NAME="Notion%20Setup%20$2.exe"
  EXT=exe
fi

# Notion macOS installer
if [ "$1" == mac ]; then
  FILE_NAME="Notion%20Setup%20$2.exe"
  EXT=dmg
fi

wget "https://desktop-release.notion-static.com/$FILE_NAME" -O notion.$EXT
