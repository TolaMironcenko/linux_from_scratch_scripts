#!/bin/bash

cd /sources
tar -xvf psmisc-23.7.tar.xz
cd psmisc-23.7
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv psmisc-23.7
