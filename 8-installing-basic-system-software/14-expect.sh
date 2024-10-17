#!/bin/bash

cd /sources
tar -xvf expect5.45.4.tar.gz
cd expect5.45.4
python3 -c 'from pty import spawn; spawn(["echo", "ok"])'
patch -Np1 -i ../expect-5.45.4-gcc14-1.patch
./configure --prefix=/usr           \
            --with-tcl=/usr/lib     \
            --enable-shared         \
            --disable-rpath         \
            --mandir=/usr/share/man \
            --with-tclinclude=/usr/include
make $MAKEFLAGS
# make test
make install
ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib
cd ..
rm -rv expect5.45.4
