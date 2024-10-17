#!/bin/bash

cd /sources
tar -xvf Python-3.12.5.tar.xz
cd Python-3.12.5
./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --enable-optimizations
make $MAKEFLAGS
# make test TESTOPTS="--timeout 120"
make install
cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF
install -v -dm755 /usr/share/doc/python-3.12.5/html

tar --no-same-owner \
    -xvf ../python-3.12.5-docs-html.tar.bz2
cp -R --no-preserve=mode python-3.12.5-docs-html/* \
    /usr/share/doc/python-3.12.5/html
cd ..
rm -rv Python-3.12.5
