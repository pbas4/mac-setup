#!/bin/sh

BREWAPPS=(
  dockutil # Dock utilities
  git
  node
  # yarn
  zsh
)

CASKAPPS=(
  # adobe-creative-cloud
  boom-3d
  # dropbox
  firefox
  time-out
  # flux
  insomnia
  google-chrome
  iterm2
  # hyper
  # sketch
  slack
  sourcetree
  spectacle
  spotify
  stack
  # alfred
  docker
  # typora
  visual-studio-code
  # whatsapp
  notion
)

MASAPPS=(
  937984704 # Amphetamine
  497799835 # XCode
)

for ((i = 0; i < ${#BREWAPPS[@]}; i++))
do
  brew install "${BREWAPPS[$i]}"
done

for ((i = 0; i < ${#CASKAPPS[@]}; i++))
do
  brew cask install "${CASKAPPS[$i]}"
done

for ((i = 0; i < ${#MASAPPS[@]}; i++))
do
  mas install "${MASAPPS[$i]}"
done
