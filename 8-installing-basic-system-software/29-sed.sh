#!/bin/bash

cd /sources
tar -xvf sed-4.9.tar.xz
cd sed-4.9
./configure --prefix=/usr
make $MAKEFLAGS
make html $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
install -d -m755           /usr/share/doc/sed-4.9
install -m644 doc/sed.html /usr/share/doc/sed-4.9
cd ..
rm -rv sed-4.9
