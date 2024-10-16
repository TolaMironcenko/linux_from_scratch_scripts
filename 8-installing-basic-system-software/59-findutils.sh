#!/bin/bash

cd /sources
tar -xvf #findutils
cd #findutils
./configure --prefix=/usr --localstatedir=/var/lib/locate
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv #findutils
