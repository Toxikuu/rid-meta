#!/bin/bash
NAME="isl"
VERS="0.27"
LINK="https://libisl.sourceforge.io/isl-$VERS.tar.xz"
UPST="https://libisl.sourceforge.io/?C=M;O=D"
SELE="body > table:nth-child(13) > tbody:nth-child(1) > tr:nth-child(3) > td:nth-child(2) > a:nth-child(1)"
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
