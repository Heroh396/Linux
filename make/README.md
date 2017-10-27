<!---
/*******************************************************************************
// Project name   :
// File name      : README.md
// Created date   : Sun 06 Aug 2017 11:15:36 PM ICT
// Author         : Huy-Hung Ho
// Last modified  : Sun 06 Aug 2017 11:15:36 PM ICT
// Desc           :
*******************************************************************************/
-->

# Data

* [tutorialspoint](https://www.tutorialspoint.com/makefile/makefile_macros.htm)

* [Makefile tut](https://www.cs.umd.edu/class/fall2002/cmsc214/Tutorial/makefile.html)

* [makefile vi](https://tritran.xyz/posts/makefile-co-ban/)

* [Makefile vn](https://eslinuxprogramming.blogspot.com/2015/04/gnu-make.html)

# Features

$\* vs $@: "$\* is a single string, whereas $@ is an actual array"

- > ./test.sh one two "three four"

- Using "$\*":
	+ one two three four

- Using $\*:
	+ one
	+ two
	+ three
	+ four

- Using "$@":
	+ one
	+ two
	+ three four

- Using $@:
	+ one
	+ two
	+ three
	+ four

- ./test.sh 1 2 3
	+ $# = number of arguments. 		Answer is 3
	+ $@ = what parameters were passed. Answer is 1 2 3
	+ $? = was last command successful. Answer is 0 which means 'yes'


