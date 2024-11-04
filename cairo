#!/bin/bash
NAME="cairo"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://gitlab.freedesktop.org/cairo/cairo/-/archive/$VERS/cairo-$VERS.tar.bz2"
UPST="https://gitlab.freedesktop.org/cairo/cairo/-/tags"
DEPS="libpng pixman fontconfig glib xorg_libraries"


IDIR=$(cat << '~fin.'

raw https://www.linuxfromscratch.org/patches/blfs/svn/cairo-$VERS-upstream_fixes-1.patch
patch -Np1 -i "$RIDSOURCES"/cairo-$VERS-upstream_fixes-1.patch

mn

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
