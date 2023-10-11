#!/usr/bin/bash

# This script will install this following packages:
# nix
# astro nvim(for chad)
# doom emacs (for better chad)
# nerd fonts
# catppuncin
# And reconfig starship
#
# desktop apps:
# +office
# +spotify
# +discord
#
# Additional packages for emacs:
# cmake
# language-tools
# hunspell
# mpd
# mpc
#
# Add more some shell tools:
# bat 
# fd
# zoxide
# zellij
# ripgrep
# exa 
# fuck
# dust
# Ag
# tldr
#

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

#some good fonts
#yay -S noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
#yay -S ttf-intel-one-mono ttf-nerd-fonts-symbols
#yay -S ttf-ms-win11-auto


# nvim
safe_install "neovim: text editor" "nvim" "yay -S neovim"
# ############ astro nvim ############
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim


############ doom emacs ############
safe_install "emacs: better text editor" "emacs" "yay -S emacs-nativecomp"
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

############ nushell ############
safe_install "nushell" "nu" "yay -S nushell"


############ catppuccin ############
#uncomment to coppy config file
#starship
git clone https://github.com/catppuccin/starship.git temp
cd ./temp/ && cp ./starship.toml ~/.config/ && cd ../
rm -rf temp


############ additional packages ############
#for doom emacs 
safe_install "cmake" "cmake" "yay -S cmake"
safe_install "fzf" "fzf" "yay -S fzf"
safe_install "languagetool" "languagetool" "yay -S languagetool"
safe_install "hunspell" "hunspell" "yay -S hunspell"
safe_install "mpd" "mpd" "yay -S mpd"
safe_install "mpc" "mpc" "yay -S mpc"

# for astro nvim
safe_install "lazygit" "lazygit" "yay -S lazygit"
safe_install "gdu" "gdu" "yay -S gdu"
safe_install "bottom" "bottom" "yay -S bottom"


############ desktop apps ############
safe_install "libreoffice" "libreoffice" "yay -S libreoffice-still"
safe_install "discord" "discord" "yay -S discord"
safe_install "spotify" "spotify" "yay -S spotify"
safe_install "wl-gammarelay night light" "wl-gammarelay " "yay -S wl-gammarelay"


############ shell tools ############
safe_install "bat : alternative of cat" "bat" "yay -S bat"
safe_install "fd: alternative of find" "fd" "yay -S fd"
safe_install "zoxide: alternative of cd" "z" "yay -S zoxide"
safe_install "joshuto: terminal file manager" "joshuto" "yay -S joshuto"
safe_install "ripgrep: recursively searches directories" "rg" "yay -S ripgrep"
safe_install "exa: A modern replacement for ls" "exa" "yay -S exa"
safe_install "fuck: corrects your previous console command" "fuck" "yay -S thefuck"
safe_install "dust: A more intuitive version of du in rust" "dust" "yay -S dust"
safe_install "Ag: A code-searching tool similar to ack, but faster" "ag" "yay -S the_silver_searcher"
safe_install "tldr: Collaborative cheatsheets for console commands" "tldr" "yay -S tldr"
safe_install "atuin: history shell" "atuin" "yay -S atuin"


# following this link to install nix :
# https://nixos.org/download
# https://nix-community.github.io/home-manager/index.html#sec-install-standalone

