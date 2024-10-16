#!/bin/bash

cd /sources
tar -xvf #dbus
cd #dbus
./configure --prefix=/usr                        \
            --sysconfdir=/etc                    \
            --localstatedir=/var                 \
            --runstatedir=/run                   \
            --enable-user-session                \
            --disable-static                     \
            --disable-doxygen-docs               \
            --disable-xml-docs                   \
            --docdir=/usr/share/doc/dbus-1.14.10 \
            --with-system-socket=/run/dbus/system_bus_socket
make $MAKEFLAGS
# make check
make install
ln -sfv /etc/machine-id /var/lib/dbus
cd ..
rm -rv #dbus
