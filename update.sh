#!/bin/bash -x
SHDIR=$(realpath $(dirname $0))

$SHDIR/scripts/dotfiles.sh
$SHDIR/scripts/uxterm.sh

rm -rf $HOME/\.config/i3
ln -sf $SHDIR/configs/i3 $HOME/\.config/i3
ln -sf $SHDIR/configs/i3blocks $HOME/\.config/i3blocks
ln -sf $SHDIR/configs/ranger $HOME/\.config/ranger
ln -sf $SHDIR/configs/tmuxinator $HOME/\.tmuxinator
