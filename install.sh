# -----------------------------------------------------------------------------
# Project name   :
# File name      : install_vim.sh
# Created date   : Nov 25 2017
# Author         : Huy-Hung Ho
# Last modified  : Nov 25 2017 16:45
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

cp -R ./git/.gitconfig ~

mv ~/.vim ~/.vim.backup
mkdir -p ~/.vim
cp -R ./vim/* ~/.vim

mv ~/.bashrc ~/.bashrc.backup
mv ~/.vimrc ~/.vimrc.backup
cp -R ./bash/.bashrc ~/.bashrc
cp -R ./vim/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

vim +slient +PlugInstall +qall
