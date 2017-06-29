################################################################################
# Project name   :
# File name      : passwd_enter.sh
# Created date   : Tue 21 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Tue 21 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash
#hiding input data from the monitor
passwd=nothing

read -s -p "Enter your password: " pass
echo

if ($pass = $passwd)
then
	echo "Welcome!"
else
	echo "Wrong password."
fi

