#!/bin/bash

cd /sources
tar -xvf texinfo-7.1.tar.xz
cd texinfo-7.1
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
make TEXMF=/usr/share/texmf install-tex
pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
cd ..
rm -rv texinfo-7.1
