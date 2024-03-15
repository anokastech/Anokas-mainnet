
Debian
====================
This directory contains files used to package anokasd/anokas-qt
for Debian-based Linux systems. If you compile anokasd/anokas-qt yourself, there are some useful files here.

## anokas: URI support ##


anokas-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install anokas-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your anokas-qt binary to `/usr/bin`
and the `../../share/pixmaps/anokas128.png` to `/usr/share/pixmaps`

anokas-qt.protocol (KDE)

