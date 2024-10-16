#!/bin/bash

cd /sources
tar -xvf #gcc
cd #gcc
sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
mkdir -v build
cd       build
../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --enable-default-pie     \
             --enable-default-ssp     \
             --enable-host-pie        \
             --disable-multilib       \
             --disable-bootstrap      \
             --disable-fixincludes    \
             --with-system-zlib
make $MAKEFLAGS
ulimit -s -H unlimited
sed -e '/cpython/d'               -i ../gcc/testsuite/gcc.dg/plugin/plugin.exp
sed -e 's/no-pic /&-no-pie /'     -i ../gcc/testsuite/gcc.target/i386/pr113689-1.c
sed -e 's/300000/(1|300000)/'     -i ../libgomp/testsuite/libgomp.c-c++-common/pr109062.c
sed -e 's/{ target nonpic } //' \
    -e '/GOTPCREL/d'              -i ../gcc/testsuite/gcc.target/i386/fentryname3.c
# chown -R tester .
# su tester -c "PATH=$PATH make -k check"
# ../contrib/test_summary
make install
chown -v -R root:root \
    /usr/lib/gcc/$(gcc -dumpmachine)/14.2.0/include{,-fixed}
ln -svr /usr/bin/cpp /usr/lib
ln -sv gcc.1 /usr/share/man/man1/cc.1
ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/14.2.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/
echo 'int main(){}' > dummy.c
cc dummy.c -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'
# [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log
# /usr/lib/gcc/x86_64-pc-linux-gnu/14.2.0/../../../../lib/Scrt1.o succeeded
# /usr/lib/gcc/x86_64-pc-linux-gnu/14.2.0/../../../../lib/crti.o succeeded
# /usr/lib/gcc/x86_64-pc-linux-gnu/14.2.0/../../../../lib/crtn.o succeeded
grep -B4 '^ /usr/include' dummy.log
# #include <...> search starts here:
#  /usr/lib/gcc/x86_64-pc-linux-gnu/14.2.0/include
#  /usr/local/include
#  /usr/lib/gcc/x86_64-pc-linux-gnu/14.2.0/include-fixed
#  /usr/include
grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g'
# SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib64")
# SEARCH_DIR("/usr/local/lib64")
# SEARCH_DIR("/lib64")
# SEARCH_DIR("/usr/lib64")
# SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib")
# SEARCH_DIR("/usr/local/lib")
# SEARCH_DIR("/lib")
# SEARCH_DIR("/usr/lib");
grep "/lib.*/libc.so.6 " dummy.log
# attempt to open /usr/lib/libc.so.6 succeeded
grep found dummy.log
# found ld-linux-x86-64.so.2 at /usr/lib/ld-linux-x86-64.so.2
rm -v dummy.c a.out dummy.log
mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib
cd ../../
rm -rv #gcc
