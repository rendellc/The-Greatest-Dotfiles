#!/bin/bash -x
SHDIR=$(realpath $(dirname $0))

DOTFILES="tmux.conf vimrc"
for file in $DOTFILES
do
	ln -sf $SHDIR/$file $HOME/\.$file
done

