#!/bin/bash -x
sudo update-alternatives --set x-terminal-emulator /usr/bin/uxterm

# Merge in Xresouces
SHDIR=$(realpath $(dirname $0))
XRESDIR=$SHDIR/../configs

xrdb $XRESDIR/Xresources
xrdb -merge $XRESDIR/Xresources.molokai

