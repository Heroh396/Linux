################################################################################
# Project name   :
# File name      : Test/test4.sh
# Created date   : Tue 21 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Tue 21 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash

list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" H3"

for state in $list
do
	echo "Have you ever visited $state?"
done
