# -----------------------------------------------------------------------------
# Project name   :
# File name      : convert_unix_coding.sh
# Created date   : Dec 14 2017
# Author         : Huy-Hung Ho
# Last modified  : Dec 14 2017 10:10
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

for file in $(ls *vhd)
do 
  vi +':w ++ff=unix' +':q' ${file}
done
