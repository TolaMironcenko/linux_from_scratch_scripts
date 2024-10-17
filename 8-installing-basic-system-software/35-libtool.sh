#!/bin/bash

cd /sources
tar -xvf libtool-2.4.7.tar.xz
cd libtool-2.4.7
./configure --prefix=/usr
make $MAKEFLAGS
# make -k check
make install
rm -fv /usr/lib/libltdl.a
cd ..
rm -rv libtool-2.4.7
