################################################################################
# Project name   :
# File name      : test.sh
# Created date   : Fri 10 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Fri 10 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash

name=h3

if [[ $name = $USER ]]
then
	echo "This is my laptop."
else
	echo "Whose is this laptop?"
fi
