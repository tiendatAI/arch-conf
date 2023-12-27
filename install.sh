#!/usr/bin/bash

# This script will install this following packages:
# nix
# astro nvim(for chad)
# doom emacs (for better chad)
# nerd fonts
#
# desktop apps:
# +office
# +spotify
# +discord

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



#INSTALL NECESSARY PACKAGES 

# following this link to install nix :
# https://nixos.org/download
# https://nix-community.github.io/home-manager/index.html#sec-install-standalone

#some good fonts
#yay -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
#yay -S ttf-intel-one-mono ttf-nerd-fonts-symbols


# nvim
# ############ astro nvim ############
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim


############ doom emacs ############
safe_install "emacs: better text editor" "emacs" "yay -S emacs-nativecomp"
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install


############ desktop apps ############
safe_install "discord" "discord" "yay -S discord"
safe_install "wl-gammarelay night light" "wl-gammarelay " "yay -S wl-gammarelay"


