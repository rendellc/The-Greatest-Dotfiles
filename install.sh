#!/bin/bash

# TODO: do this with a glob: needs to avoid .git/ .. . .gitignore
DOTFILES="tmux.conf vimrc"

for file in $DOTFILES
do
	echo "linking $file to $HOME"
	ln -sf $file $HOME/.$file
done
