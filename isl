#!/bin/bash
NAME="isl"
VERS=0.26
LINK=""
DEPS=""


IDIR=$(cat << '~fin.'

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/tmp/rid/trash

make
make install

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/libisl*gdb.py /usr/share/gdb/auto-load/usr/lib

~fin.
)

RDIR=$(cat << '~fin.'

rm -vf /usr/lib/libisl.so*

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
