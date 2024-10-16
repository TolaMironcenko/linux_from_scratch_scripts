#!/bin/bash

cd /sources
tar -xvf #libcap
cd #libcap
sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib $MAKEFLAGS
# make test
make prefix=/usr lib=lib install
cd ..
rm -rv #libcap
