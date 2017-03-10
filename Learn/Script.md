<!---
/*******************************************************************************
// Project name   :
// File name      : Script.md
// Created date   : Fri 10 Mar 2017
// Author         : Huy Hung Ho
// Last modified  : Fri 10 Mar 2017
// Desc           :
*******************************************************************************/
-->
Introduction
============
Book: Linux Command Line and Shell Scripting BIBLE

Features
========
- Use piping process (pines)

- Performing Math
	expr 1 \* 5
	+ Using brackets:	var1=$[$var2 * 2]
	+ Using bc:
		bc -q
		scale = 4
		var = 3 / 4
		print var
	+ Best:
		variable=$(echo "options; expression" | bc)

		variable2=$(bc << EOF
		scale = 4
		a = b + c
		d = c + 3
		a + d
		EOF
		)

+ Return fuction:
	echo $?

+ IF:
	if <>
	then
	<>
	else (or elif <> then)
	<>
	fi

+ numeric comparisons in IF:
	if [ condition ]
	condition:	n1 -eq n2	(-eq, -ge, -gt, -le, -lt, -ne)
<!---hhh note: just integer numbers for comparison, not float numbers-->

+ string comparisons in IF:
	condition:	str1 = str2 (=, !=, \<, \>)
	-n str1	:	checks if str1 has a length greater than zero
	-z str1	:	checks if str1 has a length of zero

+ file 	comparesions in IF:
	-d file:	checks if file exits and is a directory
	-e file:	checks if file exits
	-f file:	checks if file exits and is a file
	-r -s -w -x:	checks is readable, not empty, writable, executable
	file1 -nt file:	checks if file1 is newer than file	(-nt, -ot)

+ considering compound testing:
	&& and ||

+ advanced if-then features:
	(( expression ))
	val++, val--, ++val, --val
	!, ~, **, <<, >>, &, |, &&, ||
	if (( $var1 ** 2 > 90))
	[[ expression ]]

+ CASE:
	case var in
		pattern1 | partern2)	commands1;;
		partern3)		commands2;;
		*)			default commands;;
	esac

Requirements
============
- Simple script uses just two bash shell commands
Ex: date; who

Installation
============

Tips
====
- Counting of the lines, words, bytes in the file
	wc < filename

- Pine symbol:				|
- Blackslash (escape character):	\

- today=$(date +%y%m%d)
	ls /usr/bin -al > log.$today

