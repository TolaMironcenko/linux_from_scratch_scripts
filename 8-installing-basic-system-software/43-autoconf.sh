#!/bin/bash

cd /sources
tar -xvf autoconf-2.72.tar.xz
cd autoconf-2.72
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv autoconf-2.72
