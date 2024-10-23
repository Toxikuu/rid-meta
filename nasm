#!/bin/bash
NAME="nasm"
VERS=2.16.03
LINK="https://www.nasm.us/pub/nasm/releasebuilds/$VERS/nasm-$VERS.tar.xz"
DEPS=""


IDIR=$(cat << '~fin.'

cm

~fin.
)

RDIR=$(cat << '~fin.'

rm -rvf \
    /usr/bin/nasm   \
    /usr/bin/ndisasm

~fin.
)

UDIR=$(cat << '~fin.'
~fin.
)
