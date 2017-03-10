<!---
/*******************************************************************************
// Project name   : Learning Linux
// File name      : Tip.md
// Created date   : Thu 09 Mar 2017
// Author         : Huy Hung Ho
// Last modified  : Thu 09 Mar 2017
// Desc           : From book Linux
*******************************************************************************/
-->
Introduction
============
Book: Linux Command Line and Shell Scripting BIBLE - Richard Blum Christine
Bresnahan

Features
========
Vocabulary:
	- CLI:		command line interface
	- GNU:		GNU's NOT Unix
	- GNOME:	GNU Network Object Model Environment
	- UID:		user ID
	- ext:		extended filesystem
	- COW:		copy-on-write
	- LVM:		Logical Volume Manager
	- PV:		Physical Volumes
	- PMS:		Package Management System
	- Repositories:	The severs store software packages

Requirements
============
- Primary partition ca nbe formatted with a filesystem directly, whereas
  extended partition ca nonly contain other primary partitions
- Run fsck command to checking and repairing a filesystem

Installation
============

Tips
====
Directory:
        - /:		root of the virtual dir
	- /bin, /sbin:  startup system
        - /dev:         device
        - /etc:         configuration system
        - /lib:         library
        - /mnt, /media: mount point from file to abroad
        - /proc:        user information
        - /boot:        linux kenel
        - /home:        user's dir
        - /root:        root's dir
        - /tmp:         temporary dir
        - /usr:         important file for all of user
        - /urs/local, /opt:     software
        - /srv:         service WEB, FTP
        - /var:         save log, spool

- See music authod:
	ls -l Music

- 	ls -s file_[a-z]

- Link files:
	ln -s data_file newLink

- Use -i when move and remove the number of file to select
	remove -i *.txt

- Number without space line:
	cat -b test.txt

- See disk psace available:
	df -h

- File from name file:
	du -h | grep keyword

- Sort with number:
	sort -n filename

- Search for data in file:
	grep keyword file.txt

- New dash and exit:
	dash - exit

- Background process:
	- sleep - jobs - ps

- View global environment variables:
	env - printenv - set

- Setting global environment variables:
	key="Hello world"
	export key
	unset

- Ececute my program from anywhere:
	PATH=$PATH:.

- Array:
	number=(one two three)
	echo ${number[2]} ${number[*]}

- Permission symbols:
	+ First field:
		- for files
		d for directories
		l for links
		c for character devices
		b for block devices
		n for network devices
	+ Using chmod:
		u for the user
		g for the group
		o for others
		a for all of the above
	+ Changing ownership (quyen so huu)
		u:wq
		chown options h3[.h3group] filename

- dpkg command of PMS tools:
	apt-get
	apt-cache
	aptitude
	dpkg --search

- Search original link:
	ls -l /usr/bin/vi
	readlink -f /usr/bin/v

