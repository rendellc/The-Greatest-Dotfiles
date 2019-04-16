#!/bin/bash
sudo update-alternatives --set x-terminal-emulator /usr/bin/uxterm

# Merge in Xresouces
SHDIR=$(realpath $(dirname $0))

XRESOURCES="Xresources Xresources.molokai"
for file in $XRESOURCES
do
  xrdb -merge $SHDIR/../configs/$file
done

