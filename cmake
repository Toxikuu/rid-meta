#!/bin/bash
NAME="cmake"
VERS="${NAME}_version"; VERS="${!VERS}"
ver="${VERS%.*}"
LINK="https://cmake.org/files/v$ver/cmake-$VERS.tar.gz"
DEPS="curl libarchive libuv nghttp2"


IDIR=$(cat << '~fin.'

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

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
