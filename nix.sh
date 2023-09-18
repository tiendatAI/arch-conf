#!/usr/bin/bash

# function to install almost packages
safe_install() {
  local pkg=$1
  local checking_cmd=$2
  local install_cmd=$3

  echo "checking $pkg be installed..."
  # if ! [[ $? -eq 0 ]]; then
  if ! [[ $(which $checking_cmd) > /dev/null ]]; then 
     echo "installing $pkg ..."
     eval "$install_cmd"
  fi
}


# Great power comes great responsibility
############ nix ############
safe_install "nix packkage manager" "nix" "sh <(curl -L https://nixos.org/nix/install) --daemon"

#install home-manager(23.11)
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install

# and following this turorial to enable home-manager:
# https://nix-community.github.io/home-manager/index.html#sec-flakes-standalone
nix run --extra-experimental-features "nix-command flakes" home-manager/master -- init --switch

# copy file config
cp -r ./home-manager/* ~/.config/home-manager/
home-manager switch

# Add flake and nix-command in config
sudo echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf
