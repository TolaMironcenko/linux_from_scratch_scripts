#!/bin/bash

cd /sources
tar -xvf #autoconf
cd #autoconf
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #autoconf
