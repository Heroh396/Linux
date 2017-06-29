<!---
/*******************************************************************************
// Project name   :
// File name      : Tip.md
// Created date   : Fri 10 Mar 2017
// Author         : Huy Hung Ho
// Last modified  : Sat 11 Mar 2017
// Desc           :
*******************************************************************************/
-->
Introduction
============
Tip and Trick in VIM

Features
========

Requirements
============


Installation
============

Tips
====
- Update time:
        + :UpdateDF

- Copy text in vim:
        + Command:      :set paste
        + i
        + Paste:        Ctrl + Shift + V

- Copy text in other file:
        + Comand mode
        + :r file_path

- Using command in vim:
        + :!<command>

- Top, down: gg, G

- Copy line:
        + y <number> y
        + Paste: p (head line), P (tail line)

- Delete:
        + dd (all line), D (from pointer to end line)

- Change ESC: Shift + {

- Delete char: x, dd, dw, d0, d$
- Delete: d10j, d10k, d10w, d10h

- Find: /text then n to next
- Replace: %s/old/new/gc

- Mode: :q, :q!, :w, :w!, :wq

- Line numer: :set nu, :set nonu


Continues...



- Deletes to the end of the line:
	d$
- Remove line break:
	J
- Deletes:
	10x, 10dd, 10d$

- Copying and pasting (yank):
	y + p

- Searching and substituting:
	+ Search:		/keyword	and 	+n (next)
	+ Sub (replate):	:%s/old/new/g	or	../gc

- Go to n line:
	nG
- Go to header:
	H
- Copy current line:
	yy
- Paste:
	p, P
- Auto text completion (in Insert mode):
	<Ctrl> + P
