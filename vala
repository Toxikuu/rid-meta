#!/bin/bash
NAME="vala"
VERS="0.56.17"
ver="${VERS%.*}"
LINK="https://download.gnome.org/sources/vala/$ver/vala-$VERS.tar.xz"
UPST="https://gitlab.gnome.org/GNOME/vala/-/tags"
DEPS="glib"


IDIR=$(cat << '~fin.'

cm --disable-valadoc

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
