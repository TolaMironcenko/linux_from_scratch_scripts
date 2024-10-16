#!/bin/bash

cd /sources
tar -xvf #gperf
cd #gperf
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make $MAKEFLAGS
# make -j1 check
make install
cd ..
rm -rv #gperf
