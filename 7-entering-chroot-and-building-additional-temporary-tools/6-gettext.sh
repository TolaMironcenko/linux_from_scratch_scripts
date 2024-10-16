#!/bin/bash

cd /sources
tar -xvf #gettext
cd #gettext
./configure --disable-shared
make $MAKEFLAGS
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
cd ..
rm -r #gettext
