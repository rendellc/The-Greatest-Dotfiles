#!/bin/bash -x
sudo update-alternatives --set x-terminal-emulator /usr/bin/uxterm

# Merge in Xresouces
SHDIR=$(realpath $(dirname $0))
XRESDIR=$SHDIR/../configs

# Find and "backup" system xresources
xrdb -merge $XRESDIR/Xresources.uxterm
xrdb -merge $XRESDIR/Xresources.molokai

xrdb -edit ~/.Xresources
