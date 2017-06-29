################################################################################
# Project name   :
# File name      : yesno_testdrive.sh
# Created date   : Tue 21 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Tue 21 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash
# getting just one character of input

read -n1 -p "Do you want to continue [Y/N]? " answer

case $answer in
	Y | y) echo
		echo "fine, continue on...";;
	N | n) echo
		echo OK, goodbye
	exit;;
esac

echo "This is the end of the script"


