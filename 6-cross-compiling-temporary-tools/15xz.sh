#!/bin/bash

cd $LFS/sources
tar -xvf xz-5.6.2.tar.xz
cd xz-5.6.2
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.6.2
make $MAKEFLAGS
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/liblzma.la
cd ..
rm -rv xz-5.6.2
