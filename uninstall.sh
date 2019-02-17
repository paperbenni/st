#!/bin/bash
git clone https://git.suckless.org/st st
cd st
make
sudo make uninstall
cd ..
