#!/bin/bash

make clean
make -j4

if [ -f /boot/firmware/extlinux/extlinux.conf ] ; then
	if [ -f /sys/devices/soc0/family ] ; then
		soc_family=$(cat /sys/devices/soc0/family || true)
		case "${soc_family}" in
		AM62X|J721E|J722S)
			sudo make install_arm64
			;;
		esac
	fi
fi
