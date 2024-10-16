#!/bin/bash

cd /sources
tar -xvf #make
cd #make
./configure --prefix=/usr
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv #make
