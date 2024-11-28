#!/bin/bash
NAME="isl"
VERS="0.27"
LINK="https://libisl.sourceforge.io/isl-$VERS.tar.xz"
UPST="git://repo.or.cz/isl.git"
VCMD="git ls-remote --tags 'git://repo.or.cz/isl.git' | sed 's:.*/::' | sort -V | tail -n1 | cut -d- -f2"
DEPS=""


idir() {

cm --docdir=/tmp/rid/trash

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/libisl*gdb.py /usr/share/gdb/auto-load/usr/lib

}

rdir() {

rm -vf /usr/lib/libisl.so*

}
