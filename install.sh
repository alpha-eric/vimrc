#!/bin/sh

ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.inputrc ~/.inputrc
ln -sf $(pwd)/.bash_profile ~/.bash_profile
ln -sf $(pwd)/.kermrc ~/.kermrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
# folder
ln -sf $(pwd)/.vim ~/
ln -sf $(pwd)/.ssh ~/
ln -sf $(pwd)/.config ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -u ~/.vimrc +BundleInstall! +BundleClean +qall
sh ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
echo "snippet pri\n\Tab print("${1}") into python.snippets"
echo "inromap <Tab> -> <C-n>"
