#!/bin/bash
NAME="i3"
VERS="${NAME}_version"; VERS="${!VERS}"
LINK="https://github.com/i3/i3/archive/refs/tags/$VERS.tar.gz"
DEPS="xcb-util-keysyms xcb-util-wm libev yajl startup-notification pango perl xcb-util-cursor xcb-util-xrm libxkbcommon"


IDIR=$(cat << '~fin.'

mn \
    -D mans=false   \
    -D docs=false

~fin.
)

RDIR=$(cat << '~fin.'

echo not implemented

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
