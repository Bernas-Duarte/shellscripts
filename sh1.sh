#!/bin/bash
echo Installing Yay
# pacman -S git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo Updating Packages
# pacman -Syyu
echo Installing Dependencies
# yay -S spicetify-cli btop fish neofetch kitty polybar rofi picom-pijulius-git stalonetray polybar-spotify-module lxappearance-gtk3 nitrogen nautilus xdo spotify discord-canary dunst
echo Installing and configuring Dotfiles
cd ..
git clone https://github.com/Dueel/dotfiles.git -b catppuccin-bspwm
cd dotfiles
mv ~/.config/polybar/ ~/.config/polybar.old/
mv ~/.config/rofi/ ~/.config/rofi.old/
mv ~/.config/bspwm/ ~/.config/bspwm.old/
mv ~/.config/sxhkd/ ~/.config/sxhkd.old/
mv ~/.config/neofetch/ ~/.config/neofetch.old/
mv ~/.config/kitty/ ~/.config/kitty.old/
cp -r .config/* ~/.config/
cp -r .local/* ~/.local/
cp -r .stalonetrayrc /home/$USER/
echo Ending Installation
#pacman -Syyu
startx