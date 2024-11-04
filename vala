#!/bin/bash
NAME="vala"
VERS="${NAME}_version"; VERS="${!VERS}"
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
