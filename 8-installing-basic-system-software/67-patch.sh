#!/bin/bash

cd /sources
tar -xvf #patch
cd #patch
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #patch
