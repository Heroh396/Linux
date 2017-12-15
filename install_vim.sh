# -----------------------------------------------------------------------------
# Project name   :
# File name      : install_vim.sh
# Created date   : Nov 25 2017
# Author         : Huy-Hung Ho
# Last modified  : Nov 25 2017 16:45
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

mv ~/.vim ~/.vim.backup
mkdir -p ~/.vim
cp -R ./vim/* ~/.vim

mv ~/.vimrc ~/.vimrc.backup
mv ./vim/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

cp ~/.bashrc ~/.bashrc.backup
vim +slient +PlugInstall +qall
