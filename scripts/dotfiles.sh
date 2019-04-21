#!/bin/bash 
SHDIR=$(realpath $(dirname $0))
CONFDIR=$(realpath $SHDIR/../configs)

DOTFILES="tmux.conf vimrc"
for file in $DOTFILES
do
	ln -sf $CONFDIR/$file $HOME/\.$file
done

