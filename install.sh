#!/usr/bin/bash

# This script will install this following packages:
# nix
# nvimchad (for chad)
# zellij
# nushell
# ranger -> or joshuto
# nerd fonts
# catppuncin
# And reconfig starship
#
# desktop apps:
# +pdfviewer
# +office
# +spotify
# +discord
#
# Add more some shell tools:
# bat
# fd
# zoxide
# zellij
# atuin
# ripgrep
#
#
# Add more binding for non-laptop keyboards  
# volume
# brighness
# nightlight


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
#yay -S ttf-sourcecodepro-nerd


# nvim
safe_install "neovim: text editor" "nvim" "yay -S neovim"
# echo 'aslias vim=nvim' >> ~/.bashrc

# ############ nvchad ############
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

# echo "def vim [] { nvim }" >> ~/.config/nushell/config.nu


############ nushell ############
safe_install "nushell" "nu" "yay -S nushell"

# startup with terminal
startup_nu='
if command -v nu &> /dev/null; then
  exec nu
fi
'
# Uncomment to startup with nushell
echo "$startup_nu" >> ~/.bashrc


############ catppuccin ############
#uncomment to coppy config file
#starship
git clone https://github.com/catppuccin/starship.git temp
cd ./temp/ && cp ./starship.toml ~/.config/ && cd ../
rm -rf temp


############ desktop apps ############
safe_install "pdf viewer" "evince" "yay -S evince"
safe_install "discord" "discord" "yay -S discord"
safe_install "spotify" "spotify" "yay -S spotify"
safe_install "wl-gammarelay night light" "wl-gammarelay " "yay -S wl-gammarelay"


############ shell tools ############
safe_install "bat : alternative of cat" "bat" "yay -S bat"
safe_install "fd: alternative of find" "fd" "yay -S fd"
safe_install "zoxide: alternative of cd" "z" "yay -S zoxide"
safe_install "zellij: alternative of tmux" "zellij" "yay -S zellij"
safe_install "joshuto: terminal file manager" "joshuto" "yay -S joshuto"
safe_install "ripgrep: recursively searches directories" "rg" "yay -S ripgrep"
# safe_install "atuin: shell history" "" "yay -S atuin"
safe_install "exa: A modern replacement for ls" "exa" "yay -S exa"
safe_install "fuck: corrects your previous console command" "fuck" "yay -S thefuck"
safe_install "dust: A more intuitive version of du in rust" "dust" "yay -S dust"
safe_install "Ag: A code-searching tool similar to ack, but faster" "ag" "yay -S the_silver_searcher"
safe_install "tldr: Collaborative cheatsheets for console commands" "tldr" "yay -S tldr"


############ wallpaper ############
cp ./v3-background-dark.jpg ~/.config/HyprV/backgrounds/


############ reconfig hyprland ############
# uncomment this to use fullscreen feature
cp ./hyprland/hyprland.conf ~/.config/hypr/


#requirement steps
# uncomment for coppy config file
cp ./home-manager/nushell/config.nu ~/.config/nushell
cp ./home-manager/bash/.bashrc ~/


# Great power comes great responsibility
############ nix ############
# safe_install "nix packkage manager" "nix" "sh <(curl -L https://nixos.org/nix/install) --daemon"

# #install home-manager(23.11)
# nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
# nix-channel --update

# nix-shell '<home-manager>' -A install

# and following this turorial to enable home-manager:
# https://nix-community.github.io/home-manager/index.html#sec-flakes-standalone

# copy file config
# cp -r ./home-manager/* ~/.config/home-manager/
