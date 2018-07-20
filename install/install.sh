#!/usr/bin/env sh

git clone https://github.com/kensand/archfi.git
if [ $? -eq 0 ]; then
	sh archfi/archfi
else
	sh archfibackup/archfi
fi
#cp ../config /etc/skel -r
