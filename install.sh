#!/bin/bash

sudo systemctl --global disable wireplumber.service
sudo systemctl --global disable pipewire.service

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

sudo pacman -S --needed --noconfirm hyprland pulseaudio cliphist dunst noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-dejavu ttf-liberation polkit-kde-agent qt5-wayland qt6-wayland waybar fastfetch pamixer qt5-quickcontrols2 qt5-graphicaleffects hyprpaper rofi udiskie blueman thunar imv cmatrix ttf-jetbrains-mono-nerd ttf-fira-sans ttf-fira-mono bleachbit grim slurp kitty gtk3 zip unzip

yay -S --needed --noconfirm wlogout cava hyprpicker waypaper-git

cp ~/dots/.bashrc ~/
cp -R ~/dots/.config/cava ~/.config/
cp -R ~/dots/.config/dunst ~/.config/
cp -R ~/dots/.config/fastfetch ~/.config/
cp -R ~/dots/.config/hypr ~/.config/
cp -R ~/dots/.config/kitty ~/.config/
cp -R ~/dots/.config/rofi ~/.config/
cp -R ~/dots/.config/waybar ~/.config/
cp -R ~/dots/.config/wlogout ~/.config/
cp -R ~/dots/.config/gtk-3.0 ~/.config/
cp -R ~/dots/.config/waypaper ~/.config/
cp -R ~/dots/Images ~/
sudo mv ~/dots/Tokyonight-Dark-B-LB /usr/share/themes

echo "Installation complete. Remember to configure hyprland.conf as needed."
