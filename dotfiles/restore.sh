# -----------------------------------------------------------------------------
# Project name   :
# File name      : !!FILE
# Created date   : !!DATE
# Author         : Huy-Hung Ho
# Last modified  : !!DATE
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

# Clone dotfiles in to workspace
mkdir -p $HOME
git clone https://github.com/[your_name]/dotfiles.git $HOME/workspace/dotfiles
cd $HOME/workspace/dotfiles

# Restore runtime config
while read f; do
    echo "Copying file $f..."
    cp -rf $f ~/
done < Dotfiles

echo "Restore dotfiles done!"

