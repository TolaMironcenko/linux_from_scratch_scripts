#!/bin/bash

cd /sources
tar -xvf iproute2-6.10.0.tar.xz
cd iproute2-6.10.0
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
make NETNS_RUN_DIR=/run/netns $MAKEFLAGS
make SBINDIR=/usr/sbin install
mkdir -pv             /usr/share/doc/iproute2-6.10.0
cp -v COPYING README* /usr/share/doc/iproute2-6.10.0
cd ..
rm -rv iproute2-6.10.0
