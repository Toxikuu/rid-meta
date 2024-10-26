#!/bin/bash
NAME="nss"
VERS=3.106
ver="${VERS//./_}"
LINK="https://archive.mozilla.org/pub/security/nss/releases/NSS_${ver}_RTM/src/nss-$VERS.tar.gz"
DEPS="nspr" # maybe sqlite


IDIR=$(cat << '~fin.'

[ -e /etc/rid/sources/nss-standalone-1.patch ] || raw https://www.linuxfromscratch.org/patches/blfs/svn/nss-standalone-1.patch

patch -Np1 -i /etc/rid/sources/nss-standalone-1.patch               ||
die "Patch failed"

sqlite3 --version > /dev/null 2>&1 && echo -e "\nDetected an SQLite install." || 
if [ -f /usr/lib/libsqlite3.so -o -f /usr/lib32/libsqlite3.so ]; then
    echo -e "\nDetected an incomplete SQLite installation!" >&2
    rm -vf /usr/lib{,32}/libsqlite3.so
    echo "Removed problematic SQLite libraries."
else
    echo -e "\nNo SQLite install (complete or otherwise) detected."
fi

cd nss

make BUILD_OPT=1                      \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  NSS_DISABLE_GTESTS=1                \
  USE_SYSTEM_ZLIB=1                   \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
  $([ $(uname -m) = x86_64 ] && echo USE_64=1) \
  $([ -f /usr/lib/libsqlite3.so ] && echo NSS_USE_SYSTEM_SQLITE=1)  ||
die "Make failed"

cd ../dist                                                          &&

install -v -m755 Linux*/lib/*.so              /usr/lib              &&
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib              &&
install -v -m755 -d                           /usr/include/nss      &&
cp -v -RL {public,private}/nss/*              /usr/include/nss      &&
install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin &&
install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib/pkgconfig    ||
die "Install failed"

cd ../..
rm -rvf nss-$VERS
tar xvf /etc/rid/sources/nss-$VERS.t*

cd nss-$VERS
patch -Np1 -i /etc/rid/sources/nss-standalone-1.patch               ||
die "Patch failed"
cd nss

CC="gcc -m32" CXX="g++ -m32"          \
make BUILD_OPT=1                      \
  NSPR_INCLUDE_DIR=/usr/include/nspr  \
  USE_SYSTEM_ZLIB=1                   \
  NSS_DISABLE_GTESTS=1                \
  ZLIB_LIBS=-lz                       \
  NSS_ENABLE_WERROR=0                 \
$([ -f /usr/lib32/libsqlite3.so ] && echo NSS_USE_SYSTEM_SQLITE=1)  ||
die "Make failed"

cd ../dist &&

install -v -m755 Linux*/lib/*.so              /usr/lib32            &&
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib32            &&
sed -i 's/lib/lib32/g' Linux*/lib/pkgconfig/nss.pc                  &&
install -v -m644 Linux*/lib/pkgconfig/nss.pc  /usr/lib32/pkgconfig  ||
die "Install failed"

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
