############ coppy config file l############
echo "You should init some apps and move to next step"

# doom emacs
# run this to prevent broken icon
# M-x nerd-icons-install-fonts
cp -r ./doom/ ~/.config/ 


# requirement step for zoxide
echo "zoxide init nushell | save -f ~/.zoxide.nu" >> ~/.config/nushell/env.nu


# #requirement step for atuin
mkdir ~/.local/share/atuin/
atuin init nu | save ~/.local/share/atuin/init.nu


############ wallpaper ############
cp ./v3-background-dark.jpg ~/.config/HyprV/backgrounds/


############ reconfig hyprland ############
# uncomment this to use fullscreen feature
cp ./hyprland/hyprland.conf ~/.config/hypr/


############# reconfig zellij ############
cp -r ./zellij/ ~/.config/


############# reconfig kitty ############
cp -r ./kitty ~/.config/


#requirement steps
# uncomment for coppy config file
cp ./home-manager/nushell/config.nu ~/.config/nushell
cp ./home-manager/bash/.bashrc ~/

#nvim config
cp -r ./nvim/lua/custom ~/.config/nvim/lua/

# spelling
mkdir -p ~/Library/Spelling/  
cp ./dicts/en_US/* ~/Library/Spelling

#SUDO
# firefox config
sudo cp -r ./firefox/ /etc/

# sync clock
timedatectl set-local-rtc 1 --adjust-system-clock
