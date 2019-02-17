#!/bin/bash

if ! git --version; then
    echo "please install git"
    exit
fi

git clone https://git.suckless.org/st st
cd st
make
rm config.h
cp ../config.h .
make
if apt .--version
then
apt-get download stterm
mv *.dpkg stterm.dpkg



fi