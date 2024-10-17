#!/bin/bash

cd $LFS/sources
tar -xvf findutils-4.10.0.tar.xz
cd findutils-4.10.0
./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv findutils-4.10.0
