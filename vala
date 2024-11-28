#!/bin/bash
NAME="vala"
VERS="0.56.17"
ver="${VERS%.*}"
LINK="https://download.gnome.org/sources/vala/$ver/vala-$VERS.tar.xz"
UPST="https://github.com/GNOME/vala.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | grep -B1 0.57.0 | head -n1" # suboptimal (because of 0.57.0)
DEPS="glib"


idir() {

cm --disable-valadoc

}

rdir() {

echo not implemented

}
