#!/bin/bash

cd /sources
tar -xvf #bc
cd #bc
CC=gcc ./configure --prefix=/usr -G -O3 -r
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv #bc
