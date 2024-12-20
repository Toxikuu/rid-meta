#!/bin/bash
NAME="cmake"
VERS="3.31.3"
ver="${VERS%.*}"
LINK="https://cmake.org/files/v$ver/cmake-$VERS.tar.gz"
UPST="https://gitlab.kitware.com/cmake/cmake.git"
DEPS="curl libarchive libuv nghttp2"


idir() {

sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake &&

./bootstrap --prefix=/usr          \
            --parallel=$(nproc)    \
            --system-libs          \
            --mandir=/share/man    \
            --no-system-jsoncpp    \
            --no-system-cppdap     \
            --no-system-librhash   \
            --docdir=/share/doc/cmake-$VERS &&
make
make DESTDIR= install

}

rdir() {

echo not implemented

}
