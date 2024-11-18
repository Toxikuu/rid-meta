#!/bin/bash
NAME="tcl"
VERS="8.6.15"
LINK="https://downloads.sourceforge.net/tcl/tcl$VERS-src.tar.gz"
UPST="https://sourceforge.net/projects/tcl/files"
DEPS=""


idir() {

SRCDIR=$(pwd)
cd unix
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --disable-rpath

make

sed -e "s|$SRCDIR/unix|/usr/lib|" \
    -e "s|$SRCDIR|/usr/include|"  \
    -i tclConfig.sh

sed -e "s|$SRCDIR/unix/pkgs/tdbc1.1.9|/usr/lib/tdbc1.1.9|" \
    -e "s|$SRCDIR/pkgs/tdbc1.1.9/generic|/usr/include|"    \
    -e "s|$SRCDIR/pkgs/tdbc1.1.9/library|/usr/lib/tcl8.6|" \
    -e "s|$SRCDIR/pkgs/tdbc1.1.9|/usr/include|"            \
    -i pkgs/tdbc1.1.9/tdbcConfig.sh

sed -e "s|$SRCDIR/unix/pkgs/itcl4.3.0|/usr/lib/itcl4.3.0|" \
    -e "s|$SRCDIR/pkgs/itcl4.3.0/generic|/usr/include|"    \
    -e "s|$SRCDIR/pkgs/itcl4.3.0|/usr/include|"            \
    -i pkgs/itcl4.3.0/itclConfig.sh

unset SRCDIR

make install
chmod -v u+w /usr/lib/libtcl8.6.so
make install-private-headers
ln -sfv tclsh8.6 /usr/bin/tclsh
mv /usr/share/man/man3/{Thread,Tcl_Thread}.3

}

rdir() {

rm -vf  /usr/bin/tclsh{,8.6}    \
        /usr/lib/libtcl{,stub}8.6.*

    }


