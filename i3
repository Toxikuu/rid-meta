#!/bin/bash
NAME="i3"
VERS="4.24"
LINK="https://github.com/i3/i3/archive/refs/tags/$VERS.tar.gz"
UPST="https://github.com/i3/i3/tags"
DEPS="xcb_util_keysyms xcb_util_wm libev yajl startup_notification pango perl xcb_util_cursor xcb_util_xrm libxkbcommon"


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
