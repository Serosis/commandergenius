#!/bin/sh

LOCAL_PATH=`dirname $0`
LOCAL_PATH=`cd $LOCAL_PATH && pwd`

if [ -e src/patched.successfully ]; then
	exit 0
else
	if [ ! -d UQM-MegaMod ]
	then
		[ -e megamod ] || git clone --depth=1 https://github.com/Serosis/UQM-MegaMod.git || exit 1
	fi
	ln -s UQM-MegaMod/src src
	cp UQM-MegaMod/config_unix.h src
	touch src/patched.successfully
fi
