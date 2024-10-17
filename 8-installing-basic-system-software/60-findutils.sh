#!/bin/bash

cd /sources
tar -xvf findutils-4.10.0.tar.xz
cd findutils-4.10.0
./configure --prefix=/usr --localstatedir=/var/lib/locate
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv findutils-4.10.0
