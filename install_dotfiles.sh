#!/bin/bash

# TODO: do this with a glob: needs to avoid .git/ .. . .gitignore
DOTFILES="tmux.conf vimrc Xdefaults"
SHDIR=$(realpath $(dirname $0))

for file in $DOTFILES
do
	echo "linking $file to $HOME"
	ln -sf $SHDIR/$file $HOME/\.$file
done
