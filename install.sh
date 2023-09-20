#!/usr/bin/bash

# This script will install this following packages:
# nix
# nvimchad (for chad)
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
# joshuto
# ripgrep
# exa 
# fuck
# dust
# Ag
# tldr
#
# Install config for firefox and cron

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
#yay -Syu noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
#yay -Syu ttf-sourcecodepro-nerd
#yay -Syu ttf-ms-win11-auto


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
safe_install "pdf viewer" "evince" "yay -Syu evince"
safe_install "libreoffice" "libreoffice" "yay -Syu libreoffice-still"
safe_install "discord" "discord" "yay -Syu discord"
safe_install "spotify" "spotify" "yay -Syu spotify"
safe_install "wl-gammarelay night light" "wl-gammarelay " "yay -Syu wl-gammarelay"


############ shell tools ############
safe_install "bat : alternative of cat" "bat" "yay -Syu bat"
safe_install "fd: alternative of find" "fd" "yay -Syu fd"
safe_install "zoxide: alternative of cd" "z" "yay -Syu zoxide"
safe_install "zellij: alternative of tmux" "zellij" "yay -Syu zellij"
safe_install "joshuto: terminal file manager" "joshuto" "yay -Syu joshuto"
safe_install "ripgrep: recursively searches directories" "rg" "yay -Syu ripgrep"
safe_install "exa: A modern replacement for ls" "exa" "yay -Syu exa"
safe_install "fuck: corrects your previous console command" "fuck" "yay -Syu thefuck"
safe_install "dust: A more intuitive version of du in rust" "dust" "yay -Syu dust"
safe_install "Ag: A code-searching tool similar to ack, but faster" "ag" "yay -Syu the_silver_searcher"
safe_install "tldr: Collaborative cheatsheets for console commands" "tldr" "yay -Syu tldr"
# safe_install "atuin: history shell" "atuin" "yay -Syu atuin"

# requirement step for zoxide
echo "zoxide init nushell | save -f ~/.zoxide.nu" >> ~/.config/nushell/env.nu

# #requirement step for atuin
# mkdir ~/.local/share/atuin/
# atuin init nu | save ~/.local/share/atuin/init.nu


############ wallpaper ############
cp ./v3-background-dark.jpg ~/.config/HyprV/backgrounds/


############ reconfig hyprland ############
# uncomment this to use fullscreen feature
cp ./hyprland/hyprland.conf ~/.config/hypr/


#requirement steps
# uncomment for coppy config file
cp ./home-manager/nushell/config.nu ~/.config/nushell
cp ./home-manager/bash/.bashrc ~/

#nvim config
cp -r ./nvim/lua/custom ~/.config/nvim/lua/
echo "$(./nvim/lua/echo_init.lua)" >> ~/.config/nvim/lua/plugins/init.lua

# firefox config
sudo cp -r ./firefox/ /etc/


