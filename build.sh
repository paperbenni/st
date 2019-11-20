#!/bin/bash

THEME=./themes/${1:-dracula}.theme

replacetheme() {
    themecolor=$(grep "$1" <$THEME | head -1)
    #echo "'s~.*'"$1"'.*~'"$themecolor"'~'"
    sed -i 's~.*'"$1"'.*~'"${themecolor/\*/\\\*}"'~' config.def.h
}

for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 256 257; do
    echo "$i"
    replacetheme '\['"$i"'\].*= "#'
done

replacetheme 'r \*font'

[ -z "$2" ] || exit
make clean
rm config.h &>/dev/null
make
sudo make install
