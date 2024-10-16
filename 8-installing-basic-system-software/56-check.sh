#!/bin/bash

cd /sources
tar -xvf #check
cd #check
./configure --prefix=/usr --disable-static
make $MAKEFLAGS
# make check
make docdir=/usr/share/doc/check-0.15.2 install
cd ..
rm -rv #check
