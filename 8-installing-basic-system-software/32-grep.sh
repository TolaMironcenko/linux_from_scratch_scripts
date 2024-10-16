#!/bin/bash

cd /sources
tar -xvf #grep
cd #grep
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #grep
