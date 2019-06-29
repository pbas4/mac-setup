#!/bin/sh

BREWAPPS=(
  dockutil
  git
  node
  yarn
  zsh
)

CASKAPPS=(
  1password
  adobe-creative-cloud
  boom-3d
  dropbox
  firefox
  flux
  google-chrome
  iterm2
  sketch
  slack
  sourcetree
  spectacle
  spotify
  stack
  typora
  visual-studio-code
  whatsapp
)

MASAPPS=(
  937984704
  405772121
  1278508951
  497799835
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
