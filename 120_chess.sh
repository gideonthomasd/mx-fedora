#!/bin/bash

#sudo bash -c "$(curl -fsSL https://git.io/JsADh || wget -q https://git.io/JsADh -O -)"

#pacstall -I balena-etcher-deb
#pacstall -I pycharm-community-bin
#pacstall -I nerd-fonts-jetbrains-mono
#pacstall -I zoom-deb

#sudo apt install python3-tk python3-pil python3-pil.imagetk sqlitebrowser python3-pip -y
#sudo apt install scid stockfish -y

sudo dnf install stockfish -y

sudo dnf copr enable jeckersb/scid_vs_pc 
sudo dnf install scid_vs_pc -y

echo "Install balena-etcher & pycharm via appimage.  See installed Pycharm in ~/.local/share/applications"
