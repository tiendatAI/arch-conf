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


############ reconfig hyprland ############
# uncomment this to use fullscreen feature
cp ./hyprland/hyprland.conf ~/.config/hypr/


#requirement steps
# uncomment for coppy config file
cp ./home-manager/nushell/config.nu ~/.config/nushell
cp ./home-manager/bash/.bashrc ~/

# spelling
mkdir -p ~/Library/Spelling/  
cp ./dicts/en_US/* ~/Library/Spelling

#SUDO
# firefox config
sudo cp -r ./firefox/ /etc/

