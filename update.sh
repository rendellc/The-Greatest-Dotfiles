#!/bin/bash -x
SHDIR=$(realpath $(dirname $0))

ln -sf $SHDIR/configs/vimrc $HOME/\.vimrc
$SHDIR/scripts/dotfiles.sh
$SHDIR/scripts/uxterm.sh

