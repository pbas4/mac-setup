#!/bin/sh

# Check for Homebrew, install if not existing
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew and recipes
brew update

source "./scripts/applications.sh"
source "./scripts/ssh-key.sh"
source "./scripts/system-preferences.sh"
source "./scripts/dock-configuration.sh"
source "./scripts/iterm-configuration.sh"
source "./scripts/vs-code-configuration.sh"
