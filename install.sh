#!/bin/sh

# Check for Homebrew, install if not existing
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew and recipes
brew update

echo "Setting correct permissions on folders that brew needs acccess to."
sudo chown -R `whoami`:admin /usr/local/bin
sudo chown -R `whoami`:admin /usr/local/share


echo "Running scripts..."

source "./scripts/applications.sh"
source "./scripts/ssh-key.sh"
source "./scripts/szh.sh"
source "./scripts/system-preferences.sh"
source "./scripts/dock-configuration.sh"
source "./scripts/iterm-configuration.sh"
source "./scripts/vs-code-configuration.sh"

echo "All scripts done! :)"

killall Finder

echo "Congratulations :) Setup done!"
