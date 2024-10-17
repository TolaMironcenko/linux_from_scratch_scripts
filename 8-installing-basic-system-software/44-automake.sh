#!/bin/bash

cd /sources
tar -xvf automake-1.17.tar.xz
cd automake-1.17
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.17
make $MAKEFLAGS
# make -j$(($(nproc)>4?$(nproc):4)) check
make install
cd ..
rm -rv automake-1.17
