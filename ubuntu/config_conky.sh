# -----------------------------------------------------------------------------
# Project name   :
# File name      : Linux/ubuntu/config_conky.sh
# Created date   : Mon 09 Oct 2017 04:07:23 PM ICT
# Author         : Huy-Hung Ho
# Last modified  : Mon 09 Oct 2017 04:07:23 PM ICT
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/sh

gcalcli --conky calw 1 |
    sed -e 's/(0\x71(B/─/g' \
        -e 's/(0\x78(B/│/g' \
        -e 's/(0\x6A(B/┘/g' \
        -e 's/(0\x6B(B/┐/g' \
        -e 's/(0\x6C(B/┌/g' \
        -e 's/(0\x6D(B/└/g' \
        -e 's/(0\x6E(B/┼/g' \
        -e 's/(0\x74(B/├/g' \
        -e 's/(0\x75(B/┤/g' \
        -e 's/(0\x76(B/┴/g' \
        -e 's/(0\x77(B/┬/g'

