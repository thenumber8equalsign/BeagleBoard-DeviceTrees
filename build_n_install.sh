#!/bin/bash

if [ -f /boot/firmware/extlinux/extlinux.conf ] ; then
	if [ -f /sys/devices/soc0/family ] ; then
		make clean
		make -j4 all_arm64
		soc_family=$(cat /sys/devices/soc0/family || true)
		case "${soc_family}" in
		AM62X|J721E|J722S)
			if ! id | grep -q root; then
				echo "Installing Device-Tree's password required for sudo..."
				sudo make install_arm64
			else
				make install_arm64
			fi
			;;
		esac
	else
		make clean
		make -j4
	fi
else
	make clean
	make -j4
fi
