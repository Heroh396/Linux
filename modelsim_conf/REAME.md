<!---
/*******************************************************************************
// Project name   :
// File name      : REAME.md
// Created date   : Fri 19 May 2017
// Author         : Huy Hung Ho
// Last modified  : Fri 19 May 2017
// Desc           :
*******************************************************************************/
-->
Introduction
============
Vsim - a tool for compile and simulation HDL code

Features
========
#Compile
    vlib my_lib
    vmap work $PWD/my_lib
    mkdir vhd -- for store src
    vcom -check_synthesis vhd/*.vhd     - */
    vmake my_lib > Makefile

#Simulation
    vsim mylib.lock (or vsim &)
    view objects
    view source
    view wave -undock

    add wave *

Requirements
============
http://www.tkt.cs.tut.fi/tools/public/tutorials/mentor/modelsim/getting_started/gsms.html

