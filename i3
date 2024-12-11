#!/bin/bash
NAME="i3"
DESC="Simple window manager"
VERS="4.24"
LINK="https://github.com/i3/i3/archive/refs/tags/$VERS.tar.gz"
UPST="https://github.com/i3/i3.git"
DEPS="xcb-util-keysyms xcb-util-wm libev yajl startup-notification pango xcb-util-cursor xcb-util-xrm libxkbcommon"


idir() {

mn \
    -D mans=false   \
    -D docs=false

rm -rvf /usr/share/doc/i3
}

rdir() {

echo not implemented

}
