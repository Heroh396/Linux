################################################################################
# Project name   :
# File name      : Push_git.sh
# Created date   : Sat 11 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Thu 27 Jul 2017 10:14:34 PM ICT
# Guide          :
###############################################################################
#!/bin/bash

git add $1
git commit -m "Edit $(basename $1)"
git push origin master

