#!/bin/sh

BREWAPPS=(
  dockutil # Dock utilities
  git
  node
  # yarn
  zsh
  nvm
)

CASKAPPS=(
  alfred
  adobe-creative-cloud
  dropbox
  docker
  firefox
  flux
  google-chrome
  hyper
  insomnia
  iterm2
  notion
  sketch
  slack
  sourcetree
  spectacle
  sequel-pro
  spotify
  stack
  the-unarchiver
  time-out
  typora
  vanilla
  visual-studio-code
  vlc
  whatsapp
)

MASAPPS=(
  937984704 # Amphetamine
  497799835 # XCode
)

for ((i = 0; i < ${#BREWAPPS[@]}; i++))
do
  echo "installing ${BREWAPPS[$i]}..." | tee -a $logFile
  brew install "${BREWAPPS[$i]}"
done

for ((i = 0; i < ${#CASKAPPS[@]}; i++))
do
  echo "installing ${CASKAPPS[$i]}..." | tee -a $logFile
  brew cask install "${CASKAPPS[$i]}"
done

for ((i = 0; i < ${#MASAPPS[@]}; i++))
do
  mas install "${MASAPPS[$i]}"
done
