#!/bin/bash

cd /sources
tar -xvf #automake
cd #automake
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.17
make $MAKEFLAGS
# make -j$(($(nproc)>4?$(nproc):4)) check
make install
cd ..
rm -rv #automake
