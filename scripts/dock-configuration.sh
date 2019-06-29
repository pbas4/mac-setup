#!/bin/sh

# Confirm dockutil is installed
if test ! $(which dockutil); then
  echo "Installing dockutil..."
  if test ! $(which brew); then
    echo "Installing homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  brew install dockutil
fi

# Apps to add to Dock
APPS=(
  SPACER
  1Password\ 7
  Mail
  Calendar
  Notes
  SPACER
  WhatsApp
  Spotify
  Google\ Chrome
  SPACER
  Visual\ Studio\ Code
  SourceTree
  iTerm
  SPACER
  Sketch
  Adobe\ Lightroom\ Classic\ CC/Adobe\ Lightroom\ Classic\ CC
  Adobe\ Photoshop\ CC\ 2018/Adobe\ Photoshop\ CC\ 2018
  SPACER
)

# Folders to add to the Dock
FOLDERS=(
  Desktop
  Downloads
)

# Empty dock
dockutil --remove all

# Loop over APPS and add them to the Dock or add a SPACER
for ((i = 0; i < ${#APPS[@]}; i++))
do
  if [[ "${APPS[$i]}" == SPACER ]]; then
    dockutil --add '' --type spacer --section apps
  else
    dockutil --add /Applications/"${APPS[$i]}".app
  fi
done

# Loop over FOLDERS and add them to the Dock
for ((i = 0; i < ${#FOLDERS[@]}; i++))
do
  dockutil --add ~/"${FOLDERS[$i]}" --view grid --display folder
done

# Restart Dock
killall Dock
