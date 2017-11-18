sudo rm /var/crash/*

rm -rf mydir

Stop process: Ctrl+Z
Continues process: fg

Run process in background: bg, &
Then use: fg

Show the running process: ps
Stop process: kill

Find file: find -name 'filename*'

Find in file: grep -H a_text filename

Install ttf:
wget http://ftp.us.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
sudo dpkg -i ttf-mscorefonts-installer_3.6_all.deb

Install playonLinux:
	+ install playonLinux
	+ install lzop
	+ install winbind samba libnss-winbind libpam-winbind krb5-config krb5-locales krb5-user
	+ add office2010

View image with pixel coordinates and pixel value
        - edisplay --gl /path/to/image

Install .deb:
	sudo dpkg -i DEB_PACKAGE
