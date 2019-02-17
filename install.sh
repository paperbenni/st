#!/bin/bash

if ! git --version; then
  echo "please install git"
  exit
fi

if ! wget --version; then
  echo "you need wget"
  exit
fi

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/todylu/monaco.ttf/raw/master/monaco.ttf
cd ~

rm -rf st
git clone https://git.suckless.org/st st
cd st
make
rm config.h
wget https://raw.githubusercontent.com/paperbenni/suckless-terminal/master/config.h
make
sudo make install
cd ~
rm -rf st
