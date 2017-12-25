# -----------------------------------------------------------------------------
# Project name   :
# File name      : backup.sh
# Created date   : Dec 25 2017
# Author         : Huy-Hung Ho
# Last modified  : Dec 25 2017 14:09
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

cp -R ~/.git* ./git/
cp -R ~/.bashrc ./bash/.bashrc
cp -R ~/.vimrc ./vim/.vimrc
cp -R ~/.vim/* ./vim/
