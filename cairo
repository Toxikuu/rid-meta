#!/bin/bash
NAME="cairo"
VERS="1.18.2"
LINK="https://gitlab.freedesktop.org/cairo/cairo/-/archive/$VERS/cairo-$VERS.tar.bz2"
DOWN="https://www.linuxfromscratch.org/patches/blfs/svn/cairo-$VERS-upstream_fixes-1.patch"
UPST="https://gitlab.freedesktop.org/cairo/cairo.git"
DEPS="libpng pixman fontconfig glib bash freetype2 glib libx11 libxcb libxext libxrender libpng pixman"


idir() {

patch -Np1 -i "$RIDSOURCES"/cairo-$VERS-upstream_fixes-1.patch

mn

}

rdir() {

echo not implemented

}
