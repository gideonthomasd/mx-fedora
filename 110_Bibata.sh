#!/bin/bash

mkdir -p ~/.icons
mkdir -p ~/.themes

cp -r Bibata-Modern-Ice ~/.icons/Bibata-Modern-Ice
# sudo cp -r Bibata-Modern-Ice /usr/share/icons

echo "May need to change /home/phil/.config/gtk-3.0/settings.ini"
echo " and /home/phil/.icons/default/index.theme"
# May need to change /home/phil/.config/gtk-3.0/settings.ini

# and /home/phil/.icons/default/index.theme

tar -xzvf candy-icons.tar.gz
tar -xzvf Dracula.tar.gz
tar -xzvf Sweet-Dark.tar.gz


cp -r candy-icons ~/.icons/candy-icons
cp -r Dracula ~/.themes/Dracula
cp -r Sweet-Dark ~/.themes/Sweet-Dark

mkdir -p ~/.local/share/rofi/themes
cd rofithemes
cp -r * ~/.local/share/rofi/themes
cd ..

cp Xresources ~/.Xresources
cp timidity.cfg ~/timidity.cfg

unzip kora-1-6-0.zip
cp -r kora ~/.icons
