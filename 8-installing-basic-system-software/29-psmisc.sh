#!/bin/bash

cd /sources
tar -xvf #psmisc
cd #psmisc
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #psmisc
