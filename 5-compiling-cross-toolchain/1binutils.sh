#!/bin/bash

cd $LFS/sources
tar -xvf #binutils
cd #binutils
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
rm -rv #binutils
