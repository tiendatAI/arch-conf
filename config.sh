############ coppy config file l############
echo "You should init some apps and move to next step"

# emacs
# run this to prevent broken icon
# M-x nerd-icons-install-fonts

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

# firefox config
sudo cp -r ./firefox/ /etc/

# nyxt config (from the other)
git clone https://github.com/aartaka/nyxt-config ~/.config/nyxt/ 
cd ~/.config/nyxt/nyxt-config/ | cp -r ./* ../
git clone https://github.com/aartaka/nx-dark-reader.git ~/.local/share/nyxt/extensions/nx-dark-reader

