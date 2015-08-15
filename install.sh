#!/bin/sh

cp .vimrc ~/.vimrc
cp -rf .vim ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc +BundleInstall! +BundleClean +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh
