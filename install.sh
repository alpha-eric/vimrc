#!/bin/sh

ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.vim ~/.vim
ln -sf $(pwd)/.inputrc ~/.inputrc
ln -sf $(pwd)/.bash_profile ~/.bash_profile
ln -sf $(pwd)/.kermrc ~/.kermrc
ln -sf $(pwd)/.ssh ~/.ssh
ln -sf $(pwd)/.gitconfig ~/.gitconfig
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc +BundleInstall! +BundleClean +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh
