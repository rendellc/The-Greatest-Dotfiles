#!/bin/bash


install_vim()
{
  pushd .
  cd $HOME
  git clone https://github.com/vim/vim.git
  cd vim
  ./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-cscope \
    --prefix=/usr/local

  make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
  sudo make install
  popd
}

sudo apt remove -y vim vim-runtime 
sudo apt remove -y vim-tiny vim-common vim-gui-common vim-nox

install_vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

