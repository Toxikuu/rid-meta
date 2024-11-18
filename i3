#!/bin/bash
NAME="i3"
VERS="4.24"
LINK="https://github.com/i3/i3/archive/refs/tags/$VERS.tar.gz"
UPST="https://github.com/i3/i3/tags"
DEPS="xcb-util-keysyms xcb-util-wm libev yajl startup-notification pango perl xcb-util-cursor xcb-util-xrm libxkbcommon"


idir() {

mn \
    -D mans=false   \
    -D docs=false

}

rdir() {

echo not implemented

}
