# -----------------------------------------------------------------------------
# Project name   :
# File name      : install_vim.sh
# Created date   : Nov 25 2017
# Author         : Huy-Hung Ho
# Last modified  : Nov 25 2017 16:45
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
cp ~/.vim ~/.vim.backup
mkdir -p ~/.vim
cp -R ./vim/* ~/.vim
mv ~/.vim/.vimrc ~/.vimrc
vim +PlugInstall +qall
