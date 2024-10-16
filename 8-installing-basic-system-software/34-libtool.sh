#!/bin/bash

cd /sources
tar -xvf #libtool
cd #libtool
./configure --prefix=/usr
make $MAKEFLAGS
# make -k check
make install
rm -fv /usr/lib/libltdl.a
cd ..
rm -rv #libtool
