#!/bin/bash 
SHDIR=$(realpath $(dirname $0))

DOTFILES="tmux.conf vimrc"
for file in $DOTFILES
do
	ln -sf $SHDIR/configs/$file $HOME/\.$file
done

