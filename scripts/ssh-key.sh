#!/bin/sh

if [[ ! -e ~/.ssh ]]; then
  ssh-keygen -t rsa -f ~/.ssh/id_rsa -q -P ""
else 
  echo "Existing ssh key found, skipping..."
fi
