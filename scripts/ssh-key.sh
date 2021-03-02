#!/bin/sh
echo "Running ssh-key.sh..."

if [[ ! -e ~/.ssh ]]; then
  echo "Creating an SSH key for you..."
  ssh-keygen -t rsa
else 
  echo "Existing ssh key found, skipping..."
fi

# Github config
echo "Please add this public key to Github \n"
echo "https://github.com/account/ssh \n"
read -p "Press [Enter] key after this..."
