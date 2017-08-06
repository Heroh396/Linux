################################################################################
# Project name   :
# File name      : test.sh
# Created date   : Fri 10 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Fri 10 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash

case $USER in
	h3 | root)
		echo "Hi H3! How are you today, sir?";;
	tester)
		echo "Special testing account";;
	*)
		echo "Sorry, you are not allowed here";;
esac
