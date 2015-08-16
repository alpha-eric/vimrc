#!/bin/sh

PWD=$(pwd)
ln -sf $(PWD)/.vimrc ~/.vimrc
ln -sf $(PWD)/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc +BundleInstall! +BundleClean +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh
