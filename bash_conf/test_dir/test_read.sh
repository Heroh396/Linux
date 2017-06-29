################################################################################
# Project name   :
# File name      : /test_read.sh
# Created date   : Tue 21 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Tue 21 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash
#timming the data entry

if read -t 5 -p "Please enter your name?" name
then
	echo "Hello $name, welcome to my script."
else
	echo
	echo "Sorry, too slow!"
fi
