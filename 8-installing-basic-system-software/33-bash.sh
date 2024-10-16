#!/bin/bash

cd /sources
tar -xvf #bash
cd #bash
./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            bash_cv_strtold_broken=no \
            --docdir=/usr/share/doc/bash-5.2.32
make $MAKEFLAGS
# chown -R tester .
# su -s /usr/bin/expect tester << "EOF"
# set timeout -1
# spawn make tests
# expect eof
# lassign [wait] _ _ _ value
# exit $value
# EOF
make install
cd ..
rm -rv #bash
exec /usr/bin/bash --login
