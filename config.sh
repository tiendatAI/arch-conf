############ coppy config file l############
echo "You should init some apps and move to next step"

# doom emacs
# run this to prevent broken icon
# M-x nerd-icons-install-fonts
cp -r ./doom/ ~/.config/ 


# requirement step for zoxide
echo "zoxide init nushell | save -f ~/.zoxide.nu" >> ~/.config/nushell/env.nu


#requirement step for atuin
mkdir ~/.local/share/atuin/
atuin init nu | save ~/.local/share/atuin/init.nu


# rebiding keys
cp -r ./dotfiles/ ~/

#requirement steps
cp -r ./home-manager/ ~/.config/

# spelling
mkdir ~/Library/Spelling/  
cp ./dicts/en_US/* ~/Library/Spelling

#SUDO
# firefox config
sudo cp -r ./firefox/ /etc/
# Use this extension for uBlock origin
# https://christitus.com/remove-youtube-shorts/

# enable bluetooth
# sudo systemctl start bluetooth

