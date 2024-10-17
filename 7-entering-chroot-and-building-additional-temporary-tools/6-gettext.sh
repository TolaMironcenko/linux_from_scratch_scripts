#!/bin/bash

cd /sources
tar -xvf gettext-0.22.5.tar.xz
cd gettext-0.22.5
./configure --disable-shared
make $MAKEFLAGS
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
cd ..
rm -r gettext-0.22.5
