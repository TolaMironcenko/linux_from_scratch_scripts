#!/bin/bash

cd $LFS/sources
tar -xvf binutils-2.43.1.tar.xz
cd binutils-2.43.1
mkdir -v build
cd build
../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu

make $MAKEFLAGS
make install
cd ../../
rm -rv binutils-2.43.1
