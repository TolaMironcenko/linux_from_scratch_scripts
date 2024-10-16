#!/bin/bash

cd /sources
tar -xvf #m4
cd #m4
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #m4
