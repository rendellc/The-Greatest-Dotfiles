#!/bin/bash

# TODO: do this with a glob: needs to avoid .git/ .. . .gitignore
DOTFILES=.tmux.conf .vimrc 

echo "Copying $DOTFILES to $HOME"

cp $DOTFILES $HOME
