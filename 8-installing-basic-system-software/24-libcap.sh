#!/bin/bash

cd /sources
tar -xvf libcap-2.70.tar.xz
cd libcap-2.70
sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib $MAKEFLAGS
# make test
make prefix=/usr lib=lib install
cd ..
rm -rv libcap-2.70
