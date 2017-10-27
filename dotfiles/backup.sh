# -----------------------------------------------------------------------------
# Project name   :
# File name      : backup.sh
# Created date   : Sat 07 Oct 2017 09:23:30 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Sat 07 Oct 2017 09:23:30 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

git pull origin master
while read f; do
    echo "Backup file $f..."
    cp -rf $HOME/$f ./
done < Dotfiles
echo "Backup files done, please commit!"

git add . -A
git commit -m "Backup at $(date)"
git push origin master
