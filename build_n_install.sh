#!/bin/bash

make clean
make -j4

if [ -f /boot/firmware/extlinux/extlinux.conf ] ; then
	if [ -f /sys/devices/soc0/family ] ; then
		soc_family=$(cat /sys/devices/soc0/family || true)
		case "${soc_family}" in
		AM62X|J721E|J722S)
			if ! id | grep -q root; then
				make install_arm64
			else
				echo "Installing Device-Tree's password required for sudo..."
				sudo make install_arm64
			fi
			;;
		esac
	fi
fi
